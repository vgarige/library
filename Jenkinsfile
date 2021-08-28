pipeline {
  environment {
    dockerImage =''
    registry = 'mg00513682/library'
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
        script{
          dockerImage = docker.build registry
        }
      }
    }
  } 
}
