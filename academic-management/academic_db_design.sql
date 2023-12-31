CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  name VARCHAR(30) NOT NULL,
  email VARCHAR(30) NOT NULL,
  password VARCHAR(255) NOT NULL,
  department VARCHAR(50) NOT NULL,
  category VARCHAR(50) NOT NULL
);

CREATE TABLE alumni(
  "id" SERIAL PRIMARY KEY,
  "created_at" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  "name" VARCHAR(30) NOT NULL,
  "email" VARCHAR(40) NOT NULL,
  "college_id" VARCHAR(50) NOT NULL,
  "batch" INT NOT NULL,
  "department" VARCHAR(50) NOT NULL,
  "phone_number" VARCHAR(50) NOT NULL,
  "company" VARCHAR(50),
  "designation" VARCHAR(50),
  "verified" boolean DEFAULT true
);

CREATE TABLE forgot_password(
  "id" SERIAL PRIMARY KEY,
  "timestamp" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  "email" VARCHAR(40) NOT NULL,
  "otp" int NOT NULL
);

CREATE TABLE patents (
  id SERIAL PRIMARY KEY,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  title VARCHAR(50) NOT NULL,
  description VARCHAR(1000) NOT NULL,
  year INTEGER NOT NULL CHECK (year >= 1900 AND year <= 3000),
  patent_by VARCHAR(255) NOT NULL,
  status VARCHAR(255) NOT NULL,
  user_id INTEGER NOT NULL REFERENCES users(id)
);

CREATE TABLE project (
  "id" SERIAL PRIMARY KEY,
  "created_at" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  "title" VARCHAR(50) NOT NULL,
  "description" VARCHAR(1000) NOT NULL,
  "date" date NOT NULL,
  "project_by" VARCHAR(255) NOT NULL,
  "status" VARCHAR(255) NOT NULL,
  "budget" VARCHAR(40) NOT NULL,
  "funding_agency" VARCHAR(40),
  "user_id" INTEGER NOT NULL REFERENCES users(id)
);

CREATE TABLE publication (
  "id" SERIAL PRIMARY KEY,
  "created_at" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  "title" VARCHAR(50) NOT NULL,
  "description" VARCHAR(1000) NOT NULL,
  year INTEGER NOT NULL CHECK (year >= 1900 AND year <= 3000),
  "author" VARCHAR(100) NOT NULL,
  "citation" VARCHAR(255) NOT NULL,
  "user_id" INTEGER NOT NULL REFERENCES users(id)
);

CREATE TABLE registration (
  "id" SERIAL PRIMARY KEY,
  "timestamp" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  "email" VARCHAR(40) NOT NULL,
  "otp" int NOT NULL
);
