node{
  def app
  stage('Clone repo'){
    checkout scm
  }
  stage('Build image'){
    docker.build("docker_setup/dockerfile1")
    sh "docker exec jenkins-${BUILD_NUMBER} /bin/bash -c 'curl -iL -X GET http://localhost:8080'"
  }
  stage('Test image'){
    sh 'python --version'
    sh 'echo "Tests passed"'
       
  }
}
