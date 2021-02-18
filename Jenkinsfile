pipeline {
    agent any

    parameters {
        string(name: 'FILE1', defaultValue: 'initialfile.txtx', description: 'Artifact new name')
    }
    
    stages {
    stage('Parallel') {
        parallel {
            stage('Stage 1') {
                when {
                    environment name: 'FILE1', value: 'meuarquivo.txt'
                }
                    
                agent any
                    
                steps {
                    echo "On Stage 1"
                }
            }
        
            stage('Stage 2') {
                when {
                    environment name: 'FILE2', value: 'file.txt'
                }
                    
                agent any
                    
                steps {
                    echo "On Stage 2"
                }
            }
        }
    }
    
    stage('Create Write File 1') {
        steps {
            writeFile file: "${params.FILE1}", text: 'Hello World'
        }
    }
    
    stage('Create Write File 2') {
        steps {
            writeFile file: "${params.FILE2}", text: 'Goodbye, Cruel World'
        }
    }
    
    stage('Archive Artifact Write File 1') {
        steps {
            archiveArtifacts artifacts: "${params.FILE1}", followSymlinks: false
        }
    }
    
    stage('Archive Artifact Write File 2') {
        steps {
            archiveArtifacts artifacts: "${params.FILE2}", followSymlinks: false
        }
    }
}
}