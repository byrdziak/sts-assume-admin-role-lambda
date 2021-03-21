#!/usr/bin/env bash

stackName=$1
cdir=$(dirname $0)

stackNameDefault="lambda-admin-cred"

if [ -z $stackName ]
  then
    echo "Setting stack name to default value"
    stackName=$stackNameDefault
fi

aws cloudformation deploy \
    --template-file $cdir/template.yaml \
    --stack-name $stackName \
    --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
