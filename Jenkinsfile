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
    stage('Unit Test') {
      parallel {
        stage('Unit Test') {
          agent {
            node {
              label 'nodejs'
            }

          }
          steps {
            echo 'Test'
          }
        }
        stage('E2E Test') {
          steps {
            echo 'Execute E2E'
          }
        }
      }
    }
  }
}