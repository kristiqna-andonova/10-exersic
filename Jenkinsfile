pipeline {
    agent any
    
    tools {
        // Ensure Node.js 14 is installed and available in the Jenkins environment
        nodejs 'NodeJS 14'  // This assumes you have NodeJS 14 configured in Global Tool Configuration
    }

    stages {
        // Checkout the code from the repository
        stage('Checkout Code') {
            steps {
                checkout scm  // This checks out the code from the repository
            }
        }

        // Set up Node.js
        stage('Set Up Node.js') {
            steps {
                script {
                    // Node.js should already be set up in the tools block above, but we can add a step to verify.
                    bat 'node -v'  // Verify that Node.js is set up correctly
                    bat 'npm -v'   // Verify npm version
                }
            }
        }

        // Install dependencies using npm
        stage('Install Dependencies') {
            steps {
                script {
                    bat 'npm install'  // This installs the dependencies listed in your package.json
                }
            }
        }

        // Start the application (if needed)
        stage('Start Application') {
            steps {
                script {
                    // Start the app using npm
                    bat 'npm start'  // Assumes `npm start` will launch the app
                }
            }
        }

        // Run tests
        stage('Run Tests') {
            steps {
                script {
                    // Run your tests, assuming you are using npm test
                    bat 'npm test'  // This runs the tests defined in your package.json
                }
            }
        }
    }

    post {
        // After the pipeline is complete, we can add any notifications or cleanup tasks
        always {
            echo 'Cleaning up...'
            // Example: Clean up any processes or files if necessary
        }

        success {
            echo 'Build and tests passed successfully!'
        }

        failure {
            echo 'Build or tests failed.'
        }
    }
}
