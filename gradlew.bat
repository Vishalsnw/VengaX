@echo off

:: Check Java installation
if not defined JAVA_HOME (
    echo ERROR: JAVA_HOME is not set and no 'java' command found in PATH.
    exit /b 1
)

set JAVA_EXE=%JAVA_HOME%\bin\java.exe

if not exist "%JAVA_EXE%" (
    echo ERROR: JAVA executable not found at %JAVA_EXE%.
    exit /b 1
)

set APP_HOME=%~dp0
set WRAPPER_JAR=%APP_HOME%gradle\wrapper\gradle-wrapper.jar

if not exist "%WRAPPER_JAR%" (
    echo ERROR: gradle-wrapper.jar not found at %WRAPPER_JAR%.
    exit /b 1
)

"%JAVA_EXE%" -Dorg.gradle.appname=gradlew -classpath "%WRAPPER_JAR%" org.gradle.wrapper.GradleWrapperMain %*
