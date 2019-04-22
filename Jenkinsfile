node{
  def app
  stage('Clone repo'){
        checkout scm
   // git credentialsId: '809921b7-fa12-4488-8868-986abc5e7b73', url: 'https://github.com/lokeshcr/Docker_setup.git'
  }
  stage('Build image'){
   docker.build ("docker_setup/dockerfile2", "-f", "docker_setup/dockerfile2")
    sh label: '', script: 'python abc.py'
   // cimage.inside {
     //   sh 'python abc.py'
   // }
   // sh "docker run -it --name python ${env.IMAGE_ID}" 
   // sh "docker exec eager_bhabha /bin/sh -c 'pip istall pystrich'"
    
  }
  stage('Test image'){
    sh 'python --version'
    sh 'echo "Tests passed"'
       
  }
}
