---- Question 1


SELECT 
    campaign_id, 
    impressions AS total_impressions
FROM 
    campaigndata
GROUP BY 
    campaign_id, impressions
ORDER BY 
	campaign_id ;


--- 2
SELECT campaign_id, company, (select max(roi) from campaigndata) as roi
From campaigndata
Order by 3 desc limit 1;


--- 3
SELECT
	location, SUM(impressions) AS totalimpressions
FROM campaigndata
GROUP BY location 
	ORDER BY 1 DESC
	limit 3;

--- 4
SELECT
target_audience, AVG(engagement_score) AS avgengagementscore
FROM campaigndata
GROUP BY target_audience;

--- 5 

SELECT SUM(clicks)::FLOAT / NULLIF(SUM(impressions), 0) AS overallctr
FROM campaigndata;

--- 6

SELECT
  campaign_id,
  company,
  (acquisition_cost::NUMERIC) / NULLIF((conversion_rate * impressions), 0) AS costperconversion
FROM campaigndata
WHERE (conversion_rate * impressions) > 0
ORDER BY costperconversion ASC
LIMIT 1;

--- 7
SELECT campaign_id, company, clicks::FLOAT / NULLIF(impressions, 0) AS ctr
FROM campaigndata
WHERE impressions > 0 AND (clicks::FLOAT / impressions) > 0.05;

--- 8
SELECT channel_used, SUM(conversion_rate) AS totalconversions
FROM campaigndata
GROUP BY channel_used
ORDER BY totalconversions DESC;


SELECT * FROM campaigndata
