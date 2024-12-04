CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,         -- Auto-incrementing ID
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,  -- Ensures unique email addresses
    dateofbirth DATE NOT NULL,
    profileimage TEXT,             -- Single profile image URL or file path
    profileimages TEXT[],          -- Array of image URLs or file paths
    active BOOLEAN DEFAULT TRUE    -- Boolean flag for active/inactive status
);
