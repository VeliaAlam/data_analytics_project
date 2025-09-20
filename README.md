# 🌍 Global Wage Gap Analytics Project

## 📖 Project Overview
This project analyzes the **global gender wage gap**, combining multiple datasets to explore how wage disparities evolve over time and across countries.  
It leverages **SQL** for data cleaning and enrichment, **Python** for exploratory data analysis (EDA) and calculations, and **Tableau** for creating an interactive dashboard.

The final result is an insightful visualization tool that helps stakeholders understand:
- Which countries have the **highest and lowest gender wage gaps**.
- How **population size** and **HDI (Human Development Index)** influence wage disparities.
- The evolution of wages by **gender** and **country** over time.

---

## 📂 Project Structure
data_analytics_project/
│
├── data/ # Final cleaned datasets
│ ├── wage_gap_enriched.csv # Wage gap data enriched with population and HDI
│ └── weighted_avg_by_gender.csv # Salaries by gender (weighted averages)
│
├── notebooks/ # Jupyter notebooks
│ ├── 01_data_prep/ # Data preparation and cleaning
│ │ ├── EDA_HDI_1.ipynb # Analysis of top and bottom 5 countries
│ │ ├── EDA_HDI_2.ipynb # Analysis of additional countries
│ │ ├── Exchange_Rate_Worldwide.ipynb # Currency conversion handling
│ │ ├── Population.ipynb # Population data preparation
│ │ ├── Script_ILO_data.ipynb # Initial wage gap data exploration
│ │ └── Script_ILO_data_2.ipynb # Extended wage gap exploration
│ │
│ └── 02_analysis/ # Final analyses and EDA
│ ├── Mega_df.ipynb # Aggregated data across all countries
│ └── Script_ILO_data.ipynb # Advanced analysis, EDA, and predictions
│
├── slides/ # Presentation of the project
│ └── Gender Gap Global_Velia Alaminos.pdf
│
├── sql/ # SQL scripts
│ ├── data_analytics_project_agg_gender_metrics.sql
│ ├── data_analytics_project_clean_data.sql
│ ├── data_analytics_project_country_continent_mapping.sql
│ ├── data_analytics_project_country_mapping.sql
│ ├── data_analytics_project_country_timeseries.sql
│ ├── data_analytics_project_dashboard_kpis.sql
│ ├── data_analytics_project_merged_data.sql
│ ├── data_analytics_project_participation_pivot.sql
│ ├── data_analytics_project_population.sql
│ ├── data_analytics_project_routines.sql
│ ├── data_analytics_project_sector_age_gap.sql
│ ├── data_analytics_project_sector_education_gap.sql
│ └── data_analytics_project_wage_gap_enriched.sql
│
├── scr/ # Python-generated CSVs from scripts
│ ├── agg_gender_metrics.csv
│ ├── clean_data.csv
│ ├── country_continent.csv
│ ├── participation_pivot.csv
│ ├── sector_age_gap.csv
│ ├── sector_education_gap.csv
│ ├── wage_gap_pct.csv
│ └── wages_by_gender.csv
│
├── tableau/ # Tableau workbook and exports
│ └── WW_Gender_Gap.twd
│
├── .gitignore # Ignore rules
├── requirements.txt # Python dependencies
└── README.md # Project documentation

---

## 🗂 Datasets

### **1. Wage Gap Enriched (`wage_gap_enriched.csv`)**
- **Description:** Contains global wage gap data merged with population and HDI.
- **Columns:**
  - `country`
  - `continent`
  - `year`
  - `wage_gap_pct` (gender wage gap percentage)
  - `population`
  - `hdi`

### **2. Weighted Average by Gender (`weighted_avg_by_gender.csv`)**
- **Description:** Summarizes average hourly earnings by gender.
- **Columns:**
  - `country`
  - `year`
  - `gender` (M/F)
  - `weighted_avg_hourly_earnings_usd`
  - `total_employment`

---

## ⚙️ Tools and Technologies

| Tool/Technology    | Purpose |
|--------------------|---------|
| **Python (pandas, matplotlib)** | Data analysis and EDA |
| **MySQL**          | Data storage and cleaning |
| **Tableau Public** | Interactive data visualization |
| **Jupyter Notebook** | Documentation and analysis |
| **GitHub**         | Version control and collaboration |

---

## 💻 Installation Instructions

1. Clone this repository:
   ```bash
   git clone https://github.com/VeliaAlam/data_analytics_project.git
   cd data_analytics_project
    
2. Create and activate a virtual environment:
python -m venv .venv
source .venv/bin/activate     # Mac/Linux
.venv\Scripts\activate        # Windows

3. Install dependencies:
pip install -r requirements.txt

4. pip install -r requirements.txt
Run the SQL files in the /sql folder in the following order:
data_analytics_project_clean_data.sql
data_analytics_project_country_mapping.sql
data_analytics_project_population.sql
data_analytics_project_wage_gap_enriched.sql


## 📊 Tableau Dashboard

The interactive dashboard provides multiple insights:
World Map: Visual representation of the wage gap by country and year.
Top & Bottom 5 Countries: Identify countries with the smallest and largest gaps.
Temporal Evolution: Track how wage gaps evolve over time.
Population & HDI Correlation: Understand how development impacts equality.
Gender Salaries: Compare men vs. women salaries over time.

Tableau Dashboard: 
https://public.tableau.com/app/profile/velia.alaminos/viz/WageGapGlobal/WageGapGlobal

## 📑 Deliverables

This project includes:

1. GitHub repository with:
    SQL scripts
    Python scripts
    Final cleaned datasets
    Tableau workbook

2. Presentation Slides
    View Presentation: https://www.canva.com/design/DAGzVTurmX4/avY5GCDlULL0YFkX7lrfIg/edit

3. Interactive Tableau dashboard.

## 🚀 Workflow

1. Data Collection
    Import wage gap, HDI, and population data.
    Standardize country names using mapping tables.

2. SQL Cleaning & Transformation
    Merge datasets into a single enriched table: wage_gap_enriched.
    Filter inconsistent or missing values.

3. Python Analysis
    Perform exploratory data analysis in Jupyter Notebooks.
    Generate CSVs for Tableau visualization.

4. Tableau Visualization
    Build interactive dashboards for exploration and storytelling.

## 📚 Key Insights
Countries with higher HDI often exhibit lower wage gaps, but there are regional outliers.
Population size has minimal direct correlation with wage inequality.
Gender disparities remain significant in certain countries despite economic growth.

## 👩‍💻 Author
Velia Alaminos

    GitHub: https://github.com/VeliaAlam
    
    LinkedIn: https://www.linkedin.com/in/velia-alaminos/

## 📜 License

This project is for educational purposes only and is distributed under the MIT License.

---

