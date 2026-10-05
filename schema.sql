-- ============================================
-- FIRE STATION INCIDENT AND RESPONSE LOG
-- DATABASE SCHEMA
-- PostgreSQL
-- ============================================




-- ============================================
-- 1. EMERGENCY CALLS
-- ============================================

CREATE TABLE emergency_calls (
    call_id SERIAL PRIMARY KEY,
    caller_name VARCHAR(100) NOT NULL,
    caller_phone VARCHAR(20),
    location VARCHAR(200) NOT NULL,
    call_type VARCHAR(50) NOT NULL,
    received_at TIMESTAMP NOT NULL,
    priority VARCHAR(20) NOT NULL
        CHECK (priority IN ('LOW', 'MEDIUM', 'HIGH', 'CRITICAL'))
);


-- ============================================
-- 2. INCIDENTS
-- ============================================

CREATE TABLE incidents (
    incident_id SERIAL PRIMARY KEY,
    call_id INT UNIQUE NOT NULL,
    incident_type VARCHAR(50) NOT NULL,
    incident_location VARCHAR(200) NOT NULL,
    reported_at TIMESTAMP NOT NULL,
    dispatched_at TIMESTAMP,
    arrived_at TIMESTAMP,
    response_time_minutes INT,
    status VARCHAR(20) NOT NULL
        CHECK (status IN ('OPEN', 'DISPATCHED', 'ON_SCENE', 'CLOSED')),
    severity VARCHAR(20) NOT NULL
        CHECK (severity IN ('LOW', 'MEDIUM', 'HIGH', 'CRITICAL')),

    CONSTRAINT fk_incident_call
        FOREIGN KEY (call_id)
        REFERENCES emergency_calls(call_id),

    CONSTRAINT chk_response_time
        CHECK (
            response_time_minutes IS NULL
            OR response_time_minutes >= 0
        )
);


-- ============================================
-- 3. VEHICLES
-- ============================================

CREATE TABLE vehicles (
    vehicle_id SERIAL PRIMARY KEY,
    vehicle_number VARCHAR(20) UNIQUE NOT NULL,
    vehicle_type VARCHAR(50) NOT NULL,
    capacity INT,
    status VARCHAR(20) NOT NULL
        CHECK (status IN ('AVAILABLE', 'COMMITTED', 'MAINTENANCE')),
    station_location VARCHAR(100) DEFAULT 'Main Fire Station'
);


-- ============================================
-- 4. CREW MEMBERS
-- ============================================

CREATE TABLE crew_members (
    crew_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    rank VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    shift VARCHAR(20) NOT NULL
        CHECK (shift IN ('MORNING', 'EVENING', 'NIGHT')),
    status VARCHAR(20) NOT NULL
        CHECK (status IN ('AVAILABLE', 'DEPLOYED', 'OFF_DUTY'))
);


-- ============================================
-- 5. INCIDENT VEHICLES
-- ============================================

CREATE TABLE incident_vehicles (
    incident_id INT NOT NULL,
    vehicle_id INT NOT NULL,
    dispatched_at TIMESTAMP NOT NULL,
    released_at TIMESTAMP,

    PRIMARY KEY (incident_id, vehicle_id),

    FOREIGN KEY (incident_id)
        REFERENCES incidents(incident_id),

    FOREIGN KEY (vehicle_id)
        REFERENCES vehicles(vehicle_id)
);


-- ============================================
-- 6. INCIDENT CREW
-- ============================================

CREATE TABLE incident_crew (
    incident_id INT NOT NULL,
    crew_id INT NOT NULL,
    assigned_at TIMESTAMP NOT NULL,
    released_at TIMESTAMP,

    PRIMARY KEY (incident_id, crew_id),

    FOREIGN KEY (incident_id)
        REFERENCES incidents(incident_id),

    FOREIGN KEY (crew_id)
        REFERENCES crew_members(crew_id)
);


-- ============================================
-- 7. INCIDENT CLOSURES
-- ============================================

CREATE TABLE incident_closures (
    closure_id SERIAL PRIMARY KEY,
    incident_id INT UNIQUE NOT NULL,
    closed_at TIMESTAMP NOT NULL,
    closure_reason VARCHAR(200) NOT NULL,
    damage_estimate NUMERIC(12,2),
    officer_name VARCHAR(100) NOT NULL,

    FOREIGN KEY (incident_id)
        REFERENCES incidents(incident_id),

    CHECK (damage_estimate IS NULL OR damage_estimate >= 0)
);