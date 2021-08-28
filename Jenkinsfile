node {
    def app
    stages{	
    	stage('Clone repository'){
		steps {
			git credentialsId: 'git-hub-cred', url: 'https://github.com/vgarige/library.git'
		}
    	}
	
    	stage('Build image') {
		steps {
			app = docker.build("mg00513682/library")
		}
	
    	}
    	stage('Push image') {
		steps {
			docker.withRegistry('https://registry.hub.docker.com', '5cee079a-5199-4b99-9cbb-ab50a93698f7') {
			app.push("${env.BRANCH_NAME}")
			}
		}
       }
    }
}
