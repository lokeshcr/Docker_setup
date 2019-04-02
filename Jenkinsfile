node{
  def app
  stage('Clone repo'){
    git credentialsId: '809921b7-fa12-4488-8868-986abc5e7b73', url: 'https://github.com/lokeshcr/Docker_setup.git'
  }
  stage('Build image'){
    def cimage = docker.build ("docker_setup/dockerfile")
   // cimage.inside {
     //   sh 'python abc.py'
   // }
   // sh "docker run -it --name python ${env.IMAGE_ID}" 
   // sh "docker exec eager_bhabha /bin/sh -c 'pip istall pystrich'"
    
  }
  stage('Run Image'){
    
  }
  stage('Test image'){
    sh 'python --version'
    sh 'echo "Tests passed"'
       
  }
}
