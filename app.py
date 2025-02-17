from flask import Flask
from version import VERSION  # Import version

app = Flask(__name__)

@app.route('/')
def hello():
    return f"Hello, Welcome to Git_CI! (Version: {VERSION})"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
