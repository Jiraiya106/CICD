#!/bin/bash
PARAMATER="APP_ENV"
REGION="eu-west-2"
WEB_DIR="/var/www/html"


aws ssm get-parameters --name $PARAMATER --region $REGION --with-decryption --output text --query Parameters[].Value > $WEB_DIR/.env