MyHostedZone:
    Type: AWS::Route53::HostedZone
    Properties:
      Name: "teststaticwebsitecf.com." # Your domain name

  CloudFrontDNSRecord:
    Type: AWS::Route53::RecordSet
    Properties:
      HostedZoneId: !Ref MyHostedZone
      Name: "teststaticwebsitecf.com." # Your domain name
      Type: "A"
      AliasTarget:
        DNSName: !GetAtt CloudFrontDistribution.DomainName
        HostedZoneId: "Z2FDTNDATAQYW2" # Hosted Zone ID for CloudFront
      SetIdentifier: "MyCloudFrontAliasRecord"
