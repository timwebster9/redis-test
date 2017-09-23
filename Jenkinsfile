#!groovy

pipeline {

    agent {
        label 'redis-cli'
    }

    stages {
        stage('Build') {
            steps {
                script {
                    def command = $/eval "printf \"MULTI\nGET buildno\nINCR buildno\nEXEC\" | redis-cli -h 192.168.1.117"/$
                    def result = sh returnStdout: true, script: "$command"
                    echo "$result"
                }
            }
        }
    }
}