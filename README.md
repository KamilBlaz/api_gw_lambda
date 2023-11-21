# API Gateway with AWS Lambda Function

This repository contains code for setting up an API Gateway that triggers an AWS Lambda function.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- AWS Account
- AWS CLI installed and configured
- Docker installed

### Usage

1. Build Docker image
```
make build
```

2. Init Terraform
```
make init
```

3. Plan Terraform
```
make plan
```
4. Apply Terraform
```
make apply
```

And you're done! You should see the API Gateway URL in the output
You can reach the API Gateway URL with the following command:

```
curl -X POST "<API_GW_URL>/test/describe_package?name=minimal&version=0.1.0"
```