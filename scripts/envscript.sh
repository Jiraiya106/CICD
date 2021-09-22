#!/bin/bash
PARAMATER="APP_ENV"
REGION="eu-west-1"
WEB_DIR="/var/www/html"


sudo bash -c "aws ssm get-parameters --name $PARAMATER --region $REGION --with-decryption --output text --query Parameters[].Value > $WEB_DIR/.env"