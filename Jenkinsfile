pipeline {

    agent any
    
    stages {
        stages {
stage('SCM Checkout') {
steps {
echo '>>> Start getting SCM code'
git branch: 'main', url: 'https://github.com/Ahmed-Abd-Elhalim-Farag/spring-petclinic/'
echo '>>> End getting SCM code'
}
}
        
        stage('Build') {
            steps {
                echo 'Build'
                sh "mvn --batch-mode package" 
            }
        }

        stage('Archive Unit Tests Results') {
            steps {
                echo 'Archive Unit Test Results'
               step([$class: 'JUnitResultArchiver', testResults: 'target/surefire-reports/TEST-*.xml'])
            }
        }
        
        stage('Publish Unit Test results report') {
            steps {
                echo 'Report'
                publishHTML([allowMissing: false, alwaysLinkToLastBuild: true, keepAll: false, reportDir: 'target/site/jacoco/', reportFiles: 'index.html', reportName: 'jacaco report', reportTitles: ''])

             }
        }
    }
}
