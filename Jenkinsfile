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

    }
}
