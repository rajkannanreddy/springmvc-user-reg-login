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
        
       
        stage('SonarQube analysis') {
            steps {
                script {
                    def scannerHome = tool 'SQScanner';
                    withSonarQubeEnv('SQServer') {
                        sh "${scannerHome}/bin/sonar-scanner"
                    }
                }
            }
        }
        
        stage('Build Application') {
            steps {
                echo 'Clean Build'
                echo "BUILD NUMBER: ${BUILD_NUMBER}"
                sh 'mvn clean compile'
            }
        }
        
        stage('Package Application') {
            steps {
                echo 'Packaging'
                sh 'mvn package -DskipTests'
            }
        }
        
        stage('Build Docker image') {
            steps {
                echo 'Building images'
                script {
                    def customImage = docker.build("daas/springdemo")
                }
            }            
        }
        
        stage('Run Docker Image') {
            steps {
                echo 'Startin Docker image'
                script {
                sh 'docker run -d -p8080:8080 daas/springdemo'
                }
            }
        }
    }
    
    post {
        always {
            echo 'JENKINS PIPELINE'
        }
        success {
            echo 'JENKINS PIPELINE SUCCESSFUL'
            echo ' Run the following command to start docker: docker run -d -p8080:8080 daas/springdemo'
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