# Student Performance & Engagement Analytics — Final Report

## 1. Executive Summary
This project analyzes a synthetic dataset of 40,000 student records to investigate how platform engagement relates to academic performance, where performance gaps occur, and how low-engagement students can be flagged early. The analysis uses Excel, Python, SQL, and Power BI as specified by the project brief.

## 2. Problem Statement
The EdTech company wants evidence about engagement, academic performance, subject/region gaps, and early identification of at-risk students.

## 3. Data Description
The provided project brief specifies 40,000 synthetic student records and mentions academic scores, engagement metrics, and demographics. Because the brief does not include the original dataset or a full data dictionary, this implementation creates a synthetic dataset with inferred columns: Student_ID, Age, Gender, Region, Subject, App_Login_Count, Video_Completion_Rate, Study_Hours_Per_Week, Percentage, and Engagement_Level.

## 4. Methodology
- Excel: generated/reviewed the raw synthetic dataset.
- Python: cleaning, missing-value handling, feature creation, EDA, and CSV export.
- SQL/SQLite: KPI aggregation, grouping, CTE, and window-function analysis.
- Power BI: stakeholder dashboard with DAX measures and four report pages.
- GitHub: version control and documentation.
- AWS: optional advanced deployment, matching the brief.

## 5. Key Insights
Run the notebooks against the included dataset to populate the final numerical findings. Do not treat the generated numbers as real-world evidence.
1. Compare average Percentage across High, Medium, and Low Engagement.
2. Measure the gap between the highest- and lowest-performing regions.
3. Compare average Percentage across subjects.
4. Examine the relationship between App_Login_Count and Percentage.
5. Examine the relationship between Video_Completion_Rate and Percentage.
6. Quantify students meeting the project's at-risk rule.

## 6. At-Risk Definition
A student is classified as at-risk when:
- Engagement_Level = Low
- Percentage < overall average Percentage

This is a project rule derived from the Power BI requirement, not a validated educational risk model.

## 7. Recommendations
Use the dashboard to monitor low engagement, investigate regional/subject gaps, and prioritize early outreach to students matching the defined at-risk rule. Before operational use, validate the risk definition on real historical outcomes.

## 8. Appendix
See:
- `notebooks/01_data_exploration.ipynb`
- `notebooks/02_sql_analysis.ipynb`
- `notebooks/03_visualization_export.ipynb`
- `sql/analysis_queries.sql`
- `powerbi/POWER_BI_GUIDE.md`
