-- name: Create otp :one
INSERT INTO otp (
   user_id, otp_code
) VALUES (
    $1, $2
) RETURNING *;


-- name: GetEntry :one
SELECT * FROM otp
Where user_id = $1 LIMIT $1;

-- name: Get otp :many
SELECT * FROM otp
ORDER BY user_id
LIMIT $1
OFFSET $2;

-- name: Update Entry :one
UPDATE otp
SET otp_code = $2
Where user_id = $1
RETURNING *;

-- name: Delete Entry :exec
DELETE FROM otp
Where user_id = $1;
