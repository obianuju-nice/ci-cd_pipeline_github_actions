# ci-cd_pipeline_github_actions

This automates the building of the docker images and pushing the docker container to dockerhub, 
First locally build, tag and push the docker image to the docker Hub and then use the github_action workflow file to automate the process from end to end.

Step 1: Create a dockerfile

To build the docker image we need to create a dockerfile.
For this tutorial, I will create a very basic dockerfile and build the image using that.
Create Dockerfile & add the below code to it.

Step 2: Create index.html file in the same directory
Copy the index.html file into the Dockerfile

Step 3: Store the docker hub credentials

To push the docker image to docker hub we must first need to log into docker hub so, for that we need to store the docker hub’s credentials in the secrets.
Github repository - setting - secrets & variables - create new repository secret - and add your dockerhub username and paasword 
