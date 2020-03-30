CLUSTER?=eks3
NODEGROUPNAME?=ng2

CreateEksNodeGroup:
	python3 -m awscli eks create-nodegroup --cluster-name ${CLUSTER} --nodegroup-name ${NODEGROUPNAME} --scaling-config minSize=1,maxSize=1,desiredSize=1 --disk-size 20 --subnet "subnet-08ee1667ebe5b0c98" "subnet-0b01f8fea5059cc57" --instance-types "t3.medium" --ami-type "AL2_x86_64" --remote-access ec2SshKey=ec2-test-eks --node-role arn:aws:iam::205172468134:role/ec2-role

DeleteEksNodeGroup:
	awscli eks delete-nodegroup --cluster-name ${CLUSTER} --nodegroup-name ${NODEGROUPNAME}
