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
      parallel {
        stage('...') {
          steps {
            input 'Proceed to publish'
          }
        }
        stage('compilers') {
          steps {
            echo 'msbuild'
            echo 'javac'
            echo 'maven'
            echo 'cobol'

          }
        }
        stage('transpilers') {
          steps {
            echo 'ng'
            echo 'webpack'
            echo 'rollup'
            echo 'bazel'
          }
        }
      }
    }
    stage('publish') {
      parallel {
        stage('...') {
          steps {
            input 'Proceed to deploy'
          }
        }
        stage('docker registry') {
          steps {
            echo 'docker.fnis.com'
            echo 'Azure Container Registry'
            echo 'Amazon Elastic Container Registry'
          }
        }
        stage('package repos') {
          steps {
            echo 'npm'
            echo 'maven'
            echo 'nuget'
          }
        }
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