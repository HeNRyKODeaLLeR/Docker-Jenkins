pipeline {
    agent any

    parameters {
        string(name: 'FILE1', defaultValue: 'initialfile.txtx', description: 'Artifact new name')
    }
    
    stages {
        stage('Create Write File 1') {
            steps {
                writeFile file: "${params.FILE1}", text: 'Hello World'
            }
        }
    
        stage('Archive Artifact Write File 1') {
            steps {
                archiveArtifacts artifacts: "${params.FILE1}", followSymlinks: false
            }
        }
    }
}
