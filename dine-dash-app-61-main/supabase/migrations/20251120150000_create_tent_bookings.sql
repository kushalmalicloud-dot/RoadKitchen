-- Migration: Create tent_bookings table for tent booking feature
CREATE TABLE tent_bookings (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    customer_name TEXT NOT NULL,
    customer_email TEXT,
    customer_phone TEXT,
    reservation_date DATE NOT NULL,
    reservation_time TEXT,
    party_size INTEGER,
    special_requests TEXT,
    status TEXT DEFAULT 'pending',
    created_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);
