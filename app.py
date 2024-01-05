from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "Hello, Flask!"

if __name__ == '__main__':
    # This block will only be executed if the script is run directly (not imported)
    # Additional code for running the Flask application
    app.run('0.0.0.0', 5000, debug=True)
