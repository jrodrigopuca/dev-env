-- MySQL script for initialization

-- Use the desired database
USE ${MYSQL_DATABASE};

-- Check if the table exists
IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = '${MYSQL_DATABASE}' AND table_name = '${MYSQL_TABLE}') THEN
    -- Create the table
    CREATE TABLE ${MYSQL_TABLE} (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        value INT NOT NULL
    );

    -- Insert initial data
    INSERT INTO ${MYSQL_TABLE} (name, value) VALUES
        ('Item 1', 100),
        ('Item 2', 200);
    
    SELECT 'Data inserted successfully.';
ELSE
    SELECT 'Table already exists. Skipping data insertion.';
END IF;
