# False Data Injection Detection(FDIA) Using Support Vector Machine(SVM):

## Introduction:
In this repository, you will find a model that can help you detect FDIA in an EV station.

It is simple to use this model, and you only need to load it to see how it works. 

This is the implementation of a research paper, which you can find by [clicking here](/Research Paper/Cyber-Attack_on_P2P_Energy_Transaction_Between_Connected_Electric_Vehicles_A_False_Data_Injection_Detection_Based_Machine_Learning_Model-1.pdf)

## Running Locally:
If you already have Jupyter Notebook installed, great; otherwise, proceed with the instructions below.

1. Clone the repo or fork it.
2. Open your Jupyter notebook and open your repo from the Jupyter notebook.
3. The name of the book is "Cyber Detect."
4. Run it and start reading.

The process and model code 

If you don't have Jupyter Notebook on your system, then follow this guide by [clicking here](https://jupyter.org/install) or you can install [Anaconda](https://www.anaconda.com/).

## Loading Model: 
### Import:
```python
import pickle
import pandas as pd
```
### Import Mode:
```python
with open('/Model/svm_model_linear_kernel_FDIA.pkl', 'rb') as file:
    svm_model = pickle.load(file)
```
### Load New Data:
```python
new_data = pd.read_csv('new_data.csv')
```
### Get Features:
```python
new_X = new_data[features]
```

### Start Predication:
```python
y_pred = svm_model_linear_kernel_FDIA.predict(new_X)
```

## Find Data:
Data was found on Kaggle and has been modified using a technique called "future engineering." You can view the original data by [clicking here](/station_data_dataverse.csv), and all of the modifications can also be found in the repo.

# Author:
This model and code were implemented by [Abdul Rafay](https://future-insight.blog/). If you want to contact me, please [email](mailto:99marafay@gmail.com). 


