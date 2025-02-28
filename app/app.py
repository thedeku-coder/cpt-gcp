from flask import Flask, render_template, request

app = Flask(__name__ , template_folder='templates')

@app.route('/')
def index():

    return render_template('index.html', message="helloword")



if __name__ == '__main__':
    app.run(debug=True, port=8080, host='0.0.0.0')