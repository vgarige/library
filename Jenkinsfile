pipeline{
    agent any
    stages{
        stage('Git Checkout'){
            steps{
                git credentialsId: 'git-hub-cred', url: 'https://github.com/vgarige/library.git'
            }
        } 
        stage('Building Project Master Mallesh ${BRANCH_NAME}.${TAG_NAME}'){
            steps{
                sh 'echo Project is building "${BRANCH_NAME}.${TAG_NAME}"'
            }
        } 

    }
}
