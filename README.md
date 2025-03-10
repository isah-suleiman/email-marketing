# Marketing Campaign Analysis Using PostgreSQL
 
*Analyzing marketing campaign metrics with PostgreSQL for actionable insights.*

## 1. Project Title  
**Marketing Campaign Analysis Using PostgreSQL**

This project focuses on analyzing marketing campaign metrics to derive insights into performance, engagement, and cost efficiency using PostgreSQL.

## 2. Project Overview  
This project involves the analysis of a marketing campaign dataset to evaluate key performance indicators such as impressions, click-through rates (CTR), return on investment (ROI), and conversions. Using PostgreSQL, I addressed eight core questions to provide stakeholders with actionable insights for optimizing future campaigns, improving audience targeting, and enhancing cost efficiency.

## 3. Problem Statement  
Businesses face several challenges in optimizing marketing campaigns:  
- Limited understanding of audience reach and engagement across campaigns.  
- Inability to identify high-performing regions and channels for targeted investment.  
- Inefficiencies in budget allocation due to unclear cost-effectiveness and risk factors.  

This project aims to address these challenges by analyzing campaign data to provide data-driven recommendations.

## 4. Data Source  
The dataset used for this analysis includes:  
- **Campaign Metrics**: Impressions, clicks, revenue, costs, and ROI for each campaign.  
- **Audience Data**: Demographics such as age, gender, and location of the target audience.  
- **Channel Performance**: Conversion rates and performance metrics across channels like email and social media.  

The data was stored in a PostgreSQL database, enabling efficient querying and analysis.

## 5. Methodology  
The analysis was conducted entirely in PostgreSQL:  
- **Tool Used**: PostgreSQL was used for all data processing, querying, and analysis.  
- **Approach**:  
  - Initial exploration involved aggregating data by campaign, location, and audience to identify trends.  
  - Specific metrics like ROI, CTR, and cost per conversion were calculated using SQL queries.  
  - Advanced queries, including joins and aggregations, were used to evaluate channel performance and risk factors.  
- **Process**:  
  1. Data cleaning was performed using `UPDATE` and `DELETE` statements to correct inconsistencies.  
  2. Metrics were calculated with queries such as `SELECT campaign_id, SUM(impressions) AS total_impressions FROM campaigns GROUP BY campaign_id` for impressions and `SELECT AVG(clicks::float / impressions) AS ctr FROM campaigns` for CTR.  
  3. Views were created to simplify repeated analyses, such as ranking locations by impressions.  
  4. All queries were documented in a single file for reproducibility.  

The complete set of SQL queries is available in [queries.sql](queries.sql).

## 6. Key Insights  
The analysis revealed the following findings:  
- **Campaign Reach**: 23 campaigns each achieved 10,000 impressions.  
- **ROI Performance**: Several campaigns recorded an ROI of 8, indicating strong profitability.  
- **Top Locations**: New York, Miami, and Los Angeles had the highest impressions.  
- **Audience Engagement**: The 18-24 male demographic exhibited the highest engagement.  
- **Click-Through Rate (CTR)**: The overall CTR across campaigns was 9.98% (0.0998).  
- **Cost Efficiency**: Campaign ID 42484 was the most cost-effective, with a cost per conversion of 3.34.  
- **High Performers**: 160,332 campaigns exceeded a 5% CTR threshold.  
- **Channel Performance**: Email campaigns resulted in the highest number of conversions.  
- **Risk Indicators**: Approximately 5% of transactions were flagged as suspicious, suggesting potential fraud.  

These insights provide a clear view of campaign performance and areas for improvement.

## 7. Conclusion / Recommendations  
Based on the analysis, the following recommendations are proposed:  
- **Target High-Engagement Demographics**: Focus on the 18-24 male demographic for future campaigns, as they showed the highest engagement.  
- **Increase Investment in Top Locations**: Allocate more budget to campaigns in New York, Miami, and Los Angeles due to their high impression counts.  
- **Scale Successful Campaigns**: Expand the budget for the 23 campaigns with 10,000 impressions to maximize reach.  
- **Prioritize Email Channels**: Invest more in email campaigns, as they drove the highest conversions compared to other channels.  
- **Address Fraud Risks**: Investigate the 5% of suspicious transactions by implementing stricter verification for high-value interactions.  
- **Monitor Performance Regularly**: Use the provided SQL queries to track campaign metrics monthly for ongoing optimization.  

The full set of queries is available in [queries.sql](queries.sql) for further exploration.
