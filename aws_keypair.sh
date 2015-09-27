#!/usr/bin/env bash
aws ec2 create-key-pair --key-name awskey.pem --query 'KeyMaterial' --output text > awskey.pem
chmod 400 awskey.pem
