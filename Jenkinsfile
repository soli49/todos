#!/usr/bin/env groovy
   
pipeline {
    agent {
    label 'Slave'
    }
    stages {
        stage('Build') {
            agent {dockerfile true}
            steps {
                sh 'meteor --allow-superuser'
            echo 'Buliding...'
            }
        }
        
    }

}

