pipeline {
  environment {
    dockerImage = ''
    registry = "mg00513682/library:${env.BRANCH_NAME}"
    registryCredential = '5cee079a-5199-4b99-9cbb-ab50a93698f7'
    }
  agent any
  stages{
    stage('Cloning Git Repo') {
      steps {
        git credentialsId: 'git-hub-cred', url: 'https://github.com/vgarige/library.git'
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
