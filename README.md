# 🎓 Student Performance Dashboard

An end-to-end data analytics project that takes raw student performance data through **ETL (SQL)** and into an interactive **Power BI dashboard**, surfacing key insights on academic performance, attendance, and support factors.

## 📌 Project Overview

This project analyzes the [UCI Student Performance dataset](https://archive.ics.uci.edu/dataset/320/student+performance) (Math course) to understand what factors influence student outcomes — grades, pass/fail rates, study habits, family background, and more.

**Pipeline:**
```
Raw CSV (student-mat.csv)
        │
        ▼
SQL ETL & Analysis (studentperformance.sql)
        │
        ▼
Cleaned/Enriched Dataset (Student_ETL.csv)
        │
        ▼
Power BI Dashboard (student_etl.pbix)
```

## 📂 Repository Contents

| File | Description |
|---|---|
| `student-mat.csv` | Raw source dataset (395 students, Math course, 33 original attributes) |
| `studentperformance.sql` | SQL script for table creation, data verification, and exploratory analysis (totals, grouped aggregations, category breakdowns) |
| `Student_ETL.csv` | Transformed dataset with engineered fields ready for BI consumption |
| `student_etl.pbix` | Power BI dashboard file with KPIs, charts, and slicers |

## 🛠️ ETL & Engineered Fields

Starting from the raw dataset, the SQL ETL step adds the following derived columns used throughout the dashboard:

| Field | Description |
|---|---|
| `AverageGrade` | Mean of G1, G2, G3 (the three period grades) |
| `PerformanceCategory` | Grade banded into Poor / Average / Good / Excellent |
| `Result` | Pass / Fail based on final grade threshold |
| `AgeGroup` | Students grouped into age brackets |
| `AttendanceCategory` | Based on `absences` (e.g. Excellent / Good) |
| `StudyLevel` | Based on `studytime` (Low / Medium / High) |
| `FailureCategory` | No failure / Single failure / Multiple failure |
| `SupportCategory` | Combination of school support & family support (No Support / School Only / Family Only / School + Family) |
| `MotherEducation` / `FatherEducation` | `Medu`/`Fedu` mapped to readable education levels |

## 📊 SQL Analysis Performed

The `studentperformance.sql` script covers:
- Total student count
- Students by school
- Overall average grade
- Performance category distribution
- Pass vs. Fail breakdown
- Study level vs. average grade
- Attendance vs. average grade
- Failure category analysis (count + average grade)
- Gender-based analysis (count + average grade)
- School-level performance comparison

## 📈 Power BI Dashboard

### KPIs
- **Total Students** — `COUNTROWS(Student_ETL)`
- **Average Grade** — `AVERAGE(Student_ETL[averagegrade])`
- **Passed Students** — count where `Result = "pass"`
- **Failed Students** — count where `Result = "fail"`

### Visuals
- Pass vs. Fail breakdown
- Performance category distribution
- Grade trends by study level and attendance category
- Failure category vs. average grade
- Gender and school comparisons
- Interactive slicers for school, gender, support category, and performance category

### Theme
Custom **"Academic Blue"** color palette (deep blue / teal primary, green/red for pass-fail, amber for attention-needed metrics) for a clean, education-appropriate look.

## 🚀 How to Use

1. Clone this repository
2. Open `student_etl.pbix` in [Power BI Desktop](https://powerbi.microsoft.com/desktop/)
3. Refresh the data source if needed, pointing it to `Student_ETL.csv`
4. Explore the dashboard using the slicers to filter by school, gender, support level, etc.

To reproduce the SQL analysis:
1. Load `student-mat.csv` into your database (table schema included at the top of `studentperformance.sql`)
2. Run the ETL/transformation logic to generate the enriched fields
3. Run the analysis queries in `studentperformance.sql`

## 🧰 Tools Used
- **SQL** — data cleaning, transformation, and exploratory analysis
- **Power BI** — dashboard design and visualization
- **Dataset** — [UCI Machine Learning Repository: Student Performance Data Set](https://archive.ics.uci.edu/dataset/320/student+performance)

## 📎 Data Source Attribution
This project uses the Student Performance dataset created by P. Cortez, University of Minho, Portugal, available via the UCI Machine Learning Repository.

## 📝 License
Specify your license here (e.g., MIT).
