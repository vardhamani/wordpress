Resources:
  CloudFrontDNSRecord:
    Type: AWS::Route53::RecordSet
    Properties:
      HostedZoneId: "YOUR_EXISTING_HOSTED_ZONE_ID" # Replace with your existing hosted zone ID
      Name: "example.com." # Your domain name
      Type: "A"
      AliasTarget:
        DNSName: !GetAtt CloudFrontDistribution.DomainName # CloudFront domain name
        HostedZoneId: "Z2FDTNDATAQYW2" # Hosted Zone ID for CloudFront
