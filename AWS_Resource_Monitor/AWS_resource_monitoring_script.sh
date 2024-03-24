#!/bin/bash

##############
#Author:VS Gowtham
#Date:23-03-2024
#version:v1
#This script will report the AWS resource usage


################################

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

echo "list of s3 buckets"
aws s3 ls #list s3 buckets
echo "list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
echo "list of lambda functions"
aws lambda list-functions | jq '.Functions[].FunctionName' #list lambda functions
echo " list of IAM Users"
aws iam list-users | jq '.Users[].UserName' #list iam users


