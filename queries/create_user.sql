-- name: Create create_user :one
INSERT INTO create_user (
 id, username, email, password_hash
) VALUES ( 
    $1, $2, $3, $4
    ) RETURNING *;

-- name: Get create_user :one
SELECT * FROM create_user 
Where id = $1 LIMIT $1;

-- name: GetList create_user :many
SELECT * FROM create_user
ORDER BY id
LIMIT $1
OFFSET $2;

-- name: Update create_user :one
UPDATE create_user
SET username = $2
Where id = $1
RETURNING *;

-- name: Delete create_user :exec
DELETE FROM create_user
Where id = $1;


