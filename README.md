# Student Performance & Engagement Analytics

## Overview

An end-to-end data analytics project analyzing 40,000
student records to understand the relationship between
student engagement and academic performance.

## Business Questions

1. How does engagement affect academic performance?
2. Which subjects and regions show performance gaps?
3. Can at-risk students be identified early?
4. How can stakeholders monitor these KPIs interactively?

## My Insights and findings

This project addresses four key business questions using Python, SQL, and an interactive Power BI dashboard.

### 1. How does engagement affect academic performance?

Student engagement is analyzed through app login activity, video completion rate, and engagement level. Academic performance is measured using students' percentage scores.

**Power BI Visuals:**

* **Average Performance by Engagement Level** — Clustered Column Chart
* **App Login Count vs Academic Performance** — Scatter Chart
* **Video Completion Rate vs Academic Performance** — Scatter Chart

These visualizations allow stakeholders to examine differences in academic performance across engagement levels and explore the relationship between individual engagement metrics and student performance.

---

### 2. Which subjects and regions show performance gaps?

The analysis compares average student performance across different subjects and regions to identify areas with higher or lower average scores.

**Power BI Visuals:**

* **Average Performance by Region** — Bar Chart
* **Average Performance by Subject** — Column Chart
* **Region × Subject Performance** — Matrix
* **Regional Performance Gap** — KPI Card

These visuals provide both an overall comparison and a more detailed view of performance differences between regions and subjects.

---

### 3. Can at-risk students be identified early?

At-risk students are identified using engagement and academic performance indicators. The dashboard focuses on students with **Low Engagement** whose **Percentage is below the overall average performance**.

**Power BI Visuals:**

* **At-Risk Students** — KPI Card
* **At-Risk Students by Region** — Bar Chart
* **At-Risk Students by Engagement Level** — Column Chart
* **At-Risk Student Details** — Table

This allows stakeholders to identify groups and individual students that may require additional attention based on the project's defined at-risk criteria.

---

### 4. How can stakeholders monitor these KPIs interactively?

The Power BI dashboard provides an interactive view of student performance, engagement, regional differences, subject performance, and at-risk students.

**Dashboard Pages:**

| Page                         | Purpose                                                              |
| ---------------------------- | -------------------------------------------------------------------- |
| **Executive Overview**       | Monitor the main student, performance, engagement, and at-risk KPIs  |
| **Performance Gaps**         | Compare performance across regions and subjects                      |
| **Engagement & Performance** | Explore the relationship between engagement and academic performance |
| **At-Risk Students**         | Identify and explore students meeting the project's at-risk criteria |

Interactive slicers for dimensions such as **Region, Subject, Gender, and Engagement Level** allow stakeholders to filter the dashboard and investigate specific student groups.

###  Key Analytical Outputs

The dashboard combines KPI cards, bar charts, column charts, scatter plots, matrices, tables, and interactive slicers to provide a complete view of student performance and engagement.

The analysis supports stakeholders in monitoring performance differences, understanding engagement patterns, and identifying students who meet the defined at-risk criteria.




## Dataset

40,000 synthetic student records containing:

- Academic performance
- App login activity
- Video completion rate
- Study hours
- Demographics
- Region
- Subject
- Engagement level

## Tech Stack

- Excel
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- SQL / SQLite
- Power BI
- DAX
- Git / GitHub

## Project Structure

...

## Methodology

Excel → Python → SQL → Power BI

## Dashboard

### Page 1 — Executive Overview
### Page 2 — Performance Gaps
### Page 3 — Engagement & Performance
### Page 4 — At-Risk Students

## Key Insights

- ...
- ...
- ...

## How to Run

1. Clone the repository.
2. Run the Python notebooks.
3. Review the SQL analysis.
4. Open `powerbi/student_dashboard.pbix`
   using Power BI Desktop.

## Project Report

See `docs/project_report.md`.# student-performance-analytics
