"# gcbdemo"
"# gcbdemo"

This contains the steps for automatic and manual CICD pipeline
I- Steps auto build , deployment and run
    Setting Up Continuous Build
1. Log in to your google cloud account. https://console.cloud.google.com/

2. Create a project in GCP if not created already

3. Create a Trigger which connects to the code repo :  Goto Cloud build -> Triggers -> create Trigger/Connect to Repository ->
    select the reporisorty(Github) -> Authenticate to github -> then select the project required
Note: If GCP client  not installed, try to install and select which project will be used.

 Setting Up Continuous Deploy
  Note: Allow Run Admin and Cloud Run invoker roles  for the userid/serviceaccount

4. Create a service in Cloud Run: Goto Cloud Run -> create Service  -> give a service name -> next -->
 select "Continuous deploy new revisions from a source repository" --> SET UP WITH CLOUD BUILD -->
 select repository provider as git hub --> select repository --> Next --> select branch as ^master$ -> Build Type as Docker --> source location (docker file path) -->
  ingres (allow all traffic) --> Authenitcation (Allow unauthenticated invocations) -->  Create .

5. To Run the Pipeline (build and deploy) : goto to github repo and modify any file then commit.  this will trigger build and deploy.

6. Verify Build history:  goto cloud build --> history --> shows all builds

7. verify build steps and build log :  in the step 6 click on any build to se the logs

8. verify Cloud Run and Deployment: Goto Cloud Run and select the service  . it shows the metrics tab , copy the URL and test in browser.




II- Steps manual build deployment and run

1. Log in to your google cloud account. https://console.cloud.google.com/

2. Create a project in GCP if not created already

3. Activate cloud shell to run gcloud commands in step4 on cloud prompt

4. Execute all commands in scripts/manual_build.sh

5. Enable CLoud Run API and Cloud Build API

6. In cloud build : Allow permission to execute build and run commands

    a. got  to Cloud Build -> Settings

    b. Enable Cloud Run Admin Role & It will ask to enable Service Accounts also -> Allow that too

7.  Run below comand to run the pipeline :  to perform a build operation which will generate a docker image. It will also perform deploy operations to the cloud run

    $ gcloud builds submit --config cloudbuild.yaml

8.Verify the  build and deployment

 a.  To verify the build  goto Cloud Build history

 b.  To verify the image: Check storage created and your hosted image

 c.  To verify image in Cloud Registry: A newly pushed image with timestamp will be displayed in the list

 d.  To verify Cloud Run Service and deployment :  got to Cloud run and check the newly created service  you can notice the application URL on clicking the service.

9. Test the application : take the app URL and paste in the new tab in the browser


References: https://dzone.com/articles/cicd-using-google-cloud-build-and-google-cloud-run
https://dzone.com/articles/cicd-using-google-cloud-build-and-google-cloud-run-1


