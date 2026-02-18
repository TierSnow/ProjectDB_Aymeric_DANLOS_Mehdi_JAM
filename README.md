Below is the **analysis deliverable** you can provide to the computer engineering student before starting MERISE conceptual modeling (MCD).

The following content reflects how the company actually works from a **business perspective**, without technical modeling assumptions.

---

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
