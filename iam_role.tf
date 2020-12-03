resource "aws_iam_user" "exam_user"{
	name = "exam_user"
	path = "/system/"
	tags = {
		source = "terraform"
	}
}

resource "aws_iam_access_key" "exam_user"{
	user = aws_iam_user.exam_user.name
} 

resource "aws_iam_user_policy" "exam_user_policy"{
	name = "exam_user_policy"
	user = aws_iam_user.exam_user.name
	
	policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "rds:*",
                "ec2:*"
            ],
            "Resource": "*"
        }
    ]
	
}

	EOF
}