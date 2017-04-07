#!/bin/bash
cd $(dirname $0)

TEMPLATE="$SCRIPTPATH/deploy-template-store.yaml"
aws cloudformation deploy --stack-name matryoshka --template-file $TEMPLATE
