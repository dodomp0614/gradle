#!/bin/bash

## OpenJDK Install

sudo yum -y install java-1.8.0-openjdk-devel
java -version

## Install Gradle zip

wget https://services.gradle.org/distributions/gradle-7.4.1-bin.zip -P /tmp

mkdir /opt/gradle

unzip -d /opt/gradle gradle-7.4.1-bin.zip

ls /opt/gradle/gradle-7.4.1

## env

echo export PATH=$PATH:/opt/gradle/gradle-7.4.1/bin >> /etc/profile

source /etc/profile
 
gradle -v
