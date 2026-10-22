# Node.js Todo App — GitLab CI/CD with Docker and AWS EC2

## Project Overview

This is a hands-on junior DevOps portfolio project demonstrating how to automate the testing, building, publishing, and deployment of a Node.js Todo application.

The project uses GitLab CI/CD to run the pipeline, Docker to package the application, GitLab Container Registry to store the image, and AWS EC2 to run the deployed application.

## Architecture

```text
Developer
   |
   v
GitLab Repository
   |
   v
GitLab CI/CD Pipeline
   |
   +--> Test
   |
   +--> Build Docker Image
   |
   +--> Publish Image to GitLab Container Registry
   |
   +--> Deploy to AWS EC2
   |
   v
Running Todo Application
```

## Technologies Used

- **Git:** Version control
- **GitLab:** Source code hosting and CI/CD pipelines
- **GitLab Runner:** Executes pipeline jobs
- **Docker:** Builds and runs containers
- **GitLab Container Registry:** Stores Docker images
- **AWS EC2:** Hosts the deployed application
- **Linux:** Server administration and command-line operations

## CI/CD Pipeline Stages

### 1. Test

Installs the Node.js dependencies and runs the application tests.

### 2. Build

Builds a Docker image from the project's Dockerfile and saves it as a pipeline artifact.

### 3. Publish

Loads the saved Docker image and pushes it to GitLab Container Registry.

### 4. Deploy

Connects to the EC2 server over SSH and deploys the published Docker image.

## Verification

The GitLab pipeline completed successfully, with all four jobs passing:

- `test_job`
- `build_job`
- `publish_job`
- `deploy_job`

The deployed application was verified on EC2 with the following command:

```bash
curl -s -o /dev/null -w 'Production HTTP %{http_code}\n' \
  http://127.0.0.1:8002/todo
```

Verified output:

```text
Production HTTP 200
```

HTTP 200 confirms that the application endpoint responded successfully during verification.

## What I Learned

- How to define pipeline stages and jobs in `.gitlab-ci.yml`
- How GitLab CI/CD automates application testing
- How to build and tag Docker images
- How to pass an image between jobs using artifacts
- How to publish Docker images to a container registry
- How to deploy a containerized application to AWS EC2
- How to verify an application's HTTP response

## Project Links

- **GitHub Repository:** https://github.com/abdullahshahid-devops/node-todo-gitlab-cicd-aws
- **GitLab Repository:** https://gitlab.com/abdullahjazzy699/node-todo-cicd-aws

## Author

Abdullah Shahid — Junior DevOps Engineer Portfolio
