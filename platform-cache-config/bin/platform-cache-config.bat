@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  platform-cache-config startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and PLATFORM_CACHE_CONFIG_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\platform-cache-config.jar;%APP_HOME%\lib\platform-redis.jar;%APP_HOME%\lib\platform-zookeeper.jar;%APP_HOME%\lib\platform-common.jar;%APP_HOME%\lib\platform-cache-data.jar;%APP_HOME%\lib\slf4j-api-1.7.12.jar;%APP_HOME%\lib\ojdbc14-11.2.0.jar;%APP_HOME%\lib\jedis-2.8.1.jar;%APP_HOME%\lib\spring-jdbc-4.2.0.RELEASE.jar;%APP_HOME%\lib\quartz-2.2.2.jar;%APP_HOME%\lib\curator-client-2.8.0.jar;%APP_HOME%\lib\curator-framework-2.8.0.jar;%APP_HOME%\lib\curator-recipes-2.8.0.jar;%APP_HOME%\lib\dom4j-1.6.1.jar;%APP_HOME%\lib\hibernate-entitymanager-5.1.0.Final.jar;%APP_HOME%\lib\hibernate-java8-5.1.0.Final.jar;%APP_HOME%\lib\hibernate-redis-1.6.6.jar;%APP_HOME%\lib\spring-context-4.2.0.RELEASE.jar;%APP_HOME%\lib\spring-orm-4.2.0.RELEASE.jar;%APP_HOME%\lib\spring-data-redis-1.6.2.RELEASE.jar;%APP_HOME%\lib\jackson-databind-2.6.0.jar;%APP_HOME%\lib\logback-redis-appender-1.1.0.jar;%APP_HOME%\lib\resteasy-jaxrs-3.0.11.Final.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\dubbo-2.8.4.2.jar;%APP_HOME%\lib\logback-ext-spring-0.1.3.jar;%APP_HOME%\lib\javax.servlet-api-3.0.1.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.12.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.6.0.jar;%APP_HOME%\lib\groovy-all-2.4.6.jar;%APP_HOME%\lib\guava-19.0.jar;%APP_HOME%\lib\xercesImpl-2.11.0.jar;%APP_HOME%\lib\commons-beanutils-1.9.2.jar;%APP_HOME%\lib\commons-pool2-2.4.2.jar;%APP_HOME%\lib\spring-beans-4.2.0.RELEASE.jar;%APP_HOME%\lib\spring-core-4.2.0.RELEASE.jar;%APP_HOME%\lib\spring-tx-4.2.0.RELEASE.jar;%APP_HOME%\lib\c3p0-0.9.1.1.jar;%APP_HOME%\lib\zookeeper-3.4.6.jar;%APP_HOME%\lib\jboss-logging-3.3.0.Final.jar;%APP_HOME%\lib\hibernate-core-5.1.0.Final.jar;%APP_HOME%\lib\hibernate-commons-annotations-5.0.1.Final.jar;%APP_HOME%\lib\hibernate-jpa-2.1-api-1.0.0.Final.jar;%APP_HOME%\lib\javassist-3.20.0-GA.jar;%APP_HOME%\lib\geronimo-jta_1.1_spec-1.1.1.jar;%APP_HOME%\lib\lombok-1.16.8.jar;%APP_HOME%\lib\fst-2.45.jar;%APP_HOME%\lib\snappy-java-1.1.2.1.jar;%APP_HOME%\lib\logback-classic-1.1.2.jar;%APP_HOME%\lib\spring-aop-4.2.0.RELEASE.jar;%APP_HOME%\lib\spring-expression-4.2.0.RELEASE.jar;%APP_HOME%\lib\spring-context-support-4.1.9.RELEASE.jar;%APP_HOME%\lib\jackson-annotations-2.6.0.jar;%APP_HOME%\lib\jackson-core-2.6.0.jar;%APP_HOME%\lib\jaxrs-api-3.0.11.Final.jar;%APP_HOME%\lib\jboss-annotations-api_1.1_spec-1.0.1.Final.jar;%APP_HOME%\lib\activation-1.1.jar;%APP_HOME%\lib\httpclient-4.2.6.jar;%APP_HOME%\lib\commons-io-2.1.jar;%APP_HOME%\lib\jcip-annotations-1.0.jar;%APP_HOME%\lib\spring-web-4.2.0.RELEASE.jar;%APP_HOME%\lib\commons-collections-3.2.1.jar;%APP_HOME%\lib\log4j-1.2.16.jar;%APP_HOME%\lib\jline-0.9.94.jar;%APP_HOME%\lib\netty-3.7.0.Final.jar;%APP_HOME%\lib\objenesis-2.1.jar;%APP_HOME%\lib\httpcore-4.2.5.jar;%APP_HOME%\lib\commons-codec-1.6.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\jandex-2.0.0.Final.jar;%APP_HOME%\lib\classmate-1.3.0.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\logback-core-1.1.2.jar;%APP_HOME%\lib\xml-apis-1.4.01.jar;%APP_HOME%\lib\commons-logging-1.2.jar

@rem Execute platform-cache-config
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %PLATFORM_CACHE_CONFIG_OPTS%  -classpath "%CLASSPATH%" com.star.cache.Main %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable PLATFORM_CACHE_CONFIG_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%PLATFORM_CACHE_CONFIG_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
