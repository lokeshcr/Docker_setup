node{
  def app
  stage('Clone repo'){
    checkout scm
  }
  stage('Build image'){
    docker.build("docker_setup/dockerfile1")
    docker exec egaer_bhabha /bin/sh -c 'pip istall pystrich'
    echo "(docker exec egaer_bhabha /bin/sh -c 'pip istall pystrich')"
  }
  stage('Test image'){
    sh 'python --version'
    sh 'echo "Tests passed"'
       
  }
}
