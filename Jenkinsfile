pipeline {
  environment {
    registry = "mg00513682/library"
    registryCredential = '5cee079a-5199-4b99-9cbb-ab50a93698f7'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: 'app-release-v3.1.0.0']], extensions: [], userRemoteConfigs: [[credentialsId: 'git-hub-cred', url: 'https://github.com/vgarige/library']]])
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BRANCH_NAME"
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script{
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$BRANCH_NAME"
      }
    }
  }
}
