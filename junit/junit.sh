#!/bin/bash
if [ -d "/home/coder/project/workspace/jspservlet-app-ATM/" ]
then
    echo "project folder present"
    # checking for src folder
    if [ -d "/home/coder/project/workspace/jspservlet-app-ATM/src/" ]
    then
        cp -r /home/coder/project/workspace/junit/test /home/coder/project/workspace/jspservlet-app-ATM/src/;
    cd /home/coder/project/workspace/jspservlet-app-ATM/ || exit;
    mvn clean test;
    else
        echo "test_case1 FAILED";
        echo "test_case2 FAILED";
        echo "test_case3 FAILED";
        echo "test_case4 FAILED";
    fi
else   
    echo "test_case1 FAILED";
    echo "test_case2 FAILED";
    echo "test_case3 FAILED";
    echo "test_case4 FAILED";
fi
