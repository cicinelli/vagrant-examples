pipeline {
  agent any
  stages {
    stage('build') {
      parallel {
        stage('build') {
          steps {
            sh 'ls'
          }
        }
        stage('Test') {
          steps {
            waitUntil() {
              validateDeclarativePipeline 'prod'
            }

            input(message: 'Go Ahead', id: 'go1')
          }
        }
      }
    }
  }
}