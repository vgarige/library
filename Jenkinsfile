pipeline{
    agent any
    stages{
        stage('Git Checkout'){
            steps{
                git credentialsId: 'git-hub-cred', url: 'https://github.com/vgarige/library.git'
            }
        } 
        stage('Building Project Master 2'){
            steps{
                sh 'echo Project is building'
            }
        } 

    }
}
