package db

import (
	"context"

	"github.com/jackc/pgx/v4"
)

type Database struct {
	conn *pgx.Conn
}

func NewDatabase(connString string) (*Database, error) {
	config, err := pgx.ParseConfig(connString)
	if err != nil {
		return nil, err
	}

	conn, err := pgx.ConnectConfig(context.Background(), config)
	if err != nil {
		return nil, err
	}

	return &Database{conn: conn}, nil
}
