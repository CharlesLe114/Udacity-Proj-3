aws cloudformation update-stack --stack-name $1 --template-body file://$2  --parameters file://$3 --region=us-east-1

aws cloudformation deploy \
         --template-file cloudfront.yml \
         --stack-name InitialStack\
         --parameter-overrides WorkflowID=udapeople-nkpyrkndyc