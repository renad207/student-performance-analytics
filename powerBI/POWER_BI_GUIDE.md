# Power BI Dashboard Build Guide

## Import
Power BI Desktop → Get Data → Text/CSV:
- data/processed/cleaned_data.csv
- data/processed/at_risk_students.csv
- data/processed/regional_summary.csv

## DAX Measures
```DAX
Total Students = COUNTROWS('students')

Avg Percentage = AVERAGE('students'[Percentage])

Avg Login Count = AVERAGE('students'[App_Login_Count])

At-Risk Count =
CALCULATE(
    COUNTROWS('students'),
    'students'[Engagement_Level] = "Low",
    'students'[Percentage] < [Avg Percentage]
)

High Engagement % =
DIVIDE(
    CALCULATE(COUNTROWS('students'), 'students'[Engagement_Level] = "High"),
    [Total Students],
    0
) * 100

Performance Gap =
VAR MaxAvg =
    MAXX(ALL('students'[Region]), CALCULATE(AVERAGE('students'[Percentage])))
VAR MinAvg =
    MINX(ALL('students'[Region]), CALCULATE(AVERAGE('students'[Percentage])))
RETURN MaxAvg - MinAvg
```

## Suggested 4-page report
### Page 1 — Executive Overview
Cards: Total Students, Avg Percentage, Avg Login Count, At-Risk Count.
Charts: Avg Percentage by Engagement Level; Students by Region; Engagement Level slicer.

### Page 2 — Engagement & Performance
Scatter: App_Login_Count vs Percentage.
Scatter: Video_Completion_Rate vs Percentage.
Column chart: Avg Percentage by Engagement Level.

### Page 3 — Subject & Regional Gaps
Bar chart: Avg Percentage by Subject.
Bar chart: Avg Percentage by Region.
Card: Performance Gap.
Slicers: Region, Subject, Gender.

### Page 4 — At-Risk Students
Table: Student_ID, Region, Subject, App_Login_Count, Video_Completion_Rate, Percentage, Engagement_Level.
Cards: At-Risk Count and At-Risk %.
