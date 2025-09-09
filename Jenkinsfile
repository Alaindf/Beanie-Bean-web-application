
pipeline{
    agent { label 'Agent1' } 
    
    tools{
        maven "maven3.9.8"
    }
    stages{
        stage('1CodeClone'){
            steps{
                sh "echo 'This is the latest version of Tesla application.'"
                git branch: 'main', url: 'https://github.com/Alaindf/Beanie-Bean-web-application.git'
            }
        }
    
        stage('3Test&Build'){
            steps{
                sh "echo 'Maven should be able to do a build now'"
                sh "mvn clean install"
            }
        }
        stage('2CodeQuality'){
            steps{
                sh "echo 'Running code quality analysis'"
                sh "mvn sonar:sonar"
            }
        }
        stage('4UploadArtifacts'){
            steps{
                sh "echo 'pushing Artifacts to remote repository'"
                sh "mvn deploy"
            }
        }
         stage('Approval'){
            steps{
                timeout(time:9, unit: 'HOURS'){
                    input message: 'Please. review/verify the smooth running of app and provide your approval'
                }
            }
        }
        stage('5DeploymentToUat'){
            steps{
                sh "echo 'Deployment to Tomcat'"
                deploy adapters: [tomcat9(credentialsId: 'tomcat2', path: '', url: 'http://44.202.72.25:8080/')], contextPath: null, war: 'target/*war'
            }
        }
    }
}
