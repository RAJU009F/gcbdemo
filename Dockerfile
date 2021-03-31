# Import Python runtime and set up working directory
FROM python:3.7-slim
WORKDIR /app
ADD . /app

# Install any necessary dependencies
RUN pip3 install -r requirements.txt

# Open port 8080 for serving the webpage
EXPOSE 8080

# Run app.py when the container launches
CMD ["python3", "app.py"]