CREATE VIEW v_users_age AS
SELECT 
    first_name,
    last_name,
    age
FROM 
    users
WHERE 
    age >= 20 AND age <= 30
ORDER BY 
    age ASC;
