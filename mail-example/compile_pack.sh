#!/bin/sh
cd ~/workspace/java9jigsaw/
# API
cd mail-api/src/
javac -d ../build   $(find . -name "*.java")

cd ../build/
jar --create --file mail-api.jar --module-version 1.0 $(find . -name "*.class")

#Client
cd ../../mail-client/src/
javac -d ../build --module-path ../../mail-api/build/mail-api.jar  $(find . -name "*.java")

cd ../build/
jar --create --file mail-client.jar --module-version 1.0 --main-class com.trivadis.mailexample.client.MailClient $(find . -name "*.class")

#Service
cd ../../mail-service/src/
javac  -d ../build  --module-path ../../mail-api/build/mail-api.jar:../commons-lang3.jar $(find . -name "*.java")
#javac -d ../build  -Xmodule:../../mail-api/build/mail-api.jar --class-path ../commons-lang-3.5.jar $(find . -name "*.java")
#javac -d ../build  --module-path ../../mail-api/build/mail-api.jar --class-path ../commons-lang-3.5.jar $(find . -name "*.java")


cd ../build/
jar --create --file mail-service.jar --module-version 1.0 $(find . -name "*.class")

