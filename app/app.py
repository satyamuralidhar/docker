
from typing import List, Dict

from flask import Flask

import mysql.connector

import json



app = Flask(__name__)





def employees() -> List[Dict]:

    config = {

        'user': 'root',

        'password': 'root',

        'host': 'db',

        'port': '3306',

        'database': 'calsoft'

    }

    connection = mysql.connector.connect(**config)

    cursor = connection.cursor()

    cursor.execute('SELECT * FROM employees')

    results = [{first_name: last_name} for (first_name, last_name) in cursor]

    cursor.close()

    connection.close()



    return results





@app.route('/')

def index() -> str:

    return json.dumps({'employees': employees()})





if __name__ == '__main__':

    app.run(host='0.0.0.0')