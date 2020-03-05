aws ssm create-document \
    --document-type ApplicationConfiguration \
    --name baseline.aetion.com \
    --content file://config.json \
    --requires Name=front-end-config-schema \
    --region us-east-1 \
    --profile personal