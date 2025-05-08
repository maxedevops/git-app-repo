pipeline {
    agent any

    environment {
        // Define environment variables if needed
        PROJECT_NAME = 'git-app'
    }

    triggers {
        githubPush()
    }

    tools {
        // Define tools like JDK, Maven, NodeJS etc., if required
    }

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/maxedevops/git-app-repo.git', branch: 'main'
            }
        }

        stage('Build') {
            steps {
                sh './build.sh'
            }
        }

        stage('Test') {
            steps {
                sh './test.sh'
            }
        }
    }

    post {
        success {
            echo 'Build and tests completed successfully.'
        }
        failure {
            echo 'Build or tests failed. Check all scripts for issues.'
        }
    }

}
