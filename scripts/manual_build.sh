## PART-I commands to clone application code
# Lists credentialed accounts
gcloud auth list

# List Cloud SDK properties for the currently active project
gcloud config list project

# Set PROJECT_ID environment variable
export PROJECT_ID=<project id displayed from previous command>

# Create a directory to keep our code
mkdir gcbdemo

# Change current directory to gcbdemo
cd gcbdemo

# Clone code from github repository
git clone https://github.com/KumarAbhishekShahi/gcbdemo.git

# Change current diectory to gcbdemo
cd gcbdemo

# List files under gcbdemo directory
ls -ltr



## PART-II commands to create, tag, publish, and run the docker image
# Create a docker image named "hello-app" using contents from current directory
docker build -t hello-app .

# Tag image "hello-app" to gcr namespace
docker tag hello-app gcr.io/$PROJECT_ID/hello-app

# Push image to Google Container Repository
docker push gcr.io/$PROJECT_ID/hello-app

# Run hello-app in detached mode and map container port to host port
docker run -p 8080:8080 -d gcr.io/$PROJECT_ID/hello-app

# Test application URL and it should return <h3>Hello World!</h3><h4>app deployment successfull with GCB and GCR<h4>
curl http://localhost:8080