from node:8

maintainer stc

#install meteor 
RUN git clone https://github.com/AlaaZidan/todos
RUN curl https://install.meteor.com/ | sh

#copy the project into docker image
#copy ./todos todosdocker
#run git clone https://github.com/AlaaZidan/todos
workdir todos
#workdir todosdocker 

#npm install 
#run meteor npm install
run npm install --production
#port expost 

expose 3000

cmd ["meteor","--allow-superuser"]

#run meteor --allow-superuser
