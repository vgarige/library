pipeline {
  environment {
    dockerImage = ''
    registry = 'mg00513682/library'
    registryCredential = '5cee079a-5199-4b99-9cbb-ab50a93698f7'
    }
  agent any
  stages{
    stage('Cloning Git Repo') {
      steps {
        git branch: 'app-release-v3.1.0.0', credentialsId: 'git-hub-cred', url: 'https://github.com/vgarige/library'
      }
    }
    stage('Building image') {
      steps{  
        script {
          dockerImage = docker.build registry
        }
      }  
    }
  }
}
