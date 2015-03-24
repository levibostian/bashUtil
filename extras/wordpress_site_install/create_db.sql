-- Edit database_name, wordpressusername, and password;

CREATE DATABASE database_name;
GRANT ALL PRIVILEGES ON databasename.* TO "wordpressusername"@"localhost" IDENTIFIED BY "password";
  
FLUSH PRIVILEGES;
