#!/usr/bin/env groovy
   

pipeline {
   agent {label Master}
   stages {
          stage ('Build'){
            
        checkout scm
    def dockerfile = 'Dockerfile'
    def customImage = docker.build("todosimage", "-f ${dockerfile} .") 
      
          }
          
          stage ('Deploy image'){
             steps {
          sh 'docker run -itd --name todosDeploy -p 4000:3000 todosimage bash'
             sh 'docker exec -itd todosDeploy sh -c "meteor --allow-superuser" bash'
          }
          }
   }
       }

