#!/usr/bin/env groovy
   
pipeline {
    agent {
       node {
        checkout scm
    def dockerfile = 'Dockerfile'
    def customImage = docker.build("my-image:${env.BUILD_ID}", "-f ${dockerfile} ./dockerfiles") 
       }
    }
    stages {
        stage('Build') {
        
            steps {
        
            echo 'Buliding..'
            
        }
        }
       
        
    }

}

