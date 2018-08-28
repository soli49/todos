from node:8

maintainer fixed.solutions

#install meteor 

RUN curl https://install.meteor.com/ | sh

#copy the project into docker image

copy ./todos todosdocker

workdir todosdocker 

#npm install 
run meteor npm install

#port expost 

expose 2222

cmd ["meteor","--allow-superuser"]

