import json
import unittest
from main import app

import random
import string


class TestLogin(unittest.TestCase):

    def setUp(self):
        app.testing = True
        self.app = app.test_client()

    def test_empty(self):
        expected_result = 'empty'

        # Request to login api and get the response data
        rv = self.app.post('/login', json={
            "userInput": "", "pwdInput": ""})

        # Parse data as JSON
        json_data = rv.get_json()

        # See if match the expected result
        self.assertEqual(json_data['status'], expected_result)

    def test_mismatch(self):
        expected_result = 'error'

        # To generate the username and password randomly
        rnd_username = 'admin'
        rnd_password = 'admin'

        while (rnd_username == 'admin' and rnd_password == 'admin'):
            rnd_username = get_random_string()
            rnd_password = get_random_string()

        # Request to login api and get the response data
        rv = self.app.post('/login', json={
            "userInput": rnd_username, "pwdInput": rnd_password})

        # Parse data as JSON
        json_data = rv.get_json()

        # See if match the expected result
        self.assertEqual(json_data['status'], expected_result)

    def test_match(self):
        expected_result = 'success'

        # Valid username and password for login
        username = 'admin'
        password = 'admin'

        # Request to login api and get the response data
        rv = self.app.post('/login', json={
            "userInput": username, "pwdInput": password})

        # Parse data as JSON
        json_data = rv.get_json()

        # See if match the expected result
        self.assertEqual(json_data['status'], expected_result)


def get_random_string():
    length = random.randint(1, 10)
    letters_and_digits = string.ascii_letters + string.digits
    result_str = ''.join(random.choice(letters_and_digits)
                         for i in range(length))
    return result_str


if __name__ == '__main__':
    unittest.main()
