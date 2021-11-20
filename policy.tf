resource "aws_iam_policy" "ec2_full" {
  name = "ec2_full"

  policy = <<EOF
  {
    "Version": "2012-10-17",
    "Statement": [{
        "Sid": "Sidtest",
        "Effect": "Allow",
        "Action": [
          "sqs:*"
        ],
        "Resource": [
          "<SQS ARN>"
        ]
      }, {
        "Effect": "Allow",
        "Action": [
          "s3:ListBucket",
          "s3:GetObject",
          "s3:GetBucketLocation"
        ],
        "Resource": [
          "arn:aws:s3:::<S3 bucket name>/*",
          "arn:aws:s3:::<S3 bucket name>"
        ]   
      }] 
  } 
EOF
}

# s3 bucket name
# SQS ARN