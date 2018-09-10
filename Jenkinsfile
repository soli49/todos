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
      steps {
        withDockerRegistry([ credentialsId: "docker-hub-credentials", url: "https://registry.hub.docker.com" ]) { 
           sh 'docker tag todosimage alaazidan/todosimage'
           sh 'docker push alaazidan/todosimage'
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

