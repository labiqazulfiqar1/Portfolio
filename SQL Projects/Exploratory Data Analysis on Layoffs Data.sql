-- Exploratory Data Analysis - Layoffs Dataset During Corona Virus
-- Objective: Analyze cleaned layoffs data to uncover trends, patterns and key insights.

-- View cleaned data.
SELECT *
FROM layoffs_staging2;

-- 1. Overview statistics

# Maximum layoffs.
SELECT MAX(total_laid_off), MAX(percentage_laid_off)
FROM layoffs_staging2;

# Companies that laid-off 100% of their workforce.
SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY total_laid_off DESC;

# Companies with 100% lay-offs sorted by funds raised.
SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;

-- 2. Layoffs by Category

# Total layoffs per company.
SELECT company, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company
ORDER BY 2 DESC;

# Total layoffs by industry.
SELECT industry, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY industry
ORDER BY 2 DESC; 

# Total layoffs by country.
SELECT country, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY country
ORDER BY 2 DESC;

# Total layoffs by company stage.
SELECT stage, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY stage
ORDER BY 2 DESC;

-- 3. Time-based Analysis

# The date range tells us the layoffs happened during the COVID time.
SELECT MIN(`date`), MAX(`date`)
FROM layoffs_staging2;

# Total layoffs by year.
SELECT year(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY year(`date`)
ORDER BY 1 DESC;

# Monthly layoffs trend.
SELECT SUBSTRING(`date`,1,7) AS `month`, SUM(total_laid_off)
FROM layoffs_staging2
WHERE SUBSTRING(`date`,1,7) IS NOT NULL
GROUP BY `month`
ORDER BY 1 ASC;

-- 4. Rolling Total

# Cumulative total of layoffs month by month.
WITH rolling_total AS
(
SELECT SUBSTRING(`date`,1,7) AS `month`, SUM(total_laid_off) AS sum_laid_off
FROM layoffs_staging2
WHERE SUBSTRING(`date`,1,7) IS NOT NULL
GROUP BY `month`
ORDER BY 1 ASC
)
SELECT `month`, sum_laid_off,
SUM(sum_laid_off) OVER(order by `month`) AS rolling_laid_off
FROM rolling_total;

-- 5. Top Companies by Year (RANKING)

SELECT company, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company
ORDER BY 2 DESC;

# Company-wise layoffs per year.
SELECT company, YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company, YEAR(`date`)
order by 3 DESC;

# Top 5 companies with most layoffs per year.
WITH company_year (company, years, total_laid_off) AS
(
SELECT company, YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company, YEAR(`date`)
), company_year_rank AS
(
SELECT*, 
DENSE_RANK() OVER(partition by years ORDER BY total_laid_off DESC) AS ranking
FROM company_year
WHERE years IS NOT NULL
)
SELECT *
FROM company_year_rank
WHERE ranking <=5;

-- END --
