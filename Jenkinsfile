#!/usr/bin/env groovy
   
pipeline {
    agent {
       node {
       label 'Slave'
       }
    }
    stages {
        stage('Build') {
           node {
    checkout scm
    def dockerfile = 'Dockerfile'
    def customImage = docker.build("my-image:${env.BUILD_ID}", "-f ${dockerfile} ./dockerfiles") 
}
            steps {
        
            echo 'Buliding..'
            
        }
        }
       
        
    }

}

