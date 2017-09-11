#!/bin/dash
USERNAME=kopsuser
GROUP=kopsgroup
echo '**Deploying to aws**'
echo 'for prod, first determine which docker version to install'
aws iam create-group --group-name $GROUP

aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess --group-name $GROUP
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonRoute53FullAccess --group-name $GROUP
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess --group-name $GROUP
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/IAMFullAccess --group-name $GROUP
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonVPCFullAccess --group-name $GROUP

aws iam create-user --user-name $USERNAME

aws iam add-user-to-group --user-name $USERNAME --group-name $GROUP

aws iam create-access-key --user-name $USERNAME