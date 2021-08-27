pipeline{
    agent any
    stages{
        stage('Git Checkout'){
            steps{
                git credentialsId: 'spring-git-credential', url: 'https://github.com/vgarige/'
            }
        } 
        stage('Building Project from branch'){
            steps{
                sh 'echo Project is building'
            }
        } 

    }
}
