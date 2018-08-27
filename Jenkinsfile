#!/usr/bin/env groovy

pipeline {

    agent {
        docker 'node:8'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'meteor npm install'
        }
       
        }
    }
}
