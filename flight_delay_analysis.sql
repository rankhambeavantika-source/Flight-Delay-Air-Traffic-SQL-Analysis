```sql
-- ============================================================
-- FLIGHT DELAY / AIR TRAFFIC ANALYSIS
-- SQL PROJECT
-- ============================================================

-- ============================================================
-- 1. DATABASE SETUP
-- ============================================================

CREATE DATABASE flight_delay_analysis;

USE flight_delay_analysis;

SHOW TABLES;

SELECT DATABASE();


-- ============================================================
-- 2. TABLE STRUCTURE & DATA EXPLORATION
-- ============================================================

DESCRIBE air_traffic;

SELECT *
FROM air_traffic
LIMIT 10;

SELECT COUNT(*) AS total_rows
FROM air_traffic;


-- ============================================================
-- 3. DATA COMPLETENESS CHECK
-- ============================================================

SELECT
    COUNT(*) AS total_rows,
    COUNT(year) AS year_count,
    COUNT(month) AS month_count,
    COUNT(pax) AS pax_count,
    COUNT(flt) AS flight_count,
    COUNT(lf) AS load_factor_count
FROM air_traffic;


-- ============================================================
-- 4. CHECK FOR DUPLICATE YEAR-MONTH RECORDS
-- ============================================================

SELECT
    year,
    month,
    COUNT(*) AS row_count
FROM air_traffic
GROUP BY year, month
HAVING COUNT(*) > 1;


-- ============================================================
-- 5. DATA PERIOD
-- ============================================================

SELECT
    MIN(year) AS start_year,
    MAX(year) AS end_year,
    COUNT(*) AS total_records
FROM air_traffic;


-- ============================================================
-- 6. OVERALL PASSENGER ANALYSIS
-- ============================================================

SELECT
    SUM(dom_pax) AS domestic_passengers,
    SUM(int_pax) AS international_passengers,
    SUM(dom_pax + int_pax) AS total_passengers
FROM air_traffic;


-- ============================================================
-- 7. YEARLY PASSENGER ANALYSIS
-- ============================================================

SELECT
    year,
    SUM(dom_pax) AS domestic_passengers,
    SUM(int_pax) AS international_passengers,
    SUM(dom_pax + int_pax) AS total_passengers
FROM air_traffic
GROUP BY year
ORDER BY year;


-- ============================================================
-- 8. YEAR WITH HIGHEST PASSENGER TRAFFIC
-- ============================================================

SELECT
    year,
    SUM(dom_pax + int_pax) AS total_passengers
FROM air_traffic
GROUP BY year
ORDER BY total_passengers DESC
LIMIT 1;


-- ============================================================
-- 9. YEAR WITH LOWEST PASSENGER TRAFFIC
-- ============================================================

SELECT
    year,
    SUM(dom_pax + int_pax) AS total_passengers
FROM air_traffic
GROUP BY year
ORDER BY total_passengers ASC
LIMIT 1;


-- ============================================================
-- 10. MONTHLY PASSENGER ANALYSIS
-- ============================================================

SELECT
    month,
    SUM(dom_pax + int_pax) AS total_passengers
FROM air_traffic
GROUP BY month
ORDER BY total_passengers DESC;


-- ============================================================
-- 11. PASSENGER TRAFFIC IN 2020
-- ============================================================

SELECT
    year,
    month,
    dom_pax AS domestic_passengers,
    int_pax AS international_passengers,
    (dom_pax + int_pax) AS total_passengers
FROM air_traffic
WHERE year = 2020
ORDER BY month;


-- ============================================================
-- 12. OVERALL FLIGHT ANALYSIS
-- ============================================================

SELECT
    SUM(dom_flt) AS domestic_flights,
    SUM(int_flt) AS international_flights,
    SUM(dom_flt + int_flt) AS total_flights
FROM air_traffic;


-- ============================================================
-- 13. YEARLY FLIGHT ANALYSIS
-- ============================================================

SELECT
    year,
    SUM(dom_flt) AS domestic_flights,
    SUM(int_flt) AS international_flights,
    SUM(dom_flt + int_flt) AS total_flights
FROM air_traffic
GROUP BY year
ORDER BY year;


-- ============================================================
-- 14. YEAR WITH HIGHEST FLIGHT TRAFFIC
-- ============================================================

SELECT
    year,
    SUM(dom_flt + int_flt) AS total_flights
FROM air_traffic
GROUP BY year
ORDER BY total_flights DESC
LIMIT 1;


-- ============================================================
-- 15. YEAR WITH LOWEST FLIGHT TRAFFIC
-- ============================================================

SELECT
    year,
    SUM(dom_flt + int_flt) AS total_flights
FROM air_traffic
GROUP BY year
ORDER BY total_flights ASC
LIMIT 1;


-- ============================================================
-- 16. MONTHLY FLIGHT ANALYSIS
-- ============================================================

SELECT
    month,
    SUM(dom_flt + int_flt) AS total_flights
FROM air_traffic
GROUP BY month
ORDER BY total_flights DESC;


-- ============================================================
-- 17. LOAD FACTOR ANALYSIS
-- ============================================================

SELECT
    year,
    ROUND(AVG(dom_lf), 2) AS avg_domestic_load_factor,
    ROUND(AVG(int_lf), 2) AS avg_international_load_factor,
    ROUND(AVG(lf), 2) AS avg_load_factor
FROM air_traffic
GROUP BY year
ORDER BY year;


-- ============================================================
-- 18. YEAR WITH HIGHEST LOAD FACTOR
-- ============================================================

SELECT
    year,
    ROUND(AVG(lf), 2) AS avg_load_factor
FROM air_traffic
GROUP BY year
ORDER BY avg_load_factor DESC
LIMIT 1;


-- ============================================================
-- 19. YEAR WITH LOWEST LOAD FACTOR
-- ============================================================

SELECT
    year,
    ROUND(AVG(lf), 2) AS avg_load_factor
FROM air_traffic
GROUP BY year
ORDER BY avg_load_factor ASC
LIMIT 1;


-- ============================================================
-- 20. RPM AND ASM ANALYSIS
-- RPM = Revenue Passenger Miles
-- ASM = Available Seat Miles
-- ============================================================

SELECT
    year,
    SUM(dom_rpm + int_rpm) AS total_rpm,
    SUM(dom_asm + int_asm) AS total_asm
FROM air_traffic
GROUP BY year
ORDER BY year;


-- ============================================================
-- 21. CAPACITY UTILIZATION
-- Capacity Utilization = RPM / ASM * 100
-- ============================================================

SELECT
    year,
    ROUND(
        SUM(dom_rpm + int_rpm) /
        NULLIF(SUM(dom_asm + int_asm), 0) * 100,
        2
    ) AS capacity_utilization
FROM air_traffic
GROUP BY year
ORDER BY year;


-- ============================================================
-- 22. COVID-19 IMPACT ANALYSIS
-- Comparing 2019, 2020 and 2021
-- ============================================================

SELECT
    year,
    SUM(dom_pax + int_pax) AS total_passengers,
    SUM(dom_flt + int_flt) AS total_flights,
    ROUND(AVG(lf), 2) AS avg_load_factor,
    SUM(dom_rpm + int_rpm) AS total_rpm,
    SUM(dom_asm + int_asm) AS total_asm
FROM air_traffic
WHERE year IN (2019, 2020, 2021)
GROUP BY year
ORDER BY year;


-- ============================================================
-- 23. COVID-19 MONTHLY IMPACT ANALYSIS
-- ============================================================

SELECT
    year,
    month,
    dom_lf AS domestic_load_factor,
    int_lf AS international_load_factor,
    lf AS overall_load_factor,
    dom_rpm AS domestic_rpm,
    int_rpm AS international_rpm,
    dom_asm AS domestic_asm,
    int_asm AS international_asm
FROM air_traffic
WHERE year IN (2019, 2020, 2021)
ORDER BY year, month;


-- ============================================================
-- 24. RECOVERY ANALYSIS
-- Months with load factor of 80% or higher
-- ============================================================

SELECT
    year,
    month,
    ROUND(lf, 2) AS load_factor
FROM air_traffic
WHERE year >= 2020
  AND lf >= 80
ORDER BY year, month;


-- ============================================================
-- 25. DOMESTIC VS INTERNATIONAL LOAD FACTOR
-- ============================================================

SELECT
    year,
    ROUND(AVG(dom_lf), 2) AS avg_domestic_load_factor,
    ROUND(AVG(int_lf), 2) AS avg_international_load_factor
FROM air_traffic
GROUP BY year
ORDER BY year;


-- ============================================================
-- END OF ANALYSIS
-- ============================================================
```
