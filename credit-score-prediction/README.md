# Credit Score Prediction – Machine Learning Project

📌 **Project Title**: Predicting Credit Risk Using Decision Trees and Random Forest  
🏫 **Course**: Predictive Business Analytics – QSO 570  
🧠 **Focus**: Classification Models | Risk Analytics | Model Evaluation


## 📖 Project Overview

In this academic project, I built and compared **CART (Classification and Regression Trees)** and **Random Forest** models to predict the **creditworthiness** of individuals based on their demographic and financial features.

The project involved data preprocessing, model training using the `rpart` and `randomForest` packages in R, and evaluating performance using accuracy and RMSE.



## 🛠 Tools & Technologies

- **Language**: R  
- **Libraries**: `rpart`, `randomForest`, `caret`, `rpart.plot`, `ggplot2`  
- **Others**: Excel (for initial exploration)


## 🧩 Key Tasks Performed

1. **Data Preprocessing**
   - Cleaned and formatted credit score data
   - Handled categorical variables using one-hot encoding
   - Split data into training and testing sets

2. **Model Building**
   - Built a **CART model** using `rpart`
   - Tuned tree complexity (cp value) to reduce overfitting
   - Visualized decision tree using `rpart.plot`

3. **Random Forest Modeling**
   - Trained a **Random Forest** classifier using `randomForest` package
   - Used cross-validation via `caret` to select optimal parameters

4. **Model Evaluation**
   - Compared model performance using **accuracy**, **confusion matrix**, and **RMSE**
   - Interpreted variable importance to understand key drivers of credit risk



## ✅ Outcomes

- 🌲 CART model provided a clear, interpretable flow for credit decisioning  
- 🌳 Random Forest improved predictive accuracy through ensemble learning  
- 📊 Identified top predictors such as income level, credit history, and age group



## 📂 Files in This Folder

| File | Description |
|------|-------------|
| `credit_score_cart_model.R` | R script for building and visualizing CART model |
| `credit_score_random_forest.R` | R script for training the Random Forest classifier |
| `model_evaluation_report.xlsx` | Accuracy, confusion matrix, and RMSE comparison |
| `credit_score_data.csv` | Cleaned dataset used for modeling (mock data) |
| `project_summary.pdf` | Final project write-up and insights |



## 📄 License

This project is part of my academic portfolio and is shared for demonstration purposes only.  
Licensed under the [MIT License](https://opensource.org/licenses/MIT).
