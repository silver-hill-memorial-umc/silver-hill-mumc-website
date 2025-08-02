# AWS S3 Deployment Setup

This document outlines the steps to configure AWS S3 hosting and GitHub Actions deployment for the Silver Hill Memorial UMC website.

## Required AWS Resources

### 1. S3 Bucket Configuration

Create an S3 bucket for static website hosting:

```bash
# Replace 'your-bucket-name' with your actual bucket name
aws s3 mb s3://your-bucket-name --region us-east-1
```

#### Bucket Settings:
- **Bucket name**: Choose a unique name (e.g., `silverhillmumc-website`)
- **Region**: Recommend `us-east-1` for better performance
- **Public access**: Enable for static website hosting
- **Static website hosting**: Enable with `index.html` as index document

#### Bucket Policy:
Add this policy to make the bucket publicly readable:

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::your-bucket-name/*"
        }
    ]
}
```

### 2. IAM User for GitHub Actions

Create an IAM user with programmatic access:

#### Required Permissions:
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:PutObject",
                "s3:PutObjectAcl",
                "s3:GetObject",
                "s3:DeleteObject",
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::your-bucket-name",
                "arn:aws:s3:::your-bucket-name/*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "cloudfront:CreateInvalidation"
            ],
            "Resource": "*"
        }
    ]
}
```

### 3. CloudFront Distribution (Optional but Recommended)

For better performance and HTTPS support:

- **Origin**: Point to your S3 bucket website endpoint
- **Default Root Object**: `index.html`
- **Error Pages**: Configure 404 errors to redirect to `/404.html`
- **SSL Certificate**: Use AWS Certificate Manager for custom domain

## GitHub Secrets Configuration

Add these secrets to your GitHub repository:

### Required Secrets:
- `AWS_ACCESS_KEY_ID`: IAM user access key
- `AWS_SECRET_ACCESS_KEY`: IAM user secret key
- `AWS_REGION`: AWS region (e.g., `us-east-1`)
- `S3_BUCKET_NAME`: Your S3 bucket name

### Optional Secrets:
- `CLOUDFRONT_DISTRIBUTION_ID`: CloudFront distribution ID (for cache invalidation)

### How to Add Secrets:
1. Go to your GitHub repository
2. Navigate to Settings → Secrets and variables → Actions
3. Click "New repository secret"
4. Add each secret with the exact names listed above

## Custom Domain Setup (Optional)

### Route 53 Configuration:
1. Create a hosted zone for your domain
2. Add an A record (alias) pointing to your CloudFront distribution
3. Update your domain's nameservers to use Route 53

### SSL Certificate:
1. Request a certificate in AWS Certificate Manager
2. Validate domain ownership
3. Attach certificate to CloudFront distribution

## Deployment Process

The GitHub Actions workflow will:

1. **Trigger**: On push to `main` branch
2. **Build**: Install dependencies and run `mkdocs build`
3. **Test**: Validate the build completes successfully
4. **Deploy**: Sync files to S3 with `--delete` flag
5. **Cache**: Invalidate CloudFront cache (if configured)

## Monitoring and Troubleshooting

### Build Logs:
- Check GitHub Actions tab for build status
- Review logs for any errors during build or deployment

### AWS CloudWatch:
- Monitor S3 access logs
- Set up CloudWatch alarms for deployment failures

### Testing Deployment:
```bash
# Test the S3 website endpoint
curl -I http://your-bucket-name.s3-website-us-east-1.amazonaws.com

# Test CloudFront distribution
curl -I https://your-domain.com
```

## Cost Considerations

### S3 Costs:
- Storage: ~$0.023/GB/month
- Requests: $0.0004 per 1,000 requests
- Data transfer: $0.09/GB (first 1GB free)

### CloudFront Costs:
- First 1TB: $0.085/GB
- Additional benefits: Global CDN, DDoS protection

### Estimated Monthly Cost:
For a typical church website: **$1-5/month**

## Security Best Practices

1. **IAM Principle of Least Privilege**: Only grant necessary S3 permissions
2. **Rotate Access Keys**: Regularly update AWS credentials
3. **Enable CloudTrail**: Log all AWS API calls
4. **S3 Bucket Versioning**: Enable to protect against accidental deletions
5. **Backup Strategy**: Regular backups of S3 content

## Support

For technical issues:
- AWS Documentation: https://docs.aws.amazon.com/s3/
- GitHub Actions Documentation: https://docs.github.com/en/actions
- MkDocs Documentation: https://www.mkdocs.org/

---

*This setup provides a professional, scalable hosting solution for Silver Hill Memorial UMC's website with automatic deployments and global content delivery.*