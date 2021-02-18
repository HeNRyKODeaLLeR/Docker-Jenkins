pipeline {
    agent any

    parameters {
        string(name: 'filename', defaultValue: 'newfile.txt', description: 'Artifact new name')
    }
    
    stages {
        stage('Create Write File 1') {
            steps {
                writeFile file: "${params.filename}", text: 'Hello World'
            }
        }
    
        stage('Archive Artifact Write File 1') {
            steps {
                archiveArtifacts artifacts: "${params.filename}", followSymlinks: false
            }
        }
    }
    
    agent {
        docker {
            image 'container01'
        }
    }
}
}
