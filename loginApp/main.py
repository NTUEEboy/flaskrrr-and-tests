from flask import Flask, request, render_template, jsonify
import json

app = Flask(__name__)


@app.route('/')
def index():
    return render_template('login.html')


@app.route('/login', methods=['POST'])
def login_check():
    # Preset valid username and password
    user = "admin"
    pwd = "admin"

    # Request data form client
    data = request.get_json()

    # Return login status and message
    if(user == data["userInput"] and pwd == data["pwdInput"]):  # Match
        return jsonify({"status": "success", "message": "success login"})
    elif(data["userInput"] == "" or data["pwdInput"] == ""):  # Empty
        return jsonify({"status": "empty", "message": "username or(and) password is(are) empty"})
    else:  # Mismatch
        return jsonify({"status": "error", "message": "username or(and) password is(are) incorrect"})


if __name__ == '__main__':
    app.debug = True
    app.run()
