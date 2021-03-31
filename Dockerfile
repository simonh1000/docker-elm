FROM node:12.22.0

LABEL maintainer="hotbelgo@gmail.com"

COPY package*.json ./

COPY . .

RUN yarn global add elm@0.19.1-3 \
    && yarn global add elm-test@0.19.1-revision4

# ENTRYPOINT ["elm"]
# CMD ["npm", "start"]
CMD ["elm-test", "--version"]
