echo "deploy script is running"
cmdid=$(aws ssm send-command --instance-ids "i-02b253149b93a7776" --document-name "AWS-RunShellScript" --parameters commands="sudo kubectl set image deployments/nginx-deployment nginx=curryari/tompencil:$SHA" --query "Command.CommandId" --output text)
aws ssm list-command-invocations --command-id "$cmdid" --details --query "CommandInvocations[*].CommandPlugins[*].Output[]" --output text




#curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
#unzip awscliv2.zip
#sudo ./aws/install
#sudo mkdir .aws
#sudo chown -R travis:travis /home/travis
#aws configure set aws_access_key_id \$AWS_ACCESS_KEY_ID
#aws configure set default.region us-east-2
#aws configure set aws_secret_access_key \$AWS_SECRET_ACCESS_KEY
#kubectl apply -f k8s
#kubectl set image deployments/server-deployment server=curryari/multi-server:$SHA
