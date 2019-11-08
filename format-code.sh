#!/usr/bin/env sh

changed_java_files=$(git diff --cached --name-only --diff-filter=ACMR | grep ".*java$" )
echo $changed_java_files
java -jar ~/.cache/google-java-format-1.7-all-deps.jar --replace $changed_java_files
