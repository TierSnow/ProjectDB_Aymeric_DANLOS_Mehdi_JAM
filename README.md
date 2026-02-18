Prompt : You work in the field of the Manga industry. Your company is involved in the domain of publishing selection, where you must analyse the data of the currently published mangas (Themes/Genres, Author, Sells, International publication, Amount of chapters, Starting date) to decide what to do with them. It is a compagny such as Weekly Shonen Jump. The mangas that are currently being published are ONE PIECE, SAKAMOTO DAYS, Akane-banashi, Blue Box, Kill Blue, The Elusive Samurai, Kagurabachi, Ichi the Witch, Marriagetoxin, Undead Unluck, Himaten, Shinobi Undercover, Syd Craft no Saishu Suiri. Take inspiration from the following websites: https://shonenjumpplus.com/, https://www.viz.com/shonenjump, https://en.wikipedia.org/wiki/Weekly_Sh%C5%8Dnen_Jump, https://www.animenewsnetwork.com/, https://www.crunchyroll.com/news/manga. 
Your company wants to apply MERISE to design an information system. You are responsible for the analysis part, i.e., gathering the company's requirements. It has called on a computer engineering student to carry out this project, and you must provide him with the necessary information so that he can then apply the following steps of database design and development himself. 
First, establish the data business rules for your company in the form of a bulleted list. It must correspond to the information provided by someone who knows how the company works, but not how an information system is built.
Next, based on these rules, provide a raw data dictionary with the following columns, grouped in a table: meaning of the data, type, size in number of characters or digits. There should be between 25 and 35 data items. It is used to provide additional information about each data item (size and type) but without any assumptions about how the data will be modeled later.
Provide the business rules and the data dictionary.

Answer :

Below is the **analysis deliverable** your company would hand to an engineering student.
It contains:

1. **Business rules** (expressed as someone who understands the company’s business but not information-systems modeling).
2. A **raw data dictionary** (25–35 items) with meaning, type, and size.
   Entities are included for the manga titles.

---

# **Business Rules (Company-Level Requirements)**

* The company manages a catalog of manga series currently serialized in its magazine. These include:
  ONE PIECE,
  SAKAMOTO DAYS,
  Akane-banashi,
  Blue Box,
  Kill Blue,
  The Elusive Samurai,
  Kagurabachi,
  Ichi the Witch,
  Marriagetoxin,
  Undead Unluck,
  Himaten,
  Shinobi Undercover,
  Syd Craft no Saishu Suiri.

* Each manga has one or more **authors** (writer, artist, or duo).

* Each manga has a defined set of **genres** and **themes** used to monitor trends and reader interests.

* The company tracks **publication status** (ongoing, on hiatus, near cancellation, newly launched).

* For each manga, the company stores the **serialization start date**.

* The company tracks the **number of chapters published**, updated weekly.

* The company evaluates **sales data** regularly, including:

  * Volume sales (physical + digital)
  * Magazine readership metrics
  * Growth/decline trends over time

* The company tracks whether a series has **international publication**, and in which countries or languages.

* The company tracks **reader feedback**, including satisfaction score, demographic reach, and audience retention.

* Each manga is associated with a **publication schedule** (weekly, irregular, seasonal).

* The company tracks **adaptations** (anime, movie, novel).

* The company evaluates **cancellation risk** based on sales, ratings, and audience retention.

* Editorial staff assign **editor(s) in charge** per manga.

* Each chapter has its **publication date** and **chapter number**.

* The company tracks **marketing initiatives** (special campaigns, covers, promotions) linked to each manga.

* The company monitors **merchandising potential** and existing products.

* The company regularly evaluates and compares **performance rankings** among all active series.

* The company tracks **contractual information**, such as rights management for reproduction and international sales.

* Authors may work on **multiple manga**, and each manga can involve multiple contributors.

* The company stores **historical sales data** and must keep past records even after a manga ends.

* The company requires precise **identification** of every manga, author, country of publication, editor, and chapter.

* All data must remain traceable over time and accessible for strategic decisions.

---

# **Raw Data Dictionary (25–35 Items)**

*(No assumptions about modeling—only definitions, types, and sizes.)*

| Data Meaning                   | Type         | Size                  |
| ------------------------------ | ------------ | --------------------- |
| Manga ID                       | Integer      | 10 digits             |
| Manga Title                    | Alphanumeric | 150 chars             |
| Author ID                      | Integer      | 10 digits             |
| Author Name                    | Alphabetic   | 100 chars             |
| Author Role (writer/artist)    | Alphabetic   | 30 chars              |
| Genre                          | Alphabetic   | 50 chars              |
| Theme                          | Alphabetic   | 50 chars              |
| Serialization Start Date       | Date         | YYYY-MM-DD            |
| Publication Status             | Alphabetic   | 20 chars              |
| Number of Chapters             | Integer      | 5 digits              |
| Chapter ID                     | Integer      | 10 digits             |
| Chapter Number                 | Integer      | 5 digits              |
| Chapter Publication Date       | Date         | YYYY-MM-DD            |
| Sales Volume (per volume)      | Integer      | 10 digits             |
| Digital Sales                  | Integer      | 10 digits             |
| Physical Sales                 | Integer      | 10 digits             |
| Total Sales                    | Integer      | 10 digits             |
| Readership Score               | Decimal      | 5 digits (2 decimals) |
| Audience Retention Rate        | Decimal      | 5 digits (2 decimals) |
| Satisfaction Rating            | Decimal      | 4 digits (1 decimal)  |
| International Publication Flag | Boolean      | 1 char                |
| International Market           | Alphabetic   | 100 chars             |
| Language                       | Alphabetic   | 50 chars              |
| Adaptation Type                | Alphabetic   | 50 chars              |
| Editor ID                      | Integer      | 10 digits             |
| Editor Name                    | Alphabetic   | 100 chars             |
| Marketing Campaign ID          | Integer      | 10 digits             |
| Campaign Description           | Alphanumeric | 200 chars             |
| Merchandising Category         | Alphabetic   | 50 chars              |
| Rights Contract ID             | Integer      | 10 digits             |
| Contract Details               | Alphanumeric | 300 chars             |
| Performance Rank               | Integer      | 3 digits              |
| Publication Schedule           | Alphabetic   | 20 chars              |
| Risk Evaluation Score          | Decimal      | 4 digits (1 decimal)  |

---

If you want, I can also produce:

✅ The **conceptual model (MCD)** in MERISE
✅ The **logical model (MLD)** based on these rules
✅ The **physical schema** for SQL
Just tell me!

---

If you would like, I can now:

* Transform this into a **MERISE Conceptual Data Model (MCD)** description
* Or help generate the **conceptual schema with entities, associations, and cardinalities** for the student





Remarks:

Prompt changed once, describing more accurately the mission of the company to obtain a more accurate reply, including more accurate items.
