FROM node:13 as BUILDER

#create working Dir
WORKDIR /usr/src/project

#Install app deps
COPY package*.json ./
RUN npm install

#Bundle Source
COPY . .

#Open port
#EXPOSE 1234

#Run Command
#CMD [ "npm" , "run", "buid-prod" ]
#RUN npm run lclean
RUN npm run build-prod

FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY --from=BUILDER /usr/src/project/dist/ /usr/share/nginx/html/



