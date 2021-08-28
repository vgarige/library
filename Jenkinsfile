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
        checkout([$class: 'GitSCM', branches: [[name: 'master']], extensions: [], userRemoteConfigs: [[credentialsId: 'git-hub-cred', url: 'https://github.com/vgarige/library']]])
      }
    }
    stage('Building Dcoker Image') {
      steps{
        scripts{
          dockerImage = docker.build registry
        }
      }
    }
  } 
}
