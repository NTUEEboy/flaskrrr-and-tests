# flaskrrr-and-tests
Web login system and API/UI tests
## QuickStart
No one likes looooong README, so let's begin:
### Version
python 3.9.0  
Flask 1.1.2  
Robot Framework 3.2.2 (Python 3.9.0 on darwin)  
### Setup
```
git clone https://github.com/NTUEEboy/flaskrrr-and-tests.git
```
Just follow the tutorial of [Flask website](https://flask.palletsprojects.com/en/1.1.x/) to creat a virtual env. under the project
```
$ python -m venv venv
```
Activate the environment
```
$ . venv/bin/activate
```
Install required packages: Flask and [Robot Framework](https://robotframework.org/).
```
$ pip install -r requirements.txt
```
Make sure you have the same chrome version with [ChromeDriver](https://chromedriver.chromium.org/)(88) in this [repository](https://github.com/NTUEEboy/flaskrrr-and-tests/blob/master/chromedriver_binary/chromedriver). 
### How to run
Check Internet is connected in your side because Bootstrap and jQuert CND are used.  
The test scripts are in the [tests](https://github.com/NTUEEboy/flaskrrr-and-tests/tree/master/loginApp/tests) direectory.  
Start the localhost web server
```
$ export FLASK_APP=loginApp/main.py
$ flask run
```
The api test for the login function
```
$ python -m unittest -v tests/test_basic.py
```
or if you have `pytest` installed
```
$ pytest
```
The UI test in different cases
```
$ robot tests/ui_tests/login.robot
```
