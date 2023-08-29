# Create a flask app with just one route that return a html page name index.html and another one that return a json 

from flask import Flask, render_template, jsonify

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/api/chat')
def chat_api():
    return jsonify({'name':'John', 'age': 22})

if __name__ == '__main__':
    app.run(debug=True)