#!/bin/sh

##############################################################################
# Gradle startup script for UN*X
##############################################################################

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS
# to pass JVM options to this script.
DEFAULT_JVM_OPTS="-Xmx64m -Xms64m"

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

# Use the maximum available, or set MAX_FD != -1 to use that value.
MAX_FD="maximum"

CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

# Determine the Java command to use to start the JVM.
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
