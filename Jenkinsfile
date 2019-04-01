node{
  def app
  stage('Clone repo'){
    checkout scm
  }
  stage('Build image'){
    docker.build("docker_setup/dockerfile1")
    docker exec -it Container.id echo "Hello from container!"
    echo "(docker exec -it Container.id echo "Hello from container!")"
    
  }
  stage('Test image'){
    sh 'python --version'
    sh 'echo "Tests passed"'
       
  }
}
