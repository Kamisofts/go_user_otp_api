
SELECT EXISTS (SELECT 1 FROM otps WHERE user_id = $1 AND otp_code = $2);
