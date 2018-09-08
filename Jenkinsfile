#!/usr/bin/env groovy
   

       node {
          stage ('Build'){
        checkout scm
    def dockerfile = 'Dockerfile'
    def customImage = docker.build("todosimage", "-f ${dockerfile} .") 
       }
          
          stage ('Deploy image'){
          sh 'docker run -itd --name todosDeploy -p 4000:3000 todosimage bash'
          }
       }

