SELECT*
FROM layoffs_staging2
;

SELECT distinct company, location,funds_raised_millions
FROM layoffs_staging2
WHERE location = 'SF Bay Area'
AND funds_raised_millions IS NOT NULL
ORDER BY funds_raised_millions ;

SELECT distinct company, location,funds_raised_millions
FROM layoffs_staging2
WHERE location = 'SF Bay Area'
AND funds_raised_millions IS NOT NULL
ORDER BY funds_raised_millions ;


SELECT distinct company, location,funds_raised_millions
FROM layoffs_staging2
WHERE location = 'SF Bay Area'
AND funds_raised_millions IS NOT NULL
ORDER BY funds_raised_millions ;
Select min(`date`)
from layoffs_staging2;
Select max(`date`)
from layoffs_staging2;

SELECT distinct company, location,funds_raised_millions,total_laid_off
FROM layoffs_staging2
WHERE location = 'SF Bay Area' AND funds_raised_millions> 20
AND funds_raised_millions IS NOT NULL
AND total_laid_off IS NOT NULL
ORDER BY total_laid_off desc ,funds_raised_millions asc ;


WITH 
cte1 AS (
  SELECT 1 as id, SUM(total_laid_off) AS total_laid_off_2020
  FROM layoffs_staging2
  WHERE date LIKE '2020%'
),
cte2 AS (
  SELECT 1 as id, SUM(total_laid_off) AS total_laid_off_2021
  FROM layoffs_staging2
  WHERE date LIKE '2021%'
),
cte3 AS (
  SELECT 1 as id, SUM(total_laid_off) AS total_laid_off_2022
  FROM layoffs_staging2
  WHERE date LIKE '2022%'
),
cte4 AS (
  SELECT 1 as id, SUM(total_laid_off) AS total_laid_off_2023
  FROM layoffs_staging2
  WHERE date LIKE '2023%'
)

SELECT cte1.total_laid_off_2020, cte2.total_laid_off_2021, 
       cte3.total_laid_off_2022, cte4.total_laid_off_2023,( cte1.total_laid_off_2020 + cte2.total_laid_off_2021 +
       cte3.total_laid_off_2022 + cte4.total_laid_off_2023) as total
FROM cte1
JOIN cte2 ON cte1.id = cte2.id
JOIN cte3 ON cte1.id = cte3.id
JOIN cte4 ON cte1.id = cte4.id;

Select *,sum(total_laid_off) OVER(partition by COMPANY) AS TOTAL
from layoffs_staging2
where company='Amazon'
;

ALTER TABLE layoffs_staging2
ADD TOTAL_FROM_2020_2023 VARCHAR(200);


UPDATE layoffs_staging2 AS l
JOIN (
  SELECT company, SUM(total_laid_off) over (partition by company) AS total
  FROM layoffs_staging2
  ) AS sub ON l.company = sub.company
SET l.TOTAL_FROM_2020_2023 = sub.total;

Select *
from layoffs_staging2
order by TOTAL_FROM_2020_2023 desc
;

DELETE FROM layoffs_staging2
WHERE company IS NULL
   OR location IS NULL
   OR industry IS NULL
   OR total_laid_off IS NULL
   or percentage_laid_off is null
   OR date IS NULL
   or stage is null
   or country is null
    OR funds_raised_millions IS NULL
    ;


select industry,sum(total_laid_off) as total
from layoffs_staging2
group by industry 
order by total desc ;


select country,sum(total_laid_off) as total
from layoffs_staging2
group by country 
order by total desc ;

SELECT  *
FROM layoffs_staging2
WHERE country = 'India'
ORDER BY TOTAL_FROM_2020_2023 DESC;


ALTER TABLE layoffs_staging2
MODIFY TOTAL_FROM_2020_2023 INT;

select *
from 
layoffs_staging;
