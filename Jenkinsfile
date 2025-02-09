pipeline {
    agent any

    environment {
        NODE_VERSION = '16' // Change this to your desired Node.js version
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'master', url: 'https://github.com/kristiqna-andonova/10-exersic.git'
            }
        }

        stage('Set Up Node.js') {
            steps {
                script {
                    def nodeHome = tool name: "NodeJS ${NODE_VERSION}", type: "nodejs"
                    env.PATH = "${nodeHome}/bin:${env.PATH}"
                }
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Start Application') {
            steps {
                sh 'npm start &'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npm test'
            }
        }
    }

    post {
        success {
            echo 'Build completed successfully! 🎉'
        }
        failure {
            echo 'Build failed. Check the logs for details. ❌'
        }
    }
}
