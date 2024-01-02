#!/bin/bash
# Your AWS Account ID is a unique 12-digit identification number that is assigned to your AWS account.

# Uncomment next line for debugging
#env|grep AWS
#aws sts get-caller-identity

aws sts get-caller-identity --query Account --output text