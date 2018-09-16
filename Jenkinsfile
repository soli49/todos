#!/usr/bin/env groovy
   

pipeline {
   agent any
   stages {
          stage('Build'){
            
             steps {
             sh 'docker build -f "Dockerfile" -t alaazidan/todosimage .'
             }
      
          }
      
      stage('Publish') {
      steps {
           sh 'docker login -u alaazidan -p stronghope'
           sh 'docker push alaazidan/todosimage'
        
        }
      }
          
          stage('Deploy image'){
             steps {
                sh 'docker rm -f todosDeploy || true'
          sh 'docker run -itd -p 4545:3000 --name todosDeploy todosimage bash -c "meteor --allow-superuser"'
           
          }
          }
   }
   post {
      always {
         cleanWs()
      }
   }
       }

