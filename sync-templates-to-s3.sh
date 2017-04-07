#!/bin/bash
cd $(dirname $0)

aws s3 sync --delete ./templates s3://$( \
  aws cloudformation describe-stack-resource \
  --stack-name matryoshka \
  --logical-resource-id TemplateStore \
  --query 'StackResourceDetail.PhysicalResourceId' | tr -d '"' \
  )
