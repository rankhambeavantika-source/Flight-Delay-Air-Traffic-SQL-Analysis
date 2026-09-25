# ✈️ Flight Delay & Air Traffic Analysis | SQL

**Analyzing aviation traffic, flight operations, capacity utilization, and COVID-19 impact using SQL to identify trends and changes in the airline industry.**

---

## 📌 Business Problem

The aviation industry generates large volumes of operational data covering passenger traffic, flight operations, capacity, and utilization. Analyzing these metrics over time helps understand **industry growth, operational changes, capacity utilization, and the impact of major disruptions such as COVID-19**.

Aviation stakeholders need answers to questions such as:

* How has passenger traffic changed over time?
* Which years recorded the highest and lowest passenger traffic?
* How has flight activity changed over time?
* How does domestic traffic compare with international traffic?
* Which years had higher load factors?
* How significantly did COVID-19 affect aviation activity?
* How did capacity utilization change over time?
* When did passenger and flight activity begin to recover?

**This project uses MySQL to analyze historical aviation data and convert raw records into meaningful trends for passenger traffic, flight operations, and capacity utilization.**

---

## 🎯 What I Did

1. **Explored and validated the aviation dataset** by checking table structure, record counts, data completeness, and year-month consistency.

2. **Analyzed passenger traffic** across yearly, monthly, domestic, and international dimensions.

3. **Analyzed flight operations** to understand changes in total, domestic, and international flight activity.

4. **Calculated and compared load factors** to evaluate passenger utilization relative to available capacity.

5. **Analyzed RPM and ASM** to understand changes in passenger demand and available capacity over time.

6. **Performed COVID-19 impact analysis** by comparing aviation activity before, during, and after the major disruption period.

7. **Used SQL aggregations and filtering techniques** to identify the highest, lowest, and changing aviation activity periods.

---

## 📊 Analysis Performed

### 1. Data Exploration & Validation

* Inspected table structure
* Checked total records
* Reviewed data completeness
* Validated year-month records
* Identified the analysis period
* Checked for duplicate year-month combinations

**Business Use:**
Establishes data quality and ensures that subsequent aviation analysis is based on consistent records.

---

### 2. Passenger Traffic Analysis

Analyzed:

* Total passenger traffic
* Domestic passengers
* International passengers
* Yearly passenger trends
* Monthly passenger trends
* Highest passenger traffic year
* Lowest passenger traffic year

**Business Use:**
Helps understand changes in passenger demand and identify periods of growth or decline.

---

### 3. Flight Traffic Analysis

Analyzed:

* Total flights
* Domestic flights
* International flights
* Yearly flight trends
* Monthly flight trends
* Highest flight traffic year
* Lowest flight traffic year

**Business Use:**
Provides visibility into changes in flight activity and operational volume over time.

---

### 4. Load Factor Analysis

Analyzed:

* Average domestic load factor
* Average international load factor
* Overall load factor
* Yearly load factor trends
* Highest and lowest load factor periods

**Business Use:**
Helps evaluate how effectively available aircraft capacity was utilized by passenger demand.

---

### 5. RPM & ASM Analysis

Analyzed:

* Revenue Passenger Miles (**RPM**)
* Available Seat Miles (**ASM**)
* Yearly RPM trends
* Yearly ASM trends
* Capacity utilization

**Business Use:**
Helps compare passenger demand with available capacity and understand changes in aviation utilization over time.

---

### 6. COVID-19 Impact Analysis

Compared aviation performance across key periods including **2019, 2020, and 2021**.

The analysis examined changes in:

* Passenger traffic
* Flight traffic
* Domestic activity
* International activity
* Load factor
* RPM
* ASM
* Recovery trends

**Business Use:**
Helps quantify how a major external disruption affected aviation demand, operations, and capacity utilization and provides a basis for understanding the subsequent recovery period.

---

## 💡 Key Business Insights

The analysis is designed to identify measurable patterns in aviation activity, including:

