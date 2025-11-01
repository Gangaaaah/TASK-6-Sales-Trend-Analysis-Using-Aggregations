# TASK-6-Sales-Trend-Analysis-Using-Aggregations

## 🎯 Objective
Analyze **monthly revenue** and **order volume** from the Olist e-commerce dataset using SQL aggregation functions.

## 🧰 Tools Used
- **SQLite** (via DB Browser for SQLite)
- Olist e-commerce SQL dataset

## 📊 Steps Performed
1. **Imported Dataset:** Loaded all relevant CSV tables from the Olist dataset into SQLite.
2. **Joined Tables:** Connected orders and order_items tables to calculate monthly revenue.
3. **Extracted Time Components:** Used `strftime('%m', order_date)` to extract the month from order dates.
4. **Aggregated Data:**
   - `SUM(price)` → calculated **total monthly revenue**.
   - `COUNT(DISTINCT order_id)` → calculated **order volume**.
5. **Grouped & Sorted:** Grouped results by year and month, sorted chronologically.
6. **Filtered Time Period:** Limited results to a specific date range (e.g., 2017–2018).
7. **Exported Results:** Saved the output query results as a CSV file (`sales_trend_results.csv`).


## 📁 Deliverables
- `sales_trend_analysis.sql` → SQL script file  
- `sales_trend_results.csv` → Exported results table

## 📈 Outcome
Learned how to:
- Apply **aggregation functions** (`SUM`, `COUNT`)  
- Perform **time-based grouping** using `strftime()`  
- Analyze **monthly sales trends** and **order volume**  
- Export SQL query results for reporting

---
