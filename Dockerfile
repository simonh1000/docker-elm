FROM node:8.12.0

MAINTAINER Simon Hampton <hotbelgo@gmail.com>

COPY package*.json ./

COPY . .

# RUN yarn global add elm@0.19.0-bugfix2 \
#  && yarn global add elm-test@0.19.0-beta11

# ENTRYPOINT ["elm"]
CMD ["npm", "start"]
