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
          sh 'docker run -itd --name todosDeploy -p 4000:3000 todosimage bash'
             sh 'docker exec -itd todosDeploy sh -c "meteor --allow-superuser" bash'
          }
          }
   }
       }

