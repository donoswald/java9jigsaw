#!/bin/sh
cd mail-api/src
javac -d ../build   $(find . -name "*.java")
cd ../build
jar --create --file mail-api.jar --module-version 1.0 $(find . -name "*.class")
cd ../../mail-client/src
javac -d ../build --module-path ../../mail-api/build/mail-api.jar  $(find . -name "*.java")
cd ../build
jar --create --file mail-client.jar --module-version 1.0 --main-class com.trivadis.mailexample.client.MailClient $(find . -name "*.class")
cd ../../mail-service/src
javac -d ../build  --module-path ../../mail-api/build/mail-api.jar $(find . -name "*.java")
cd ../build
jar --create --file mail-service.jar --module-version 1.0 $(find . -name "*.class")
cd ../..
rm -rf mail-example.jar
jlink --module-path mail-api/build/mail-api.jar:mail-client/build/mail-client.jar:mail-service/build/mail-service.jar:$JAVA_HOME/jmods --add-modules MailClient MailAPI MailService --output mail-example.jar
#java -jar -p mail-example.jar
#java -p mail-api/build/mail-api.jar:mail-client/build/mail-client.jar:mail-service/build/mail-service.jar -m MailClient

