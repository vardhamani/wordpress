AWSTemplateFormatVersion: '2010-09-09'
Description: A template for creating a Route 53 hosted zone and alias record for example.com

Resources:
  MyHostedZone:
    Type: AWS::Route53::HostedZone
    Properties:
      Name: "example.com." # Your domain name

  CloudFrontDNSRecord:
    Type: AWS::Route53::RecordSet
    Properties:
      HostedZoneId: !Ref MyHostedZone
      Name: "example.com." # Your domain name
      Type: "A"
      AliasTarget:
        DNSName: !GetAtt CloudFrontDistribution.DomainName # CloudFront domain name
        HostedZoneId: "Z2FDTNDATAQYW2" # Hosted Zone ID for CloudFront

Outputs:
  HostedZone:
    Value: !Ref MyHostedZone
