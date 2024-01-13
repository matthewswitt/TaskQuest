@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  app startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and APP_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\app.jar;%APP_HOME%\lib\utilities.jar;%APP_HOME%\lib\kotlinx-serialization-json-jvm-1.4.0.jar;%APP_HOME%\lib\microsoft-graph-5.41.0.jar;%APP_HOME%\lib\microsoft-graph-core-2.0.14.jar;%APP_HOME%\lib\okhttp-4.10.0.jar;%APP_HOME%\lib\okio-jvm-3.0.0.jar;%APP_HOME%\lib\kotlinx-serialization-core-jvm-1.4.0.jar;%APP_HOME%\lib\kotlin-stdlib-jdk8-1.7.10.jar;%APP_HOME%\lib\commons-text-1.9.jar;%APP_HOME%\lib\controlsfx-11.1.2.jar;%APP_HOME%\lib\FXTrayIcon-4.0.1.jar;%APP_HOME%\lib\azure-identity-1.7.1.jar;%APP_HOME%\lib\azure-core-http-netty-1.12.7.jar;%APP_HOME%\lib\azure-core-1.34.0.jar;%APP_HOME%\lib\msal4j-persistence-extension-1.1.0.jar;%APP_HOME%\lib\msal4j-1.13.3.jar;%APP_HOME%\lib\jackson-dataformat-xml-2.14.1.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.14.1.jar;%APP_HOME%\lib\jackson-databind-2.14.1.jar;%APP_HOME%\lib\jackson-annotations-2.14.1.jar;%APP_HOME%\lib\jackson-core-2.14.1.jar;%APP_HOME%\lib\jackson-module-kotlin-2.14.1.jar;%APP_HOME%\lib\javafx-media-18.0.2-mac.jar;%APP_HOME%\lib\javafx-fxml-18.0.2-mac.jar;%APP_HOME%\lib\javafx-controls-19-mac.jar;%APP_HOME%\lib\javafx-controls-19.jar;%APP_HOME%\lib\javafx-swing-19.jar;%APP_HOME%\lib\javafx-graphics-19-mac.jar;%APP_HOME%\lib\javafx-graphics-19.jar;%APP_HOME%\lib\javafx-base-19-mac.jar;%APP_HOME%\lib\javafx-base-19.jar;%APP_HOME%\lib\kotlin-stdlib-jdk7-1.7.10.jar;%APP_HOME%\lib\kotlin-reflect-1.7.10.jar;%APP_HOME%\lib\kotlin-stdlib-1.7.10.jar;%APP_HOME%\lib\kotlin-stdlib-common-1.7.10.jar;%APP_HOME%\lib\commons-lang3-3.11.jar;%APP_HOME%\lib\jsoup-1.13.1.jar;%APP_HOME%\lib\gson-2.10.jar;%APP_HOME%\lib\jna-platform-5.6.0.jar;%APP_HOME%\lib\guava-31.1-jre.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\woodstox-core-6.4.0.jar;%APP_HOME%\lib\slf4j-api-1.7.36.jar;%APP_HOME%\lib\reactor-netty-http-1.0.23.jar;%APP_HOME%\lib\reactor-netty-core-1.0.23.jar;%APP_HOME%\lib\reactor-core-3.4.23.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.82.Final.jar;%APP_HOME%\lib\netty-codec-http2-4.1.82.Final.jar;%APP_HOME%\lib\netty-codec-http-4.1.82.Final.jar;%APP_HOME%\lib\netty-resolver-dns-native-macos-4.1.81.Final-osx-x86_64.jar;%APP_HOME%\lib\netty-resolver-dns-classes-macos-4.1.81.Final.jar;%APP_HOME%\lib\netty-resolver-dns-4.1.81.Final.jar;%APP_HOME%\lib\netty-handler-4.1.82.Final.jar;%APP_HOME%\lib\netty-transport-native-epoll-4.1.82.Final-linux-x86_64.jar;%APP_HOME%\lib\netty-transport-native-kqueue-4.1.82.Final-osx-x86_64.jar;%APP_HOME%\lib\netty-transport-classes-epoll-4.1.82.Final.jar;%APP_HOME%\lib\netty-transport-classes-kqueue-4.1.82.Final.jar;%APP_HOME%\lib\netty-transport-native-unix-common-4.1.82.Final.jar;%APP_HOME%\lib\netty-codec-socks-4.1.82.Final.jar;%APP_HOME%\lib\netty-codec-dns-4.1.81.Final.jar;%APP_HOME%\lib\netty-codec-4.1.82.Final.jar;%APP_HOME%\lib\netty-transport-4.1.82.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.82.Final.jar;%APP_HOME%\lib\netty-tcnative-boringssl-static-2.0.54.Final.jar;%APP_HOME%\lib\oauth2-oidc-sdk-9.35.jar;%APP_HOME%\lib\json-smart-2.4.8.jar;%APP_HOME%\lib\jna-5.6.0.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-3.12.0.jar;%APP_HOME%\lib\error_prone_annotations-2.11.0.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar;%APP_HOME%\lib\stax2-api-4.2.1.jar;%APP_HOME%\lib\reactive-streams-1.0.4.jar;%APP_HOME%\lib\netty-resolver-4.1.82.Final.jar;%APP_HOME%\lib\netty-common-4.1.82.Final.jar;%APP_HOME%\lib\netty-tcnative-classes-2.0.54.Final.jar;%APP_HOME%\lib\nimbus-jose-jwt-9.22.jar;%APP_HOME%\lib\jcip-annotations-1.0-1.jar;%APP_HOME%\lib\content-type-2.2.jar;%APP_HOME%\lib\lang-tag-1.6.jar;%APP_HOME%\lib\accessors-smart-2.4.8.jar;%APP_HOME%\lib\asm-9.1.jar


@rem Execute app
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %APP_OPTS%  -classpath "%CLASSPATH%" taskquest.app.AppKt %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable APP_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%APP_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
