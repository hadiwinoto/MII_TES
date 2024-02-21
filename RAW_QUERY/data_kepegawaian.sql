-- -------------------------------------------------------------
-- TablePlus 4.8.7(448)
--
-- https://tableplus.com/
--
-- Database: data_kepegawaian
-- Generation Time: 2024-02-21 17:03:41.4400
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS education_id_seq;
DROP TYPE IF EXISTS "public"."enum_education_level";
CREATE TYPE "public"."enum_education_level" AS ENUM ('TK', 'SD', 'SMP', 'SMA', 'Strata 1', 'Strata 2', 'Doktor', 'Profesor');

-- Table Definition
CREATE TABLE "public"."education" (
    "id" int4 NOT NULL DEFAULT nextval('education_id_seq'::regclass),
    "employee_id" int4 NOT NULL,
    "name" varchar(255),
    "level" "public"."enum_education_level",
    "description" varchar(255) NOT NULL,
    "created_by" varchar(255),
    "updated_by" varchar(255),
    "created_at" timestamptz NOT NULL,
    "updated_at" timestamptz NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS employee_id_seq;

-- Table Definition
CREATE TABLE "public"."employee" (
    "id" int4 NOT NULL DEFAULT nextval('employee_id_seq'::regclass),
    "nik" varchar(255),
    "name" varchar(255),
    "is_active" bool,
    "start_date" timestamptz NOT NULL,
    "end_date" timestamptz NOT NULL,
    "created_by" varchar(255),
    "updated_by" varchar(255),
    "created_at" timestamptz NOT NULL,
    "updated_at" timestamptz NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS employee_family_id_seq;
DROP TYPE IF EXISTS "public"."enum_employee_family_religion";
CREATE TYPE "public"."enum_employee_family_religion" AS ENUM ('Islam', 'Katolik', 'Buda', 'Protestan', 'Khonghucu');
DROP TYPE IF EXISTS "public"."enum_employee_family_relation_status";
CREATE TYPE "public"."enum_employee_family_relation_status" AS ENUM ('Suami', 'Istri', 'Anak', 'Anak Sambung');

-- Table Definition
CREATE TABLE "public"."employee_family" (
    "id" int4 NOT NULL DEFAULT nextval('employee_family_id_seq'::regclass),
    "employee_id" int4 NOT NULL,
    "name" varchar(255),
    "identifier" varchar(255) NOT NULL,
    "job" varchar(255) NOT NULL,
    "place_of_birth" varchar(255),
    "date_of_birth" timestamptz NOT NULL,
    "religion" "public"."enum_employee_family_religion" NOT NULL,
    "id_life" bool NOT NULL,
    "id_divorced" bool NOT NULL,
    "relation_status" "public"."enum_employee_family_relation_status" NOT NULL,
    "created_by" varchar(255),
    "updated_by" varchar(255),
    "created_at" timestamptz NOT NULL,
    "updated_at" timestamptz NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS employee_profile_id_seq;
DROP TYPE IF EXISTS "public"."enum_employee_profile_gender";
CREATE TYPE "public"."enum_employee_profile_gender" AS ENUM ('Laki-laki', 'Perempuan');

-- Table Definition
CREATE TABLE "public"."employee_profile" (
    "id" int4 NOT NULL DEFAULT nextval('employee_profile_id_seq'::regclass),
    "employee_id" int4 NOT NULL,
    "place_of_birth" varchar(255),
    "date_of_birth" timestamptz NOT NULL,
    "gender" "public"."enum_employee_profile_gender" NOT NULL,
    "is_married" bool NOT NULL,
    "prof_pict" varchar(255),
    "created_by" varchar(255),
    "updated_by" varchar(255) NOT NULL,
    "created_at" timestamptz NOT NULL,
    "updated_at" timestamptz NOT NULL,
    PRIMARY KEY ("id")
);

INSERT INTO "public"."education" ("id", "employee_id", "name", "level", "description", "created_by", "updated_by", "created_at", "updated_at") VALUES
(1, 1, 'SMKN 7 Jakarta', 'SMA', 'Sekolah Menengah Atas', 'Admin', 'admin', '2024-02-23 12:00:00+07', '2024-02-23 12:00:00+07'),
(2, 2, 'Universitas Negeri Jakarta', 'Strata 1', 'Sarjana', 'Manager', 'admin', '2023-01-15 08:30:00+07', '2023-01-15 08:30:00+07');

INSERT INTO "public"."employee" ("id", "nik", "name", "is_active", "start_date", "end_date", "created_by", "updated_by", "created_at", "updated_at") VALUES
(1, '11012', 'Budi', 't', '2024-02-23 00:00:00+07', '2025-02-23 00:00:00+07', NULL, NULL, '2024-02-23 12:00:00+07', '2024-02-23 12:00:00+07'),
(2, '11013', 'Jarot', 't', '2023-01-15 00:00:00+07', '2023-12-31 00:00:00+07', NULL, NULL, '2023-01-15 08:30:00+07', '2023-01-15 08:30:00+07');

INSERT INTO "public"."employee_family" ("id", "employee_id", "name", "identifier", "job", "place_of_birth", "date_of_birth", "religion", "id_life", "id_divorced", "relation_status", "created_by", "updated_by", "created_at", "updated_at") VALUES
(1, 1, 'Marni', '1234567890', 'Ibu Rumah Tangga', 'Denpasar', '1995-10-17 00:00:00+07', 'Islam', 't', 'f', 'Istri', 'Admin', 'Admin', '2024-02-23 12:00:00+07', '2024-02-23 12:00:00+07'),
(2, 2, 'Clara', '0987654321', 'Pelajar', 'Bangkalan', '2008-10-17 00:00:00+07', 'Islam', 't', 'f', 'Anak', 'Admin', 'Admin', '2023-01-15 08:30:00+07', '2023-01-15 08:30:00+07'),
(3, 3, 'Stephanie', '0987654321', 'Pelajar', 'Bangkalan', '2008-10-20 00:00:00+07', 'Islam', 't', 'f', 'Anak', 'Admin', 'Admin', '2023-01-15 08:30:00+07', '2023-01-15 08:30:00+07');

INSERT INTO "public"."employee_profile" ("id", "employee_id", "place_of_birth", "date_of_birth", "gender", "is_married", "prof_pict", "created_by", "updated_by", "created_at", "updated_at") VALUES
(1, 1, 'Jakarta', '1997-05-02 00:00:00+07', 'Laki-laki', 't', NULL, 'admin', 'admin', '2024-02-23 12:00:00+07', '2024-02-23 12:00:00+07'),
(2, 2, 'Sukabumi', '1996-05-02 00:00:00+07', 'Laki-laki', 'f', NULL, 'admin', 'admin', '2023-01-15 08:30:00+07', '2023-01-15 08:30:00+07');

