#!/usr/bin/env groovy

pipeline {

    
        node {
        label 'Slave'
            def customImage = docker.build("test-image","./")
             customImage.inside {
        sh 'meteor --allow-superuser'
    
            }
    }
   
}
