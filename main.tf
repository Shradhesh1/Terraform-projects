resource "aws_s3_bucket" "t" {
    bucket = "my-devops-bucket-shradhesh12345"
    
    tags =  {
        Name = "mydevopsbucket"
        Environment = "Production"
        acl = "private" 
        }

    }
    
    resource "aws_s3_bucket_versioning" "t_versioning" {
        bucket = aws_s3_bucket.t.id
        versioning_configuration {
            status = "Enabled"
        }
    }
