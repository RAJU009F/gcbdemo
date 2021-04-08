from flask import Flask
import os
import socket

app = Flask(__name__)

@app.route("/")
def hello():
    html = "<h3>Hello, World!</h3><br><h4>app deployment successfull with GCB and GCR test in demo to Ibrahim </h4>"
    return html

if __name__ == "__main__":
  app.run(host='0.0.0.0', port=8080)
