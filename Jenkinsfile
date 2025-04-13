pipeline {
    agent any

    environment {
        DOTNET_CLI_HOME = "C:\\Program Files\\dotnet"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/swapnilbp31/smswebapp.git']]])
            }
        }

        stage('Build') {
            steps {
            script {
                // Restoring dependencies
                sh "dotnet restore"

                // Building the application
                sh "dotnet build --configuration Release"
            }
            }
        }

        stage('Test') {
            steps {
            script {
                // Running tests
                sh "dotnet test --no-restore --configuration Release"
            }
            }
        }
        stage('create docker image') {
      steps {
        sh 'docker build -t swapnilbp/dotnet:latest .'
      }
    }
    stage('push docker image to dockerhub') {
      steps {
        
        withDockerRegistry(credentialsId: 'Docker_hub', url: 'https://index.docker.io/v1/') {
            
                sh 'docker push swapnilbp/dotnet:latest'
            
        }
      }
   } 

    }
}
