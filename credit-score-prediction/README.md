# 💳 Credit Score Prediction – Machine Learning Project

📌 **Project Title:** Predicting Credit Risk Using Decision Trees and Random Forest  
🏫 **Course:** Predictive Business Analytics (QSO 570)  
🧠 **Focus:** Classification Models | Risk Analytics | Model Evaluation

---

## 📖 Project Overview

This project aims to predict the creditworthiness of individuals using supervised machine learning models. Both **CART (Classification and Regression Trees)** and **Random Forest** models were developed using demographic and financial features to determine the likelihood of loan default.

The project involved data preprocessing, model training, cross-validation, and performance evaluation using metrics such as accuracy and RMSE.

---

## 🛠 Tools & Technologies

- **Languages:** R, Python, SQL
- **R Packages:** `rpart`, `randomForest`, `caret`, `rpart.plot`, `ggplot2`
- **Python Libraries:** `pandas`, `sklearn`
- **Other Tools:** Excel (EDA), Power BI/Tableau (dashboard option)

---

## 🧩 Key Tasks Performed

### 🔹 Data Preprocessing
- Cleaned and formatted credit score dataset
- One-hot encoded categorical variables
- Split data into training and test sets

### 🔹 Model Building (R)
- Trained a CART model using `rpart` and visualized with `rpart.plot`
- Tuned tree complexity to avoid overfitting

### 🔹 Ensemble Modeling
- Trained a Random Forest classifier using `randomForest` (R)
- Also implemented Python version using `sklearn`
- Tuned hyperparameters using `caret` (R) and cross-validation

### 🔹 Model Evaluation
- Compared CART and RF using accuracy, confusion matrix, and RMSE
- Identified top predictors: income, credit history, age

---

## ✅ Outcomes

- 🌲 CART provided a simple, interpretable decision structure
- 🌳 Random Forest yielded better predictive accuracy via ensemble learning
- 📊 Highlighted the most influential risk factors for loan default

---

## 📂 Files Included

| File | Description |
|------|-------------|
| `credit_score_cart_model.R` | R script for CART model training and plotting |
| `credit_score_random_forest.R` | R script for Random Forest model |
| `credit_score_rf_python.py` | Python version of Random Forest |
| `credit_score_data.csv` | Cleaned dataset (mock data) |
| `sql_queries.sql` | Simulated SQL data extraction query |
| `model_evaluation_report.xlsx` | Model comparison metrics (not included here) |
| `project_summary.txt` | Project summary for quick reference |

---

## 📄 License

This project is part of my academic portfolio and is shared for educational demonstration only.  
Licensed under the [MIT License](https://opensource.org/licenses/MIT).
