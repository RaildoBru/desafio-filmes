FROM php:8.1-apache

WORKDIR /usr/src/app

COPY . .

ENV NODE_ENV=production

EXPOSE 8000

# Start the server using the production build
CMD ["php", "-S" , "localhost"]