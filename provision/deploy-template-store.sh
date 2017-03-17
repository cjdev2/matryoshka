#!/bin/bash

SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)
TEMPLATE="$SCRIPTPATH/deploy-template-store.yaml"

aws cloudformation deploy --stack-name matryoshka --template-file $TEMPLATE
