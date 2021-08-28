pipeline {
  environment {
    imagename = "mg00513682/library"
    registryCredential = '5cee079a-5199-4b99-9cbb-ab50a93698f7'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git credentialsId: 'git-hub-cred', url: 'https://github.com/vgarige/library.git'
      }
    }
  }
}
