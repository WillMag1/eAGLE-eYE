#!/usr/bin/env sh
if [ -z "$JAVA_HOME" ]; then
    JAVA_CMD="java"
else
    JAVA_CMD="$JAVA_HOME/bin/java"
fi
if [ -f "gradle/wrapper/gradle-wrapper.jar" ]; then
    chmod 755 "gradle/wrapper/gradle-wrapper.jar"
fi
exec "$JAVA_CMD" -jar "gradle/wrapper/gradle-wrapper.jar" "$@"
