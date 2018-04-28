pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'ls'
      }
    }
    stage('Unit Test') {
      agent any
      steps {
        echo 'Test'
      }
    }
    stage('Publish') {
      steps {
        echo 'Push to Artifactory'
      }
    }
    stage('Quality') {
      steps {
        echo 'Push SonarQube'
      }
    }
  }
}