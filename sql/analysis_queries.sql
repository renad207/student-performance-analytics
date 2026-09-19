-- Student Performance & Engagement Analytics
-- SQLite-compatible analysis queries

-- 1. Overall KPIs
SELECT COUNT(*) AS total_students,
       ROUND(AVG(Percentage),2) AS avg_percentage,
       ROUND(AVG(App_Login_Count),2) AS avg_login_count,
       ROUND(AVG(Video_Completion_Rate),2) AS avg_video_completion
FROM students;

-- 2. Engagement vs academic performance
SELECT Engagement_Level,
       COUNT(*) AS students,
       ROUND(AVG(Percentage),2) AS avg_percentage
FROM students
GROUP BY Engagement_Level
ORDER BY avg_percentage DESC;

-- 3. Region performance gaps
SELECT Region,
       COUNT(*) AS students,
       ROUND(AVG(Percentage),2) AS avg_percentage
FROM students
GROUP BY Region
ORDER BY avg_percentage DESC;

-- 4. Subject performance gaps
SELECT Subject,
       COUNT(*) AS students,
       ROUND(AVG(Percentage),2) AS avg_percentage
FROM students
GROUP BY Subject
ORDER BY avg_percentage DESC;

-- 5. At-risk students
WITH overall AS (
    SELECT AVG(Percentage) AS avg_pct FROM students
)
SELECT s.Student_ID, s.Region, s.Subject,
       s.App_Login_Count, s.Video_Completion_Rate,
       s.Percentage, s.Engagement_Level
FROM students s, overall o
WHERE s.Engagement_Level = 'Low'
  AND s.Percentage < o.avg_pct
ORDER BY s.Percentage ASC;

-- 6. Regional ranking using a window function
SELECT Region,
       ROUND(AVG(Percentage),2) AS avg_percentage,
       RANK() OVER (ORDER BY AVG(Percentage) DESC) AS performance_rank
FROM students
GROUP BY Region;

-- 7. Correlation-ready aggregation
SELECT Engagement_Level,
       ROUND(AVG(App_Login_Count),2) AS avg_logins,
       ROUND(AVG(Video_Completion_Rate),2) AS avg_video_completion,
       ROUND(AVG(Percentage),2) AS avg_percentage
FROM students
GROUP BY Engagement_Level;
