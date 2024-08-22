#!/bin/bash

docker run -d -v -name kady-jenkins jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 --restart=on-failure jenkins/jenkins:lts-jdk17