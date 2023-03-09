#!/bin/bash
echo "Pushing contents of ../www to the AWS Cloud on s3://rohitsood.com"
aws s3 sync ../www s3://rohitsood.com 
echo "Task finished"

