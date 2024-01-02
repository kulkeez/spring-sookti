#!/bin/bash

# Convenience script to check my AWS EC2 instances
aws ec2 describe-instances --query "Reservations[].Instances[].InstanceId"

echo "Public IP addresses of running instances:"
aws ec2 describe-instances \
--filters \
"Name=instance-state-name,Values=running" \
--query 'Reservations[*].Instances[*].[PublicIpAddress]' \
--output text