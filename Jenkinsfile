#!/usr/bin/env groovy

pipeline {

    agent {
        docker {
            image 'node:8'
        }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'npm install'
        }
       
        }
    }
}
