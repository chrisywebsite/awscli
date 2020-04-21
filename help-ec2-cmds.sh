# aws ec2
#
# create key pair
# aws ec2 create-key-pair --key-name MyKeyPair --query 'KeyMaterial' --output text > MyKeyPair.pem
# To create a key pair, use the create-key-pair command with the --query option, and the --output text option to pipe your private key directly into a file.
# aws ec2 describe-key-pairs --key-name MyKeyPair # display key fingure print
# aws ec2 delete-key-pair --key-name MyKeyPair # delete key pair