FROM mariadb

COPY ./createdb.sql /
ADD ./createdb.sql /docker-entrypoint-initdb.d
EXPOSE 3306

RUN mysql -u root -h 0.0.0.0 -e "create database legacy_datasite"
RUN mysql -u admin -h 0.0.0.0 -e "create database legacy_datasite"

# RUN mysql
# RUN GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password';
# RUN ls
# RUN mysql /createdb.sql