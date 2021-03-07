# STS-ASSUME-ADMIN-ROLE-Lambda

Simple CloudFormation stack that can be used to generate temporary admin credentials using AWS Lambda function.

Default permission is AWS:*, default session duration is 1h

Output format from lambda is:

aws_access_key_id = XXX
aws_secret_access_key = XXX
aws_session_token = XXX

Logs will not be stored on CloudWatch for extra safety

## Deployment instructions

Run templateDeploy.sh script from root directory and provide AWS CloudFormation stack name as input like so:

./templateDeploy.sh lambda-admin-cred


## Usage instructions

Execute lambda function with any input. Credentials will be printed.
