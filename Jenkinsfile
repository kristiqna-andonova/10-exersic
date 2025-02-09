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
            sh 'curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash'
            sh 'export NVM_DIR="$HOME/.nvm" && . "$NVM_DIR/nvm.sh" && nvm install 16 && nvm use 16'
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
