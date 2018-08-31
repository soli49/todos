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
                  label 'Slave'
            }
            steps {
                sh 'meteor --allow-superuser'
            echo 'Buliding...'
            }
        }
        
    }

}

