#!/usr/bin/env groovy
   
pipeline {
    agent {
       node {
    label 'Slave'
       }
    }
    stages {
        stage('Build') {
            agent {
               dockerfile true
            }
            steps {
                sh 'meteor --allow-superuser'
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

