from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/app')
def index():
    params = request.args
    name = params.get('name')
    return f'Hello {name}!'
    

if __name__ == '__main__':
    app.run(debug=True, port=8080, host='0.0.0.0')