#import os
#from requests.auth import HTTPBasicAuth
#from git import Repo
from github import Github

a="Hello World"
print a


file1 = open("loky.txt","w+")
file1.writelines(a) 
file1.close() 


user = "lokeshcr"
password = "lokesh9491"
g = Github(user,password)
repo = g.get_user().get_repo('Docker_setup')
file_list = [
    'C:\\Users\20142124\Desktop\loky.txt'
]

file_names = [
    'loky.txt'
]



#repo_dir = 'https://github.com/lokeshcr/Docker_setup.git'
#repo = Repo(repo_dir)
#file_list = [
 #   'loky.txt'
#]
commit_message = 'Add output file'
repo.index.add(file_list)
repo.index.commit(commit_message)
origin = repo.remote('origin')
origin.push()
