  Resources:
  ExistingCloudFrontDistribution:
    Type: AWS::CloudFront::Distribution
    Properties:
      DistributionConfig:
        Id: E1234567890EXAMPLE # Replace with your CloudFront distribution ID
        WebACLId: 'arn:aws:wafv2:region:account-id:global/webacl/webacl-id' # Replace with your WebACL ARN
