pipeline { 

  environment { 

      registry = "mg00513682/library" 

      registryCredential = '5cee079a-5199-4b99-9cbb-ab50a93698f7' 

      dockerImage = '' 

  }

  agent any 

  stages { 

      stage('Cloning our Git') { 

          steps { 

            git credentialsId: 'git-hub-cred', url: 'https://github.com/vgarige/library.git'

          }

      } 

      stage('Building Image for SRE-Release-v2-1.0.2') { 

          steps { 

              script { 

                  dockerImage = docker.build registry + ":${BRANCH_NAME}" 

              }

          } 

      }

      stage('Deploy our image') { 

          steps { 

              script { 

                  docker.withRegistry( '', registryCredential ) { 

                      dockerImage.push() 

                  }

              } 

          }

      } 

      stage('Cleaning up') { 

          steps { 

              sh "docker rmi $registry:${BRANCH_NAME}" 

          }

      } 

  }

}
