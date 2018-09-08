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
        withDockerRegistry([ credentialsId: "docker-hub-credentials", url: "https://registry.hub.docker.com" ]) { 
           sh 'docker push todosimage'
        }
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

