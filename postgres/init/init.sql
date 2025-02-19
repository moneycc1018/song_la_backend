-- Create the table for the kkbox information
CREATE TABLE kkbox_info (
    track_id VARCHAR(50) PRIMARY KEY,
    track_name VARCHAR(255) NOT NULL,
    artist_id VARCHAR(50) NOT NULL,
    artist_name VARCHAR(255) NOT NULL,
    album_id VARCHAR(50) NOT NULL,
    album_name VARCHAR(255) NOT NULL,
    release_date VARCHAR(50),
    tags JSONB
);

-- Create the table for the ytmusic information
CREATE TABLE ytmusic_info (
    video_id VARCHAR(50) PRIMARY KEY,
    track_name VARCHAR(255) NOT NULL,
    artists JSONB NOT NULL,
    author VARCHAR(255) NOT NULL,
    album_id VARCHAR(50) NOT NULL,
    album_name VARCHAR(255) NOT NULL,
    release_year VARCHAR(50),
    tags JSONB,
    lyrics_id VARCHAR(50),
    lyrics TEXT
);

CREATE TABLE tag (
    id SERIAL PRIMARY KEY,
    tag_name VARCHAR(50) UNIQUE NOT NULL,
    deprecated BOOLEAN NOT NULL DEFAULT FALSE
);