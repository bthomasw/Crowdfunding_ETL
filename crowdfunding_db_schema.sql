CREATE TABLE category (
    category_id varchar(4)   NOT NULL,
    category varchar(15)   NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (
        category_id
     )
);

CREATE TABLE subcategory (
    subcategory_id varchar(10)   NOT NULL,
    subcategory varchar(30)   NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (
        subcategory_id
     )
);

CREATE TABLE contacts (
    contact_id int   NOT NULL,
    first_name varchar(20)   NOT NULL,
    last_name varchar(20)   NOT NULL,
    email varchar(50)   NOT NULL,
    CONSTRAINT pk_contacts PRIMARY KEY (
        contact_id
     )
);

CREATE TABLE "campaign" (
    "cf_id" int NOT NULL,
    "contact_id" int NOT NULL,
    "company_name" varchar(50) NOT NULL,
    "description" varchar(75) NOT NULL,
    "goal" varchar(11) NOT NULL,
    "pledged" float NOT NULL,
    "outcome" varchar(20) NOT NULL,
    "backers_count" int NOT NULL,
    "country" varchar(4) NOT NULL,
    "currency" varchar(4) NOT NULL,
    "launch_date" TIMESTAMP NOT NULL,
    "end_date" TIMESTAMP NOT NULL,
    "category_id" varchar(8) NOT NULL,
    "subcategory_id" varchar(12) NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY ("cf_id")
);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_category_id FOREIGN KEY(category_id)
REFERENCES category (category_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES subcategory (subcategory_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES contacts (contact_id);