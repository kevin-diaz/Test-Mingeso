pipeline{
    agent any
    //Se carga nodejs paa poder ejecutar los comandos npm ().
    tools{
        nodejs 'NJ'
        dockerTool 'docker'
    }
    //Se definen las variables de entorno.
    environment {
        //Nombre del repositorio
        DOCKER_IMAGE_NAME = "kevindiaz/nodejs-aplication"
    }
    stages{
        // Primera estapa: construcción; se descaragan las dependencias.
        stage('build'){
            steps{
                echo 'Construyendo la aplicación ...'
                sh 'npm install'
            }
        }
        // Segunda estapa: testeo; se realizan las pruebas definidas en la carpeta de test del proyecto.
        stage('test'){
            steps{
                echo 'Testeando la aplicación ...'
                sh 'npm test'
            }
        }
        // Tercera etapa: testeo del código fuente; se analiza el código fuente en busca de errores.
        stage('code test'){
            steps{
                echo 'Analizando el código'
                sh 'npm run lint'
            }
        }
        
        // Cuarta etapa: dockerizamiento; se construye la imagen del docker de la aplicación.
        stage('Build Docker Image') {
            steps {
                script {
                    app = docker.build(DOCKER_IMAGE_NAME)
                }
            }
        }
        
        // Quinta etapa: pushear; se sube al repositorio de dockerhub el dockerfile.
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker_hub_login') {
                        app.push("${env.BUILD_NUMBER}")
                        app.push("latest")
                    }
                }
            }
        }
        
        // Sexta etapa: se sdespliega la aplicación en un cluster de kubernetes.
        stage('Deploy Kubernetes') {
            steps {
                milestone(1)
                kubernetesDeploy(
                    kubeconfigId: 'kubeconfig',
                    configs: 'deploy.yaml',
                    enableConfigSubstitution: true
                )
            }
        }
    }
}
