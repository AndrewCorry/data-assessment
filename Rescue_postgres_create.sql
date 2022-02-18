CREATE TABLE "public.user" (
	"user_id" serial(5000) NOT NULL,
	"user_first_name" varchar(50) NOT NULL,
	"user_last_name" varchar(50) NOT NULL,
	"user_email" varchar(50) NOT NULL,
	"user_password" varchar(5000) NOT NULL,
	"adopted_animal" serial(5000),
	CONSTRAINT "user_pk" PRIMARY KEY ("user_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.animals" (
	"animal_id" serial NOT NULL,
	"animal_name" varchar(255) NOT NULL,
	"birthday" DATE(255) NOT NULL,
	"animal_type" varchar(255) NOT NULL,
	"animal_breed" varchar(255) NOT NULL,
	"adopted" BOOLEAN(255) NOT NULL,
	CONSTRAINT "animals_pk" PRIMARY KEY ("animal_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.animal_species" (
	"animal_type" varchar(255) NOT NULL,
	"animal_breed" varchar(255) NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.employee" (
	"employee_id" serial NOT NULL,
	"employee_first_name" varchar(255) NOT NULL,
	"employee_last_name" varchar(255) NOT NULL,
	"employee_email" varchar(255) NOT NULL,
	"employee_password" varchar(5000) NOT NULL,
	"animals_under_care" int(5000) NOT NULL,
	CONSTRAINT "employee_pk" PRIMARY KEY ("employee_id")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "user" ADD CONSTRAINT "user_fk0" FOREIGN KEY ("adopted_animal") REFERENCES "animals"("animal_id");

ALTER TABLE "animals" ADD CONSTRAINT "animals_fk0" FOREIGN KEY ("animal_type") REFERENCES "animal_species"("animal_type");
ALTER TABLE "animals" ADD CONSTRAINT "animals_fk1" FOREIGN KEY ("animal_breed") REFERENCES "animal_species"("animal_breed");


ALTER TABLE "employee" ADD CONSTRAINT "employee_fk0" FOREIGN KEY ("animals_under_care") REFERENCES "animals"("animal_id");





