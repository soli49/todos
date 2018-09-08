#!/usr/bin/env groovy
   

pipeline {
   agent any
   stages {
          stage('Build'){
            
             steps {
             sh 'docker build -f "Dockerfile" -t todosimage .'
             }
      
          }
      
      stage('Publish') {
      when {
        branch 'master'
      }
      steps {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
           sh 'docker push todosimage'
        }
      }
          
          stage('Deploy image'){
             steps {
                sh 'docker rm -f todosDeploy'
          sh 'docker run -itd -p 4545:3000 --name todosDeploy todosimage bash'
             sh 'docker exec -itd  todosDeploy sh -c "meteor --allow-superuser" bash'
          }
          }
   }
       }

