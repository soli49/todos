#!/usr/bin/env groovy

pipeline {

    agent {
        node {
        label 'Slave'
            def customImage = docker.build("test-image","./todos/")
             customImage.inside {
        sh 'meteor --allow-superuser'
    }
            }
    }
    stages {
        stage('Build') {
      
            steps {
                echo 'Building...'
        }
       
        }
    }
}
