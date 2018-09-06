#!/usr/bin/env groovy
   
pipeline {
    agent {
       node {
       label 'Slave'
       }
    }
    stages {
        stage('Build') {
          
            steps {
                
        sh 'docker build -f "Dockerfile" -t todos/terraform:latest .'
            echo 'Buliding...'
            
        }
        }
       stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t jenkinstodos .'
      }
    }
        
    }

}

