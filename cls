[33mcommit 1fae4e883a42f50aaf78f08ca70c90a72a3b2934[m[33m ([m[1;36mHEAD[m[33m -> [m[1;32mmain[m[33m, [m[1;32mmaster[m[33m)[m
Author: Nikilesh Buddha <nikileshbuddha@gmail.com>
Date:   Thu Jun 13 18:21:31 2024 +0530

    voting applcation intial commit

[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..549e00a[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,33 @@[m
[32m+[m[32mHELP.md[m
[32m+[m[32mtarget/[m
[32m+[m[32m!.mvn/wrapper/maven-wrapper.jar[m
[32m+[m[32m!**/src/main/**/target/[m
[32m+[m[32m!**/src/test/**/target/[m
[32m+[m
[32m+[m[32m### STS ###[m
[32m+[m[32m.apt_generated[m
[32m+[m[32m.classpath[m
[32m+[m[32m.factorypath[m
[32m+[m[32m.project[m
[32m+[m[32m.settings[m
[32m+[m[32m.springBeans[m
[32m+[m[32m.sts4-cache[m
[32m+[m
[32m+[m[32m### IntelliJ IDEA ###[m
[32m+[m[32m.idea[m
[32m+[m[32m*.iws[m
[32m+[m[32m*.iml[m
[32m+[m[32m*.ipr[m
[32m+[m
[32m+[m[32m### NetBeans ###[m
[32m+[m[32m/nbproject/private/[m
[32m+[m[32m/nbbuild/[m
[32m+[m[32m/dist/[m
[32m+[m[32m/nbdist/[m
[32m+[m[32m/.nb-gradle/[m
[32m+[m[32mbuild/[m
[32m+[m[32m!**/src/main/**/build/[m
[32m+[m[32m!**/src/test/**/build/[m
[32m+[m
[32m+[m[32m### VS Code ###[m
[32m+[m[32m.vscode/[m
[1mdiff --git a/.mvn/wrapper/maven-wrapper.jar b/.mvn/wrapper/maven-wrapper.jar[m
[1mnew file mode 100644[m
[1mindex 0000000..cb28b0e[m
Binary files /dev/null and b/.mvn/wrapper/maven-wrapper.jar differ
[1mdiff --git a/.mvn/wrapper/maven-wrapper.properties b/.mvn/wrapper/maven-wrapper.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..5f0536e[m
[1m--- /dev/null[m
[1m+++ b/.mvn/wrapper/maven-wrapper.properties[m
[36m@@ -0,0 +1,2 @@[m
[32m+[m[32mdistributionUrl=https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/3.9.5/apache-maven-3.9.5-bin.zip[m
[32m+[m[32mwrapperUrl=https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.2.0/maven-wrapper-3.2.0.jar[m
[1mdiff --git a/mvnw b/mvnw[m
[1mnew file mode 100644[m
[1mindex 0000000..66df285[m
[1m--- /dev/null[m
[1m+++ b/mvnw[m
[36m@@ -0,0 +1,308 @@[m
[32m+[m[32m#!/bin/sh[m
[32m+[m[32m# ----------------------------------------------------------------------------[m
[32m+[m[32m# Licensed to the Apache Software Foundation (ASF) under one[m
[32m+[m[32m# or more contributor license agreements.  See the NOTICE file[m
[32m+[m[32m# distributed with this work for additional information[m
[32m+[m[32m# regarding copyright ownership.  The ASF licenses this file[m
[32m+[m[32m# to you under the Apache License, Version 2.0 (the[m
[32m+[m[32m# "License"); you may not use this file except in compliance[m
[32m+[m[32m# with the License.  You may obtain a copy of the License at[m
[32m+[m[32m#[m
[32m+[m[32m#    https://www.apache.org/licenses/LICENSE-2.0[m
[32m+[m[32m#[m
[32m+[m[32m# Unless required by applicable law or agreed to in writing,[m
[32m+[m[32m# software distributed under the License is distributed on an[m
[32m+[m[32m# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY[m
[32m+[m[32m# KIND, either express or implied.  See the License for the[m
[32m+[m[32m# specific language governing permissions and limitations[m
[32m+[m[32m# under the License.[m
[32m+[m[32m# ----------------------------------------------------------------------------[m
[32m+[m
[32m+[m[32m# ----------------------------------------------------------------------------[m
[32m+[m[32m# Apache Maven Wrapper startup batch script, version 3.2.0[m
[32m+[m[32m#[m
[32m+[m[32m# Required ENV vars:[m
[32m+[m[32m# ------------------[m
[32m+[m[32m#   JAVA_HOME - location of a JDK home dir[m
[32m+[m[32m#[m
[32m+[m[32m# Optional ENV vars[m
[32m+[m[32m# -----------------[m
[32m+[m[32m#   MAVEN_OPTS - parameters passed to the Java VM when running Maven[m
[32m+[m[32m#     e.g. to debug Maven itself, use[m
[32m+[m[32m#       set MAVEN_OPTS=-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=8000[m
[32m+[m[32m#   MAVEN_SKIP_RC - flag to disable loading of mavenrc files[m
[32m+[m[32m# ----------------------------------------------------------------------------[m
[32m+[m
[32m+[m[32mif [ -z "$MAVEN_SKIP_RC" ] ; then[m
[32m+[m
[32m+[m[32m  if [ -f /usr/local/etc/mavenrc ] ; then[m
[32m+[m[32m    . /usr/local/etc/mavenrc[m
[32m+[m[32m  fi[m
[32m+[m
[32m+[m[32m  if [ -f /etc/mavenrc ] ; then[m
[32m+[m[32m    . /etc/mavenrc[m
[32m+[m[32m  fi[m
[32m+[m
[32m+[m[32m  if [ -f "$HOME/.mavenrc" ] ; then[m
[32m+[m[32m    . "$HOME/.mavenrc"[m
[32m+[m[32m  fi[m
[32m+[m
[32m+[m[32mfi[m
[32m+[m
[32m+[m[32m# OS specific support.  $var _must_ be set to either true or false.[m
[32m+[m[32mcygwin=false;[m
[32m+[m[32mdarwin=false;[m
[32m+[m[32mmingw=false[m
[32m+[m[32mcase "$(uname)" in[m
[32m+[m[32m  CYGWIN*) cygwin=true ;;[m
[32m+[m[32m  MINGW*) mingw=true;;[m
[32m+[m[32m  Darwin*) darwin=true[m
[32m+[m[32m    # Use /usr/libexec/java_home if available, otherwise fall back to /Library/Java/Home[m
[32m+[m[32m    # See https://developer.apple.com/library/mac/qa/qa1170/_index.html[m
[32m+[m[32m    if [ -z "$JAVA_HOME" ]; then[m
[32m+[m[32m      if [ -x "/usr/libexec/java_home" ]; then[m
[32m+[m[32m        JAVA_HOME="$(/usr/libexec/java_home)"; export JAVA_HOME[m
[32m+[m[32m      else[m
[32m+[m[32m        JAVA_HOME="/Library/Java/Home"; export JAVA_HOME[m
[32m+[m[32m      fi[m
[32m+[m[32m    fi[m
[32m+[m[32m    ;;[m
[32m+[m[32mesac[m
[32m+[m
[32m+[m[32mif [ -z "$JAVA_HOME" ] ; then[m
[32m+[m[32m  if [ -r /etc/gentoo-release ] ; then[m
[32m+[m[32m    JAVA_HOME=$(java-config --jre-home)[m
[32m+[m[32m  fi[m
[32m+[m[32mfi[m
[32m+[m
[32m+[m[32m# For Cygwin, ensure paths are in UNIX format before anything is touched[m
[32m+[m[32mif $cygwin ; then[m
[32m+[m[32m  [ -n "$JAVA_HOME" ] &&[m
[32m+[m[32m    JAVA_HOME=$(cygpath --unix "$JAVA_HOME")[m
[32m+[m[32m  [ -n "$CLASSPATH" ] &&[m
[32m+[m[32m    CLASSPATH=$(cygpath --path --unix "$CLASSPATH")[m
[32m+[m[32mfi[m
[32m+[m
[32m+[m[32m# For Mingw, ensure paths are in UNIX format before anything is touched[m
[32m+[m[32mif $mingw ; then[m
[32m+[m[32m  [ -n "$JAVA_HOME" ] && [ -d "$JAVA_HOME" ] &&[m
[32m+[m[32m    JAVA_HOME="$(cd "$JAVA_HOME" || (echo "cannot cd into $JAVA_HOME."; exit 1); pwd)"[m
[32m+[m[32mfi[m
[32m+[m
[32m+[m[32mif [ -z "$JAVA_HOME" ]; then[m
[32m+[m[32m  javaExecutable="$(which javac)"[m
[32m+[m[32m  if [ -n "$javaExecutable" ] && ! [ "$(expr "\"$javaExecutable\"" : '\([^ ]*\)')" = "no" ]; then[m
[32m+[m[32m    # readlink(1) is not available as standard on Solaris 10.[m
[32m+[m[32m    readLink=$(which readlink)[m
[32m+[m[32m    if [ ! "$(expr "$readLink" : '\([^ ]*\)')" = "no" ]; then[m
[32m+[m[32m      if $darwin ; then[m
[32m+[m[32m        javaHome="$(dirname "\"$javaExecutable\"")"[m
[32m+[m[32m        javaExecutable="$(cd "\"$javaHome\"" && pwd -P)/javac"[m
[32m+[m[32m      else[m
[32m+[m[32m        javaExecutable="$(readlink -f "\"$javaExecutable\"")"[m
[32m+[m[32m      fi[m
[32m+[m[32m      javaHome="$(dirname "\"$javaExecutable\"")"[m
[32m+[m[32m      javaHome=$(expr "$javaHome" : '\(.*\)/bin')[m
[32m+[m[32m      JAVA_HOME="$javaHome"[m
[32m+[m[32m      export JAVA_HOME[m
[32m+[m[32m    fi[m
[32m+[m[32m  fi[m
[32m+[m[32mfi[m
[32m+[m
[32m+[m[32mif [ -z "$JAVACMD" ] ; then[m
[32m+[m[32m  if [ -n "$JAVA_HOME"  ] ; then[m
[32m+[m[32m    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then[m
[32m+[m[32m      # IBM's JDK on AIX uses strange locations for the executables[m
[32m+[m[32m      JAVACMD="$JAVA_HOME/jre/sh/java"[m
[32m+[m[32m    else[m
[32m+[m[32m      JAVACMD="$JAVA_HOME/bin/java"[m
[32m+[m[32m    fi[m
[32m+[m[32m  else[m
[32m+[m[32m    JAVACMD="$(\un