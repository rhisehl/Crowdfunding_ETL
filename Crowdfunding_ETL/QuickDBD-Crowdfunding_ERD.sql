-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/hXMoQV
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Campaign" (
    "CF_ID" int   NOT NULL,
    "Contact_ID" int   NOT NULL,
    "Company_Name" varchar   NOT NULL,
    "Description" varchar   NOT NULL,
    "Goal" money   NOT NULL,
    "Pledged" money   NOT NULL,
    "Outcome" varchar   NOT NULL,
    "Backers_Count" int   NOT NULL,
    "Country" varchar   NOT NULL,
    "Currency" varchar   NOT NULL,
    "Launch_date" date   NOT NULL,
    "End_date" date   NOT NULL,
    "Category_ID" int   NOT NULL,
    "Subcategory_ID" int   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "CF_ID"
     )
);

CREATE TABLE "Category" (
    "Category_ID" varchar   NOT NULL,
    "Category" varchar   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "Category_ID"
     )
);

CREATE TABLE "Subcategory" (
    "Subcategory_ID" varchar   NOT NULL,
    "Subcategory" varchar   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "Subcategory_ID"
     )
);

CREATE TABLE "Contacts" (
    "Contact_ID" int   NOT NULL,
    "First_Name" varchar   NOT NULL,
    "Last_Name" varchar   NOT NULL,
    "Email" varchar   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "Contact_ID"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Contact_ID" FOREIGN KEY("Contact_ID")
REFERENCES "Contacts" ("Contact_ID");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Category_ID" FOREIGN KEY("Category_ID")
REFERENCES "Category" ("Category_ID");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Subcategory_ID" FOREIGN KEY("Subcategory_ID")
REFERENCES "Subcategory" ("Subcategory_ID");

