#!/bin/bash

mvn clean package gpg:sign
cd target
jar -cvf bundle.jar lpsolve-*.pom lpsolve-*.pom.asc lpsolve-*.jar lpsolve-*.jar.asc lpsolve-*-javadoc.jar lpsolve-*-javadoc.jar.asc lpsolve-*-sources.jar lpsolve-*-sources.jar.asc
