pipeline {

	agent any

		parameters { 
			string(name: 'DOCKER_IMAGE_NAME', defaultValue: 'nodejs', description: 'Docker Image')
			string(name: 'DOCKER_CONTAINER_NAME', defaultValue: 'nodejs', description: 'Docker Container Name')
			string(name: 'DOCKER_PORT', defaultValue: '3000', description: 'Docker Port')
		}

	stages {

		// Criar a imagem docker
		stage ('Build Docker Image') {
	
		agent any

			steps {
				sh 'docker build -t "${DOCKER_IMAGE_NAME}" .'
			}
		}

		// Inicia o container
		stage ('Run Docker Container') {

		agent any

			steps {
				sh 'docker rm -f "${DOCKER_IMAGE_NAME}"'s
				sh 'docker run -d -p ${DOCKER_PORT}:3000 --name "${DOCKER_CONTAINER_NAME}" "${DOCKER_IMAGE_NAME}"'
			}
		}	
	}
}
