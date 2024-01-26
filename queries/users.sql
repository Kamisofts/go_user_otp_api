-- name: Create users :one
INSERT INTO users (
 id, name, phone_number, otp,otp_expiration_time
) VALUES ( 
    $1, $2, $3, $4, $5
    ) RETURNING *;

-- name: Get users :one
SELECT * FROM users 
Where id = $1 LIMIT $1;

-- name: GetList users :many
SELECT * FROM users
ORDER BY id
LIMIT $1
OFFSET $2;

-- name: Update users :one
UPDATE users
SET name = $2
Where id = $1
RETURNING *;

-- name: Delete users :exec
DELETE FROM users
Where id = $1;