* Changes in passenger traffic across years and months.
* Differences between domestic and international aviation activity.
* Changes in flight operations over time.
* Variations in load factor and capacity utilization.
* Changes in passenger demand and available capacity through RPM and ASM.
* The significant disruption in aviation activity during the COVID-19 period.
* Changes in passenger and flight activity during the subsequent recovery period.

> **Note:** The analysis describes historical patterns in the dataset. Changes in aviation activity may have multiple causes, and the SQL analysis does not establish causation.

---

## 🧭 Business Questions & How This Analysis Helps

| Business Question                                                 | SQL Analysis                                                        | Business Use                                                                 |
| ----------------------------------------------------------------- | ------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| **What is the overall passenger traffic?**                        | Calculated total passenger volume.                                  | Establishes the overall scale of passenger activity in the dataset.          |
| **Which year had the highest and lowest passenger traffic?**      | Aggregated passengers by year and ranked results.                   | Helps identify periods of peak and reduced passenger demand.                 |
| **Which year had the highest and lowest flight traffic?**         | Aggregated flight activity by year.                                 | Helps identify changes in operational volume.                                |
| **How does domestic traffic compare with international traffic?** | Compared domestic and international passengers and flights.         | Helps understand the composition of aviation activity.                       |
| **Which periods had higher load factors?**                        | Calculated average load factor by period.                           | Helps evaluate aircraft capacity utilization.                                |
| **How did COVID-19 affect aviation activity?**                    | Compared 2019, 2020, and 2021 metrics.                              | Helps quantify changes during the disruption period.                         |
| **How did capacity utilization change over time?**                | Compared RPM and ASM with load factor metrics.                      | Helps understand changes in passenger demand relative to available capacity. |
| **When did aviation activity begin to recover?**                  | Compared traffic and operational metrics across post-COVID periods. | Helps identify changes in aviation activity following the disruption.        |
| **Are there meaningful monthly traffic patterns?**                | Aggregated passenger and flight data by month.                      | Helps identify recurring changes in aviation activity.                       |

---

## 💼 How This Project Helps the Business

The analysis provides a structured view of aviation demand and operational activity.

It can help aviation stakeholders:

* **Monitor passenger traffic trends** over time.
* **Compare domestic and international activity**.
* **Track flight operations** across different periods.
* **Evaluate capacity utilization** using load factor metrics.
* **Compare passenger demand and available capacity** through RPM and ASM.
* **Measure the impact of major disruptions** such as COVID-19.
* **Identify recovery trends** following periods of reduced aviation activity.
* **Support historical aviation reporting** through structured SQL analysis.

---

## 🎯 Business Outcome

**The project transforms raw aviation data into structured SQL analysis that helps identify passenger traffic trends, flight activity, capacity utilization, domestic and international differences, and the impact of COVID-19 on the aviation industry.**

The analysis demonstrates how SQL can be used to **translate operational data into measurable business trends and support data-driven aviation analysis**.

---

## 🛠️ Tools & Technologies

* **MySQL** — Data analysis and SQL querying
* **MySQL Workbench** — Query development and execution
* **SQL** — Aggregation, filtering, trend analysis, and business analysis
* **GitHub** — Project documentation and version control

---

## 📈 SQL Skills Demonstrated

### SQL Fundamentals

* `SELECT`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* `HAVING`
* `IN`
* `LIMIT`

### Aggregate & Analytical Functions

* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`
* `ROUND()`
* `NULLIF()`

### Business Analysis

* Trend analysis
* Year-over-year comparison
* Monthly analysis
* Domestic vs international comparison
* Capacity utilization analysis
* COVID-19 impact analysis
* Recovery analysis
* KPI calculation

---

## 📂 Project Structure

```text
Flight-Delay-Air-Traffic-SQL-Analysis/
│
├── README.md
│
└── flight_delay_analysis.sql
```

---

## 👩‍💻 Author

**Avantika Rankhambe**

**Data Analyst | SQL | Excel | Power BI | Tableau**

---

## ⭐ Project Purpose

This project was developed as part of my **Data Analytics portfolio** to demonstrate practical experience in using SQL to analyze aviation data, identify operational trends, evaluate capacity utilization, and translate raw data into **business-focused insights**.
