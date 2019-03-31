node{
  def app
  stage('Clone repo'){
    checkout scm
  }
  stage('Build image'){
    docker.build("docker_setup/dockerfile")
  }
}
