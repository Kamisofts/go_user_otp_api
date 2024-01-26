
CREATE TABLE "users" (
  "id" bigserial PRIMARY KEY,
  "name" varchar NOT NULL,
  "phone_number" varchar NOT NULL UNIQUE,
  "otp" varchar NOT NULL,
  "otp_expiration_time" timestamptz NOT NULL
);

