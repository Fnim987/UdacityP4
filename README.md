[![CircleCI](https://circleci.com/gh/Fnim987/UdacityP4.svg?style=svg)](https://circleci.com/gh/Fnim987/UdacityP4)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

---

## Overview

### Explaination of the files

* app.py: code for the app
* Dockerfile: instructions how to build the Docker container
* make_predictions.sh: script to call the prediction function of the app
* requirements.txt: list of dependecies that needs to be installed
* run_docker.sh: script for building and running the Docker-container locally
* run_kubernetes.sh: script for deploying the Docker-container to kubernetes
* upload_docker.sh: script for uploading the Docker to Dockerhub
* Folder: output_txt_files: logging-files

## Setup the Environment

* Create a virtualenvironment with Python 
  - run `make setup` to setup the environment
  - run `make activate` to activate the environment

* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  in the venv run `python3 app.py`
2. Run in Docker:   run the script `./run_docker.sh`
3. Run in Kubernetes:  run the script `./run_kubernetes.sh`
4. to check functionality run `./make_predictions.sh` after 1., 2., 3.

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
