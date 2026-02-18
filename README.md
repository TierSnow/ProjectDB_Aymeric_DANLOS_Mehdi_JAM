Prompt : You work in the field of of mangas. Your company is involved in the domain of mangs. It is a company such as shonen jump. You have collected data about authors, the current mangas published, your sales data... Take inspiration from the following website: https://japanresell.fr/collections/weekly-shonen-jump.
Your company wants to apply MERISE to design an information system. You are responsible for the analysis part, i.e., gathering the company's requirements. It has called on a computer engineering student to carry out this project, and you must provide him with the necessary information so that he can then apply the following steps of database design and development himself.
First, establish the data business rules for your company in the form of a bulleted list. It must correspond to the information provided by someone who knows how the company works, but not how an information system is built.
Next, based on these rules, provide a raw data dictionary with the following columns, grouped in a table: meaning of the data, type, size in number of characters or digits. There should be between 25 and 35 data items. It is used to provide additional information about each data item (size and type) but without any assumptions about how the data will be modeled later.
Provide the business rules and the data dictionary.

Answer :

# 1️⃣ Business Rules (Data Business Rules)

### General Company Activity

* The company publishes weekly manga magazines similar to Weekly Shonen Jump.
* Each magazine issue has a unique issue number and a publication date.
* A magazine issue contains several manga chapters.
* A manga series can be serialized in multiple issues over time.
* A manga series may be ongoing, on hiatus, or completed.
* A manga series belongs to one primary demographic category (e.g., shonen, seinen, shojo).
* A manga series may belong to multiple genres (e.g., action, fantasy, romance).
* Each manga series has one main author.
* A manga series may also have additional contributors (illustrator, scriptwriter, assistant).
* An author can work on multiple manga series over time.
* Each manga chapter belongs to exactly one manga series.
* Each chapter is published in exactly one magazine issue.
* A chapter has a title, number, and number of pages.
* Manga volumes (tankōbon) are published separately from magazine issues.
* A volume contains several chapters from the same manga series.
* A chapter can only appear in one volume.
* A volume has an ISBN and a release date.
* Each manga series generates sales revenue through magazine sales and volume sales.

### Authors & Contributors

* Each author has a unique internal identifier.
* An author has a real name and may use a pen name.
* An author has a nationality.
* An author has a contract start date with the company.
* An author may have a contract end date.
* Authors receive royalties based on sales performance.
* Royalty percentages are defined per manga series contract.

### Sales & Distribution

* Each magazine issue has a print run quantity.
* Each magazine issue has total sales volume.
* Each volume has its own print run quantity.
* Each volume has total sales volume.
* Sales are tracked by country.
* The company distributes to multiple countries.
* Each country has its own distribution partner.
* Retail price may vary depending on country.
* Unsold copies are tracked for each issue and volume.
* The company calculates monthly revenue.
* Revenue is calculated based on sales and retail price.
* Rankings are established based on reader surveys per issue.
* Each chapter can receive a popularity score in reader surveys.

### Editorial Management

* Each manga series has an assigned editor.
* An editor can manage multiple manga series.
* Editors are company employees.
* Editors have a hiring date.
* Editorial meetings decide whether a series continues or is cancelled.
* A cancellation decision is recorded with a date and reason.

---

# 2️⃣ Raw Data Dictionary

The following table lists **raw data items**, independent from any future modeling structure.

| Meaning of the Data           | Type         | Size                  |
| ----------------------------- | ------------ | --------------------- |
| Magazine issue number         | Integer      | 5 digits              |
| Magazine publication date     | Date         | 10 characters         |
| Magazine print run quantity   | Integer      | 7 digits              |
| Magazine total sales quantity | Integer      | 7 digits              |
| Manga series title            | Alphanumeric | 150 characters        |
| Manga series status           | Alphanumeric | 20 characters         |
| Manga series start date       | Date         | 10 characters         |
| Manga series end date         | Date         | 10 characters         |
| Manga demographic category    | Alphanumeric | 30 characters         |
| Manga genre label             | Alphanumeric | 30 characters         |
| Chapter number                | Integer      | 4 digits              |
| Chapter title                 | Alphanumeric | 150 characters        |
| Chapter page count            | Integer      | 3 digits              |
| Chapter popularity score      | Decimal      | 5 digits (2 decimals) |
| Volume number                 | Integer      | 3 digits              |
| Volume ISBN                   | Alphanumeric | 17 characters         |
| Volume release date           | Date         | 10 characters         |
| Volume print run quantity     | Integer      | 7 digits              |
| Volume total sales quantity   | Integer      | 7 digits              |
| Author internal ID            | Integer      | 6 digits              |
| Author real name              | Alphanumeric | 100 characters        |
| Author pen name               | Alphanumeric | 100 characters        |
| Author nationality            | Alphanumeric | 50 characters         |
| Author contract start date    | Date         | 10 characters         |
| Author contract end date      | Date         | 10 characters         |
| Royalty percentage            | Decimal      | 5 digits (2 decimals) |
| Editor internal ID            | Integer      | 6 digits              |
| Editor name                   | Alphanumeric | 100 characters        |
| Editor hiring date            | Date         | 10 characters         |
| Country name                  | Alphanumeric | 80 characters         |
| Distribution partner name     | Alphanumeric | 120 characters        |
| Retail price                  | Decimal      | 6 digits (2 decimals) |
| Cancellation decision date    | Date         | 10 characters         |
| Cancellation reason           | Alphanumeric | 255 characters        |

**Total data items: 34**

---

This document provides:

* Clear business-level rules (for MCD creation in MERISE)
* A raw data dictionary (for building the conceptual schema)
* No premature modeling decisions (no primary keys, no cardinalities, no relations yet)

---

If you would like, I can now:

* Transform this into a **MERISE Conceptual Data Model (MCD)** description
* Or help generate the **conceptual schema with entities, associations, and cardinalities** for the student
