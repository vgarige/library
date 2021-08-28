pipeline {
  environment {
    dockerImage = ''
    registry = "mg00513682/library:$BUILD_NUMBER"
    registryCredential = '5cee079a-5199-4b99-9cbb-ab50a93698f7'
    }
  agent any
  stages{
    stage('Cloning Git Repo') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: 'app-release-v3.1.0.0']], extensions: [], userRemoteConfigs: [[credentialsId: 'git-hub-cred', url: 'https://github.com/vgarige/library']]])
      }
    }
    
    stage('Building Docker Image'){
      steps{
        script{
          docker.build registry
        }  
      }
    }
  } 
}
