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
           sh 'docker login -u alaazidan -p stronghope'
           sh 'docker rmi -f alaazidan/todosimage || true'
           sh 'docker tag todosimage alaazidan/todosimage'
           sh 'docker push alaazidan/todosimage'
        
        }
      }
          
          stage('Deploy image'){
             steps {
                sh 'docker rm -f todosDeploy || true'
          sh 'docker run -itd -p 4545:3000 --name todosDeploy todosimage bash'
             sh 'docker exec -itd  todosDeploy sh -c "meteor --allow-superuser" bash'
          }
          }
   }
       }

