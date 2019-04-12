pipeline {
    agent any
    stages {
        stage("Compile") {
            steps {
                echo "compile..."
            }
        }
        stage("Auto test") {
            steps {
                echo "unit test..."
                bat label: '', script: 'F:\\venvs\\robotframework-py3\\Scripts\\robot.exe test'
            }
        }
        stage("Deployment") {
            steps {
                echo "deployment..."
            }
        }
    }
}
