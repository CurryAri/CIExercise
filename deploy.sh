cmdid=$(aws ssm send-command --instance-ids "i-02b253149b93a7776" --document-name "AWS-RunShellScript" --parameters commands="sudo kubectl get pods" --query "Command.CommandId" --output text)
aws ssm list-command-invocations --command-id "$cmdid" --details --query "CommandInvocations[*].CommandPlugins[*].Output[]" --output text
#kubectl apply -f k8s
#kubectl set image deployments/server-deployment server=curryari/multi-server:$SHA
#kubectl set image deployments/client-deployment client=curryari/multi-client:$SHA
#kubectl set image deployments/worker-deployment worker=curryari/multi-worker:$SHA
