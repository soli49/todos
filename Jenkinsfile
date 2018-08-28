#!/usr/bin/env groovy

pipeline {

    agent {
        dockerfile true
        label 'Slave'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh "meteor --allow-superuser"
        }
       
        }
    }
}
