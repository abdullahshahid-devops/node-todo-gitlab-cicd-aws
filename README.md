# Node.js Todo App — GitLab CI/CD with Docker and AWS EC2

## Project Overview

This project demonstrates a beginner-level DevOps workflow using GitLab CI/CD, Docker, GitLab Container Registry, and AWS EC2.

The pipeline automates application testing, Docker image building, image publishing, and deployment.

## Architecture

Developer → GitLab Repository → Test → Build → Publish → Deploy → AWS EC2

## Technologies Used

- **Git and GitLab** — Version control and source code hosting
- **GitLab CI/CD** — Automated pipeline execution
- **Docker** — Application containerization
- **GitLab Container Registry** — Docker image storage
- **AWS EC2** — Cloud server for application deployment
- **Linux** — Server administration and command-line operations

## Pipeline Stages

1. **Test:** Install dependencies and run application tests.
2. **Build:** Build the Docker image and save it as an artifact.
3. **Publish:** Load the image and push it to GitLab Container Registry.
4. **Deploy:** Deploy the application to the EC2 server.

## Verification

The completed GitLab pipeline passed all four jobs:

- `test_job`
- `build_job`
- `publish_job`
- `deploy_job`

The deployed application was verified from the EC2 terminal using:

```bash
curl -s -o /dev/null -w 'Production HTTP %{http_code}\n' \
  http://127.0.0.1:8002/todo
```

Expected result:

```text
Production HTTP 200
```

## What I Learned

- How to define CI/CD stages and jobs in `.gitlab-ci.yml`
- How GitLab Runner executes pipeline jobs
- How to build and tag Docker images
- How to pass a Docker image between pipeline jobs using artifacts
- How to publish an image to a container registry
- How to deploy a containerized application to AWS EC2
- How to verify an application's HTTP response

## Original GitLab Project

[View the GitLab repository](https://gitlab.com/abdullahjazzy699/node-todo-cicd-aws)

## Author

Abdullah Shahid — Junior DevOps Engineer Portfolio
