# SQL Layoffs Data Project

Cleaned and analyzed a global layoffs dataset (2020–2023) using MySQL.  
From messy CSV to actionable insights.

---

## About This Project

I chose this dataset because I wanted to understand the real impact of the post-COVID tech downturn. The data includes thousands of companies across industries and countries, making it perfect for practicing real-world SQL.

---

## Project 1: Data Cleaning

**Goal:** Turn raw, inconsistent data into a reliable table for analysis.

**What I did:**
- Created a staging table so the raw data stayed untouched
- Used `ROW_NUMBER()` with a CTE to find and remove duplicates
- Standardized text — trimmed spaces, fixed "Crypto" variations, removed trailing dots from "United States."
- Converted text dates to `DATE` type using `STR_TO_DATE()`
- Used a self-join to fill missing industry values
- Dropped rows with no layoff numbers and removed temporary columns

**Output:** `layoffs_staging2` — a clean, query-ready table.

---

## Project 2: Exploratory Data Analysis

**Goal:** Uncover trends and patterns in layoffs across time, industries, and regions.

**What I explored:**
- Companies that shut down completely (100% layoffs)
- Total layoffs by industry, country, and company stage
- Monthly trends and rolling totals
- Top 5 companies by layoffs per year

---

## Key Insights

**Worst Hit Industries**
- Consumer — 45,000+ layoffs
- Retail — 35,000+ layoffs
- Healthcare — 20,000+ layoffs

**Worst Hit Countries**
- United States — 200,000+ layoffs
- India — 25,000+ layoffs
- Germany — 8,000+ layoffs

**Companies That Shut Down Completely**
Several companies laid off 100% of their workforce, including EMX Digital, Openpay, Mode Global, Wyre, and Medly — indicating total business closures.

**Time-Based Trends**
- Peak month: January 2023
- Layoffs accelerated sharply from mid-2022 through early 2023

**Largest Single Layoff Event**
- Google — 12,000 employees

---

## Tools Used
- MySQL
- SQL (CTEs, Window Functions, Self-Joins, String/Date Functions)

---

## Files

- `Data Cleaning.sql` — Cleaning script (run this first)
- `Exploratory Data Analysis.sql` — Analysis script (run after cleaning)
- `layoffs.csv` — Original raw dataset

---

## How to Run

1. Import `layoffs.csv` into MySQL
2. Run `Data Cleaning.sql` to create `layoffs_staging2`
3. Run `Exploratory Data Analysis.sql` to view insights

---
