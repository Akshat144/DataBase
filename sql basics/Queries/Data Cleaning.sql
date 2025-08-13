
-- REMOVING DUPLICATES
select*
from layoffs;
CREATE TABLE layoffs_staging
LIKE layoffs;
INSERT layoffs_staging 
Select *
FROM layoffs_staging;

Select *,
ROW_NUMBER() OVER (PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_number1
FROM layoffs_staging;

with duplicate_cte as
(
Select *,
ROW_NUMBER() OVER (
PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_number1
FROM layoffs_staging
)
select *
from duplicate_cte
where row_number1>1;

Select *
FROM layoffs_staging
where company='Casper'
;
with duplicate_cte as
(
Select *,
ROW_NUMBER() OVER (
PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_number1
FROM layoffs_staging
)
DELETE
from duplicate_cte
where row_number1>1;

CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_number1` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT  *
FROM layoffs_staging2
WHERE ROW_NUMBER1 >1;
Insert into layoffs_staging2
Select *,
ROW_NUMBER() OVER (
PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_number1
FROM layoffs_staging
;
DELETE  
FROM layoffs_staging2
WHERE ROW_NUMBER1 >1;


-- STANDARDIZING DATA
SELECT company, trim(company)
FROM layoffs_staging2;

UPDATE layoffs_staging2
SET company =TRIM(company);

select *
from layoffs_staging2;

select Distinct industry
from layoffs_staging2
order by industry;

UPDATE layoffs_staging2
SET industry ='Crypto'
WHERE industry like 'Crypto%'
;

Select distinct country
from layoffs_staging2
order by 1; 
UPDATE layoffs_staging2
set country ='USA'
WHERE country like 'United States%';

UPDATE layoffs_staging2
SET date= str_to_date(`date`,'%m/%d/%Y');

ALTER TABLE layoffs_staging2
MODIFY COLUMN `date` DATE;

ALTER TABLE layoffs_staging2
DROP COLUMN row_number1;

DELETE
FROM layoffs_staging2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;
 
 
SELECT *
  FROM layoffs_staging2
  WHERE  INDUSTRY IS NULL OR INDUSTRY = '';
  
  
SELECT *
  FROM layoffs_staging2
  WHERE  company='Airbnb';
  
  Select *
  From layoffs_staging2 t1
  JOIN layoffs_staging2 t2
  on t1.company=t2.company
  AND t1.location= t2.location
WHERE( t1.industry IS NULL OR t1.industry= '')
AND t2.industry IS NOT NULL ;

UPDATE layoffs_staging2
SET industry= null
where industry =''
;
UPDATE layoffs_staging2 t1
JOIN layoffs_staging2 t2
  on t1.company=t2.company
SET t1.INDUSTRY=t2.INDUSTRY
WHERE (t1.industry IS NULL )
AND t2.industry IS NOT NULL ;