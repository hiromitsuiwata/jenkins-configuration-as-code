#!/bin/bash

sudo docker compose down
sudo rm -rf /var/lib/docker/volumes/jenkins-configuration-as-code_jenkins_home
sudo docker volume rm jenkins-configuration-as-code_jenkins_home
sudo docker rmi jenkins-configuration-as-code-jenkins
sudo docker pull jenkins/jenkins:2.383-jdk11