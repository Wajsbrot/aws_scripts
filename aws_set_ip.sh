#!/usr/bin/env bash

instance_id=`aws ec2 describe-spot-instance-requests --filter Name=state,Values=active|grep InstanceId| tail -n 1|sed 's/ *"InstanceId": "\(.*\)",/\1/'`
echo "Instance ID: $instance_id"
sed -i '/instance_id/d' $HOME/.bashrc 
echo "export instance_id=$instance_id" >> $HOME/.bashrc
instance_ip=`aws ec2 describe-instances --instance-ids $instance_id --query 'Reservations[0].Instances[0].PublicIpAddress'|sed 's/"//g'`
echo "Instance IP address: $instance_ip"
sed -i '/instance_ip/d' $HOME/.bashrc 
echo "export instance_ip=$instance_ip" >> $HOME/.bashrc
