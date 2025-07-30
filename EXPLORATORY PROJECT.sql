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

SELECT distinct company, location,funds_raised_millions,total_laid_off
FROM layoffs_staging2
WHERE location = 'SF Bay Area' AND funds_raised_millions> 20
AND funds_raised_millions IS NOT NULL
AND total_laid_off IS NOT NULL
ORDER BY funds_raised_millions , total_laid_off;

