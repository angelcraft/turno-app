#!/bin/sh

##############################################################################
# Gradle startup script for UN*X
##############################################################################

# Resolve links: $0 may be a link
PRG="$0"

while [ -h "$PRG" ] ; do
  ls=`ls -ld "$PRG"`
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    PRG="$link"
  else
    PRG=`dirname "$PRG"`/"$link"
  fi
done

SAVED=`pwd`
APP_HOME=`dirname "$PRG"`
APP_HOME=`cd "$APP_HOME" >/dev/null && pwd -P`
cd "$SAVED" >/dev/null

DEFAULT_JVM_OPTS="-Xmx64m -Xms64m"

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

CLASSPATH="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"

if [ -n "$JAVA_HOME" ] ; then
    JAVACMD="$JAVA_HOME/bin/java"
else
    JAVACMD="java"
fi

exec "$JAVACMD" $DEFAULT_JVM_OPTS $JAVA_OPTS $GRADLE_OPTS \
  "-Dorg.gradle.appname=$APP_BASE_NAME" \
  -classpath "$CLASSPATH" \
  org.gradle.wrapper.GradleWrapperMain \
  "$@"
