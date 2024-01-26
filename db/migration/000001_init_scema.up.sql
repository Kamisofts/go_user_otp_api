
CREATE TABLE "create_user" (
  "id" bigserial PRIMARY KEY,
  "username" varchar NOT NULL,
  "email" varchar NOT NULL,
  "password_hash" varchar NOT NULL
);

CREATE TABLE "otp" (
	"user_id" bigint,
	"otp_code" bigint NOT NULL
);



ALTER TABLE "otp" ADD FOREIGN KEY ("user_id") REFERENCES "create_user" ("id");

