pipeline {
    agent any

    environment {
        NODE_VERSION = '14'
    }

    stages {
        stage('Checkout Code') {
            steps {
                // Checkout the code from the repository
                checkout scm
            }
        }

        stage('Set up Node.js') {
            steps {
                // Set up Node.js 14
                script {
                    sh 'curl -sL https://deb.nodesource.com/setup_14.x | bash -'
                    sh 'sudo apt-get install -y nodejs'
                }
            }
        }

        stage('Install Dependencies') {
            steps {
                // Install project dependencies
                script {
                    sh 'npm install'
                }
            }
        }

        stage('Start Application') {
            steps {
                // Start the application (you can change this as per your app's start command)
                script {
                    sh 'npm start &'
                }
            }
        }

        stage('Run Tests') {
            steps {
                // Run tests
                script {
                    sh 'npm test'
                }
            }
        }
    }

    post {
        always {
            // Clean up after the build, if necessary
            echo 'Cleaning up...'
        }

        success {
            echo 'Build and tests succeeded!'
        }

        failure {
            echo 'Build or tests failed.'
        }
    }
}
