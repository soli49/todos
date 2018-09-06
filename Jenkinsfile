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
                
        sh 'docker build -f "Dockerfile" -t todostest .'
            echo 'Buliding...'
            
        }
        }
       
        
    }

}

