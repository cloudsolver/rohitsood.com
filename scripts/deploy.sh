#!/bin/bash
BUCKET_NAME="rohitsood.com"
echo "Pushing contents of ../www to the AWS Cloud on s3://${BUCKET_NAME}"
aws s3 sync ../ "s3://${BUCKET_NAME}" \
    --exclude ".*" \
    --exclude "*.sh"

echo "Task finished"
aws s3 ls "${BUCKET_NAME}"
