"# gcbdemo"
"# gcbdemo"

Steps manual deployment and run

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


Reference: https://dzone.com/articles/cicd-using-google-cloud-build-and-google-cloud-run

