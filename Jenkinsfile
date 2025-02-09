pipeline {
    agent any
    stages {
        stage('Install Dependencies') {
            steps {
                script {
                    // Use npm to install dependencies
                    sh 'npm install'
                }
            }
        }
        stage('Start Application') {
            steps {
                script {
                    // Start your application (if needed)
                    sh 'npm start'
                }
            }
        }
        stage('Run Tests') {
            steps {
                script {
                    // Run tests with npm
                    sh 'npm test'
                }
            }
        }
    }
}
