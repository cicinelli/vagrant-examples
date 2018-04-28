pipeline {
  agent any
  stages {
    stage('quality check') {
      agent any
      steps {
        echo 'Test'
      }
    }
    stage('unit test') {
      agent any
      steps {
        echo 'Test'
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