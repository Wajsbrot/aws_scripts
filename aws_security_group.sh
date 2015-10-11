#!/usr/bin/env bash
aws ec2 create-security-group --group-name aws-sg --description "security group for development environment in EC2"
aws ec2 authorize-security-group-ingress --group-name aws-sg --protocol tcp --port 22 --cidr 0.0.0.0/0
