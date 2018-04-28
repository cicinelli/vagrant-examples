pipeline {
  agent any
  stages {
    stage('quality check') {
      parallel {
        stage('linters') {
          steps {
            echo 'ts lint'
            echo 'sass lint'
            echo 'jenkins pipeline lint'
            echo 'ansible lint'
            echo 'etc.'
          }
        }
        stage('code analysis') {
          steps {
            echo 'Microsoft Code Analysis'
          }
        }
        stage('...') {
          agent any
          steps {
            echo 'Test'
            input 'Discuss Testing'
          }
        }
      }
    }
    stage('unit test') {
      parallel {
        stage('unit test') {
          agent any
          steps {
            echo 'nunit'
            echo 'junit'
            echo 'jasmin'
            echo 'karma'
            echo 'jest'
            echo 'pyunit'
          }
        }
        stage('code coverage reporting') {
          steps {
            echo 'unit test tool dependent'
          }
        }
        stage('...') {
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