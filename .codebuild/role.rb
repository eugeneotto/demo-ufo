iam_policy(
  "cloudformation",
  "ec2",
  "ecr",
  "ecs",
  "elasticloadbalancing",
  "elasticloadbalancingv2",
  "logs",
  "route53",
  "ssm",
  {
      "Action": [
          "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Condition": {
          "StringLike": {
              "iam:PassedToService": [
                  "ecs-tasks.amazonaws.com"
              ]
          }
      }
  }
)
managed_iam_policy("AmazonS3ReadOnlyAccess") # optional but common to need read only access to s3
