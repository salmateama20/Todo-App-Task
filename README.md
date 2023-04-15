# Todo-App-Task

## Previously Installed![Docker-compose](https://user-images.githubusercontent.com/91135838/232257957-e0394fb0-25d7-43ca-89ed-8230671112b9.jpeg)

- Docker and VScode/Git Bash installed.
- Note: in my case i was working on VScode and using the git bash terminal in it.


## Steps to run


1- Download the zipped folder

2-Extract All

3-RIght Click on the floder and choose open with VScode.![Docker-compose](https://user-images.githubusercontent.com/91135838/232257954-130ac86e-ed83-40fb-83c9-e3079bc39313.jpeg)


4-On the VScode App top bar click on the terminal >new terminal.

5-On the Terminal console click on the dropdown menu beside "+" sign and choose git bash.

*Now you're on the path of the repositry folder*

6-Open Docker

7-On the git bash terminal that we perviously opened write docker-compose up -d 
*it will take a while during the first trial*
![Screenshot](Docker-compose.jpeg)

8-Open jenkins servers in the meantime http://localhost:8080/ in order to observe if it worked yet.
*It will work after the container is running*

9-On the bash terminal write docker-compose build
*it will take a while during the first trial*

10-Now a screen asking for the adminstrator password will appear on Jenkins server

11-You may find it in the ouptut of the docker-compose up or /secrets/initialAdminPassword located in var/jekins_home

12-you may sign up after that or continue as admin

13-Now on the the Dashboard of Jenkins click new item ( write any name and choose pipeline)

14-Scroll down till you find the Pipeline Section ( choose from Definition Pipeline Script from SCM)

15-On the SCM choose git and paste this repositry url

16-On the branches to build change it from "*/master" > "*/main". 

17- Add Addition behavior to be wipe out repositry and force clone in order to successfully build the pipeline after the first time.

18-click save

19-click on build now to successfully observe all the stage build.
