aws ec2 describe-images \
  --owners amazon \
  --filters \
    'Name=name,Values=amzn-ami-????.??.g-amazon-ecs-optimized' \
    'Name=state,Values=available' \
    'Name=architecture,Values=x86_64' \
    'Name=virtualization-type,Values=hvm' \
    'Name=root-device-type,Values=ebs' \
  --query 'sort_by(Images, &CreationDate)[-1].ImageId'
