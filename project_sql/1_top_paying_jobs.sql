SELECT 
    b.name As CompanyName,
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    job_posted_date,
    salary_year_avg
FROM
    job_postings_fact AS a
LEFT JOIN 
    company_dim As b ON a.company_id=b.company_id
WHERE 
    job_title_short='Data Analyst' AND
    salary_year_avg IS NOT NULL AND
    job_location='Anywhere' AND
    b.company_id IS NOT NULL
ORDER BY 
    salary_year_avg DESC
LIMIT 10;


