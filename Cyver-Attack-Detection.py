import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.svm import SVC
from sklearn.metrics import accuracy_score


data_set = pd.read_csv("/home/prometheus/GitHub-Projects/Cyber-Attack-Detection/Data-Set/Data-Injecttion-Dataset-03/data_injection_and_normal_events_dataset.csv")


print(data_set)

X = data.drop('target', axis=1)
y = data['target']

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=0)


model = SVC(kernel='linear')
model.fit(X_train, y_train)

y_pred = model.predict(X_test)


print(y_pred)

acc = accuracy_score(y_test, y_pred)
print("Accuracy: {:.2f}%".format(acc * 100))
