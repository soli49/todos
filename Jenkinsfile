#!/usr/bin/env groovy
   

pipeline {
   agent any
   stages {
          stage('Build'){
            
             steps {
             sh 'docker build -f "Dockerfile" -t todosimage .'
             }
      
          }
          
          stage('Deploy image'){
             steps {
                sh 'docker rm -f todosDeploy'
          sh 'docker run -itd --name todosDeploy todosimage bash'
             sh 'docker exec -itd -p 4000:3000 todosDeploy sh -c "meteor --allow-superuser" bash'
          }
          }
   }
       }

