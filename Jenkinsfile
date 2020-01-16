pipeline {
    agent any
    environment {       
        dockerImage = ''
    }
    
    stages {
        stage('precheck'){
            steps {
                sh 'env > /tmp/env.txt' 
                
            }

        }           
 
        stage('Checkout') {
            steps {
                echo 'Checkout'
            }
        }
        stage('Build') {
            steps {
                echo 'Clean Build'
                echo "BUILD NUMBER: ${BUILD_NUMBER}"
                sh 'mvn clean compile'
            }
        }
        
        stage('Package') {
            steps {
                echo 'Packaging'
                sh 'mvn package -DskipTests'
            }
        }
        stage('Building image') {
                steps {
                echo 'Building images'
                
                dockerImage = docker.build("getintodevops/hellonode")
            }
            
      }
    
        stage('Deploy') {
            steps {
                echo '## TODO DEPLOYMENT ##'
            }
        }
    }
    
    post {
        always {
            echo 'JENKINS PIPELINE'
        }
        success {
            echo 'JENKINS PIPELINE SUCCESSFUL'
        }
        failure {
            echo 'JENKINS PIPELINE FAILED'
        }
        unstable {
            echo 'JENKINS PIPELINE WAS MARKED AS UNSTABLE'
        }
        changed {
            echo 'JENKINS PIPELINE STATUS HAS CHANGED SINCE LAST EXECUTION'
        }
    }
}