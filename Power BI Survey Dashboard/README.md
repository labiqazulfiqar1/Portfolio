# Data Professional Survey Dashboard

Built an interactive Power BI dashboard analyzing survey responses from data professionals. The dataset includes information on job titles, salaries, programming language preferences, and satisfaction levels.

---

## Data Transformation

Before building the dashboard, I cleaned and transformed the raw data in Power Query:

- Changed data types — converted salary, age, and satisfaction columns to appropriate formats
- Removed unnecessary columns — dropped columns like timestamp, browser, OS, and other metadata not relevant to the analysis
- Handled "Other" values — grouped miscellaneous job titles, programming languages, and industries into cleaner categories
- Created salary averages — converted salary ranges (e.g., "86k-105k") into numerical averages for analysis
- Filtered out incomplete or irrelevant responses
- Renamed columns for better readability in visuals

---

## What I Did

- Connected to the survey dataset and cleaned it in Power Query
- Created measures using DAX for salary averages and satisfaction scores
- Built visualizations showing:
  - Favorite programming languages
  - Average salary by job title
  - Difficulty breaking into data
  - Happiness with work-life balance and salary
  - Country breakdown of respondents
- Designed a clean, color-coded layout for easy interpretation

---

## Tools Used

- Power BI
- Power Query (Data Transformation)
- DAX (Measures)

---

## Files

- `data_professional_survey_dashboard.pbix` — Power BI file
- `dashboard_preview.png` — Screenshot of the dashboard
- `data_professional_survey_raw.xlsx` — Raw dataset (before transformation)

---

## Screenshot

![Dashboard Preview](dashboard_preview.png)

---

## Key Takeaways

- Python is the most popular programming language among data professionals
- Data Scientists and Data Engineers have the highest average salaries
- Most respondents found it neither easy nor difficult to break into data
- Work-life balance satisfaction is slightly higher than salary satisfaction
- Majority of survey takers are from the United States
