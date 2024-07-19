!pip install pandas matplotlib seaborn

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns


df = pd.read_csv('path_to_your_csv_file.csv')

print("First few rows of the dataset:")
print(df.head())

print("\nSummary statistics of the dataset:")
print(df.describe())

print("\nInformation about the dataset:")
print(df.info())


df_cleaned = df.dropna()
print("\nDataset after dropping rows with missing values:")
print(df_cleaned.head())


df_filled = df.fillna(0)
print("\nDataset after filling missing values with 0:")
print(df_filled.head())

sns.histplot(df['column_name'])
plt.title('Histogram of column_name')
plt.xlabel('column_name')
plt.ylabel('Frequency')
plt.show()

sns.scatterplot(data=df, x='column_x', y='column_y')
plt.title('Scatter plot of column_x vs column_y')
plt.xlabel('column_x')
plt.ylabel('column_y')
plt.show()
