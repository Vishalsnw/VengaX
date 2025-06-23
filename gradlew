#!/usr/bin/env sh

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Attempt to set APP_HOME
APP_HOME=$(cd "${0%/*}" && pwd)

# Set Java executable
if [ -n "$JAVA_HOME" ] ; then
    JAVA_EXE="$JAVA_HOME/bin/java"
else
    JAVA_EXE="java"
fi

# Check Java installation
if [ ! -x "$JAVA_EXE" ] ; then
    echo "ERROR: JAVA_HOME is not set correctly or Java is not installed." >&2
    exit 1
fi

# Find gradle-wrapper.jar
WRAPPER_JAR="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"

if [ ! -f "$WRAPPER_JAR" ]; then
    echo "ERROR: gradle-wrapper.jar not found. Make sure gradle wrapper is initialized." >&2
    exit 1
fi

# Run gradle wrapper
exec "$JAVA_EXE" -Dorg.gradle.appname=gradlew -classpath "$WRAPPER_JAR" org.gradle.wrapper.GradleWrapperMain "$@"
