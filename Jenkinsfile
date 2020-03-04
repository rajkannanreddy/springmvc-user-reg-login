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
        
        //stage('Sonar') {
          //  steps {
          //      echo 'Sonar Scanner'
          //     	sh '/home/rajesh/Documents/Learnings/InstalledSoftware/jenkins/sonar-scanner-4.2.0.1873-linux/bin/sonar-scanner'
		  //	}
        // }
        
        stage('SonarQube analysis') {
            steps {
            def scannerHome = tool 'SQScanner';
            withSonarQubeEnv('My SonarQube Server') {
                sh "${scannerHome}/bin/sonar-scanner"
            }
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
                script {
                def customImage = docker.build("getintodevops/hellonode")
                }
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