pipeline {
  agent any
  stages {
    stage('quality check') {
      parallel {
        stage('ms code analysis') {
          steps {
            echo 'v'
            input 'Discuss Testing'
          }
        }
        stage('sass lint') {
          steps {
            echo 'lint'
          }
        }
        stage('ts lint') {
          agent any
          steps {
            echo 'Test'
          }
        }
      }
    }
    stage('unit test') {
      parallel {
        stage('unit test') {
          agent any
          steps {
            echo 'Test'
          }
        }
        stage('jasmin') {
          steps {
            echo 'blah'
          }
        }
        stage('etc') {
          steps {
            input 'Proceed to build'
          }
        }
      }
    }
    stage('build') {
      steps {
        sh 'ls'
      }
    }
    stage('publish') {
      steps {
        echo 'push to Artifactory'
      }
    }
    stage('deploy cert') {
      steps {
        echo 'deploy DevLabs'
        echo 'validate deployment'
      }
    }
    stage('deploy uat') {
      steps {
        echo 'deploy azure'
        echo 'validate deployment'
      }
    }
    stage('deploy prod') {
      steps {
        echo 'deploy azure'
        echo 'validate deployment'
      }
    }
  }
}