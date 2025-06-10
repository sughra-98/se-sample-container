FROM node:16-alpine
# FROM instruction initializes a new build stage and sets up the base image for all the next instructions

WORKDIR /app
# WORKDIR sets up a working directory called /app for any instructions that follow it

ENV PORT=3000
# ENV instruction sets the environment variables for the application to use, typically it follows the format: key=value

COPY ["package.json", "package-lock.json*", "./"]
# It copies the package.json and package-lock.json from our root directory to the image's /app

RUN npm install
# it runs the command "npm install" in the image's /app directory

COPY . .
# copies all the content of our root directory (src, public, readme, etc.) to /app.

CMD ["npm", "start"]
# CMD instruction determines the default command to start the application by the container