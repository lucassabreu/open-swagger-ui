FROM coderockr/node-for-build:stable

RUN npm install --global open-swagger-ui

ENV SWAGGER_PATH "https://petstore.swagger.io/v2/swagger.json"

EXPOSE 3355
CMD open-swagger-ui "$SWAGGER_PATH"
