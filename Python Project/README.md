# Python Data Cleaning Project - Customer Purchase Data

Cleaned a messy customer purchase dataset using Python (pandas).  
This project demonstrates my ability to handle real-world messy data — missing values, duplicates, incorrect data types, and useless columns.

---

## About This Project

I worked with a raw customer purchase dataset that had multiple issues: missing values, duplicate records, blank rows, and columns with no useful data. My goal was to clean it thoroughly so it could be used for analysis or visualization.

---

## What I Did

**Removed Useless Columns**
- Dropped the `Tax` column (completely empty)
- Dropped any "Unnamed" columns (so I don't have to hardcode column numbers)

**Removed Blank Rows**
- Dropped rows that were completely empty using `dropna(how='all')`

**Removed Duplicates**
- Found and removed duplicate rows to keep each transaction unique

**Fixed Customer IDs**
- Sorted and reset the index after cleaning

**Handled Missing Values**

| Column | Method Used | Why |
|--------|-------------|-----|
| `Province`, `Feedback`, `Mode_of_Purchase`, `Education` | Filled with **mode** (most frequent value) | Preserves the most common category |
| `Gender` | Inferred from `Customer_Name` using a custom map | More accurate than guessing |
| `Age`, `Earning_per_Month` | Filled with **median** | Less sensitive to outliers |
| `Quantity` | Calculated from `Total_Purchase_Amount / Per_Unit_Price` | Ensures consistency between related fields |

**Converted Data Types**
- Changed float columns to integer for cleaner analysis

**Added a New Column**
- `Marketing_Channel` — randomly assigned one of: Email, Social Media, Referral, Ads, Walk-in
- This allows for future analysis of which channels drive sales

---

## Before & After

| Metric | Before | After |
|--------|--------|-------|
| Rows | 82 | 76 |
| Columns | 16 | 15 |
| Missing values | Present in 9 columns | All handled |
| Duplicates | Yes | Removed |

---

## Tools Used
- Python
- pandas
- NumPy

---

## Files

- `project_raw_data.csv` — Original raw dataset
- `Purchase Data Cleaning.ipynb` — Python code file
- `Data Cleaning Project.pdf` — Detailed cleaning report (with explanations)
- `Project_clean_file.csv` — Final cleaned dataset (output)

---
