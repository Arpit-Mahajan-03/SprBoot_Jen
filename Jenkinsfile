pipeline {
  agent any
  tools {
    jdk 'Java21'
    maven 'Maven'
  }
  stages {
    stage('Checkout Code') {
      steps {
        echo 'Pulling from Github'
        git branch: 'main', credentialsId: 'github.creds', url: 'https://github.com/Arpit-Mahajan-03/SprBoot_Jen.git'
      }
    }
    stage('Build Project') {
      steps {
        echo 'Building Spring Boot project'
        bat 'mvn clean package -DskipTests'
      }
    }
    stage('Build the Docker Image') {
      steps {
        echo 'Building Docker Image'
        bat 'docker build -t mysprbootproj:1.0 .'
      }
    }
    
    stage('Run Docker Container') {
      steps {
        echo 'Running Spring Boot Application'
        bat '''
        docker rm -f mysprbootproj-container || exit 0
        docker run --name mysprbootproj-container mysprbootproj:1.0
        
        '''               
      }
    }
  }
  post {
    success {
      echo 'Build and Run is SUCCESSFUL!'
    }
    failure {
      echo 'OOPS!!! Failure.'
    }
  }
}