pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                // Pull the code from your repository
                git 'https://github.com/kristiqna-andonova/10-exersic.git'
            }
        }

        stage('Set up Node.js') {
            steps {
                script {
                    // Ensure Node.js is installed and available
                    bat 'node -v || exit /b 1'
                }
            }
        }

        stage('Install Dependencies') {
            steps {
                // Install project dependencies
                bat 'npm install'
            }
        }

        stage('Start Application') {
            steps {
                // Start the application
                bat 'start /B npm start'
            }
        }

        stage('Run Tests') {
            steps {
                // Run the tests
                bat 'npm test'
            }
        }
    }

    post {
        always {
            // Clean up any running Node.js processes if necessary
            bat 'taskkill /IM node.exe /F || exit 0'
        }
    }
}
