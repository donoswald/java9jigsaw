#!/usr/bin/env bash

rm -rf mods/*
javac -d mods --module-source-path src $(find src -name "*.java")

jar --create --file=mods/org.astro.jar -C mods/org.astro .
jar --create --file=mods/com.socket.jar -C mods/com.socket .
jar --create --file=mods/org.fastsocket.jar -C mods/org.fastsocket .
jar --create --file=mods/com.greetings.jar --main-class=com.greetings.Main -C mods/com.greetings .
rm -f $(find mods -name "*.class")

#jlink --module-path $JAVA_HOME/jmods:mods --add-modules com.greetings --output greetingsapp

java -p mods -m com.greetings
