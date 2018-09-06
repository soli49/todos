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
                sh 'ssh root@176.9.103.123'
        sh 'docker build -f "Dockerfile" -t todostestmaster .'
            echo 'Buliding...'
            
        }
        }
       
        
    }

}

