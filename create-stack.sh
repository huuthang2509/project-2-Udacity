aws cloudformation create-stack --stack-name "NetworkStack" --template-body file://"network.yml" \
--parameters file://"network_param.conf" --capabilities CAPABILITY_IAM

aws cloudformation wait stack-create-complete --stack-name "NetworkStack"

aws cloudformation create-stack --stack-name "ApplicationStack" --template-body file://"app_infra.yml" \
--parameters file://"app_param.conf" --capabilities CAPABILITY_IAM