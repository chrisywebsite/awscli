# aws s3 commands. 
# 
# ############ HIGH LEVEL ##################3
# aws s3 mb s3://bucket-name
# aws s3 ls
# aws s3 rb s3://bucket-name
# aws s3 rb s3://bucket-name --force # remove non-empty bucket
# 
# --grants
# s3 cp, s3 mv, s3 sync commands include --grants Permission=Grantee_Type=Grantee_ID
# Permission – Specifies the granted permissions, and can be set to read, readacl, writeacl, or full.
# Grantee_Type – Specifies how to identify the grantee, and can be set to uri, emailaddress, or id.
# Grantee_ID – Specifies the grantee based on Grantee_Type.
# - uri – The group's URI. For more information, see Who Is a Grantee?
# - emailaddress – The account's email address.
# - id – The account's canonical ID.
#
# --storage-class You can also specify a nondefault storage class (REDUCED_REDUNDANCY or STANDARD_IA) for objects that you upload to Amazon S3
# aws s3 cp file.txt s3://my-bucket/ --storage-class REDUCED_REDUNDANCY
#
# s3 sync
# aws s3 sync <source> <target> [--options]
# Typically, s3 sync only copies missing or outdated files or objects between the source and target. 
# However, you can also supply the --delete option to remove files or objects from the target that are not present in the source.
# Sync with deletion - missing object is deleted from bucket
# aws s3 sync . s3://my-bucket/path --delete
#
# --exclude and --include
# aws s3 sync . s3://my-bucket/path --exclude "*.txt" --include "MyFile*.txt" --exclude "MyFile?.txt"
# You can use the --exclude and --include options to specify rules that filter the files or objects to copy during the sync operation. 
# By default, all items in a specified folder are included in the sync. 
# Therefore, --include is needed only when you have to specify exceptions to the --exclude option (that is, --include effectively means "don't exclude"). 
# The options apply in the order that's specified, as shown in the following example.
# 
# --acl
# The s3 sync command also accepts an --acl option, 
# by which you may set the access permissions for files copied to Amazon S3. 
# The --acl option accepts private, public-read, and public-read-write values.
# 
# cp, mv, ls, rm
# As previously mentioned, the s3 command set includes cp, mv, ls, and rm, and they work in similar ways to their Unix counterparts. The following are some examples.
# When you use the --recursive option on a directory or folder with cp, mv, or rm, the command walks the directory tree, including all subdirectories. 
# These commands also accept the --exclude, --include, and --acl options as the sync command does.
# 
#  ############ API LEVEL ##################
# Apply Custom ACL to bucket
# The following example shows how to grant full control to two AWS users (user1@example.com and user2@example.com) and read permission to everyone. The identifier for "everyone" comes from a special URI that you pass as a parameter.
# aws s3api put-bucket-acl --bucket MyBucket --grant-full-control 'emailaddress="user1@example.com",emailaddress="user2@example.com"' --grant-read 'uri="http://acs.amazonaws.com/groups/global/AllUsers"'
# 
# Reference: https://docs.aws.amazon.com/cli/latest/userguide/cli-services-s3-apicommands.html
# 
# 
#
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
#
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
#
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
#
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
#
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
#
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
#
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
#

