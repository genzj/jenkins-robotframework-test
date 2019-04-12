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
                step([
                    $class: 'RobotPublisher',
                    outputPath: '.',
                    onlyCritical: true,
                    otherFiles: '',
                    passThreshold: 90.0,
                    unstableThreshold: 80.0
                ])
            }
        }
        stage("Deployment") {
            steps {
                echo "deployment..."
            }
        }
    }
}
