# abuse_detection_model.py

import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report
import joblib

# Load data
df = pd.read_csv('data/amazon_escalation_sample.csv')

# Feature engineering
df['region_code'] = df['region'].astype('category').cat.codes
df['issue_code'] = df['escalation_type'].astype('category').cat.codes

features = ['sentiment_score', 'region_code', 'issue_code', 'ftds_failed']
X = df[features]
y = df['is_abusive']

# Split data
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Train model
clf = RandomForestClassifier(n_estimators=100, random_state=42)
clf.fit(X_train, y_train)

# Evaluate model
y_pred = clf.predict(X_test)
print(classification_report(y_test, y_pred))

# Save model
joblib.dump(clf, 'outputs/abuse_classifier.pkl')