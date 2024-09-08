if [ "$pipeline" == "true" ] ;then 
    exit 
fi 

ansible-playbook -i ${COMPONENT}-${ENV}.expense.internal, -e ansible_user=ec2-user -e ansible_password=${SSH_PSW} -e COMPONENT=${COMPONENT} -e VAULT_TOKEN=${VAULT_TOKEN}  -e ENV=${ENV} -e  expense.yml

echo "Printing Environment Variables To Detect Secrets If Any"
env 