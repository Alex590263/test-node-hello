node{
    def app
    stage('Clone'){
        checkout scm
    }
    stage('Build'){
        app = docker.build("alex590263/testnpm:1.0")
    }
    stage('Test image'){
      withDockerContainer("alex590263/testnpm:1.0"){}
    }
    stage('Push to Dockerhub'){
      withDockerRegistry([credentialsId: "b4037f8e-5508-4e37-8402-49d125c94275", url: ""]) {
        app.push()
      }
    }
}

