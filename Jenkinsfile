#!groovy

pipeline {

    agent {
        label 'redis-cli'
    }

    stages {
        stage('Build') {
            steps {
                script {
                    sh 'redis-cli --version'
                    def command = $/eval "printf \"MULTI\nGET buildno\nINCR buildno\nEXEC\" | redis-cli -h 192.168.1.117"/$
                    def result = sh returnStdout: true, script: "$command"
                    echo "$result"
                    def splitResult = result.split()
                    def current = splitResult[3]
                    def next = splitResult[4]
                    echo "current buildno is $current"
                    echo "next buildno is $next"
                }
            }
        }
    }
}