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
                    // Set up Node.js environment (adjust the version as necessary)
                    def nodeVersion = '14.x'
                    sh "curl -sL https://deb.nodesource.com/setup_${nodeVersion} | sudo -E bash -"
                    sh 'sudo apt-get install -y nodejs'
                }
            }
        }

        stage('Install Dependencies') {
            steps {
                // Install project dependencies
                sh 'npm install'
            }
        }

        stage('Start Application') {
            steps {
                // Start the application (this could vary depending on your app)
                sh 'npm start &'
            }
        }

        stage('Run Tests') {
            steps {
                // Run the tests for your application
                sh 'npm test'
            }
        }
    }

    post {
        always {
            // Clean up any processes or resources if needed
            sh 'killall node' // This stops any background processes
        }
    }
}
