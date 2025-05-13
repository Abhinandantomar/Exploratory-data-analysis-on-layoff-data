select * from layoff_staging2;

# 1. write a query for calculate sum of total_laid_of

select sum(total_laid_off)
from layoff_staging2;

# 2. write a query for calculate sum of total_laid_of by top 5 country

select  country, sum(total_laid_off)
from layoff_staging2
group by country
order by sum(total_laid_off) desc limit 5;

# 3. write a query for calculate sum of total_laid_of by  company

select  company, sum(total_laid_off)
from layoff_staging2
group by company
order by sum(total_laid_off) desc;

# 4. write a query for show funds_raised_millions by unique company
select distinct company, funds_raised_millions
from layoff_staging2
order by funds_raised_millions desc;

# 5. write a query for sum of funds_raised_millions by country

select distinct country, sum(funds_raised_millions)
from layoff_staging2
group by country
order by sum(funds_raised_millions) desc;

# 6. write a query for sum of total laid off by top 5 industry

select  industry, sum(total_laid_off)
from layoff_staging2
group by industry
order by sum(total_laid_off) desc limit 5;

# 8. write a query for sum of total laid off by bottom 5 industry

select  industry, sum(total_laid_off)
from layoff_staging2
group by industry
order by sum(total_laid_off) asc limit 5;

# 8. write a query for sum of total laid off by year

select distinct year(`date`),sum(total_laid_off)
from layoff_staging2
group by year(`date`)
order by sum(total_laid_off) desc;

# 9. write a query for sum of total laid off by year by low to high

select distinct year(`date`),sum(total_laid_off)
from layoff_staging2
group by year(`date`)
order by sum(total_laid_off) asc;

# 10. write a query for sum of total laid off by month

select substring(`date`,6,2) as month,sum(total_laid_off)
from layoff_staging2
group by `month`
order by `month`;

# 11. write a query for total laid off by location
 
select distinct location,total_laid_off
from layoff_staging2
order by total_laid_off desc ;

# 12. write a query for finding out total laid off by stage

select stage,sum(total_laid_off) as total_off_sum
from layoff_staging2
group by stage
order by total_off_sum desc;

# 13. write a query for find out sum of total laid of by stage

select stage,sum(total_laid_off) as total_off_sum
from layoff_staging2
group by stage
having count(total_laid_off)
order by total_off_sum desc;
