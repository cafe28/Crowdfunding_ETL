-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(55)   NOT NULL,
    "description" varchar(55)   NULL,
    "goal" float   NULL,
    "pledged" int   NULL,
    "outcome" varchar(55)   NULL,
    "backers_count" int   NULL,
    "country" varchar(55)   NULL,
    "currency" varchar(55)   NULL,
    "launched_date" varchar(55)   NULL,
    "end_date" varchar(55)   NULL,
    "category_id" varchar(55)   NULL,
    "subcategory_ids" varchar(55)   NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "category" (
    "category_id" varchar(55)   NOT NULL,
    "category" varchar(55)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int  ,
    "first_name" varchar(55)  ,
    "last_name" varchar(55)  ,
    "email" varchar(55)  ,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_ids" varchar(55)   NOT NULL,
    "sub-category" varchar(55)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_ids"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_ids" FOREIGN KEY("subcategory_ids")
REFERENCES "subcategory" ("subcategory_ids");

-- Displayed data
SELECT * FROM campaign
SELECT * FROM category
SELECT * FROM contacts
SELECT * FROM subcategory