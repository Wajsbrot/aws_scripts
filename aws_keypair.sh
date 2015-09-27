#!/usr/bin/env bash
aws ec2 create-key-pair --key-name $1 --query 'KeyMaterial' --output text > $1.pem
