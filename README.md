# Xây dựng nhanh một môi trường AWS đơn giản bằng Terraform

## Mô hình

![simple_infras](https://github.com/hieuldt/quick_lab/blob/main/simple_infras.png)

## Hướng dẫn

Trước khi bắt đầu sử dụng; hãy chắc chắn bạn đã truy cập vào trang Console của AWS và tạo một Key Pair
https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#KeyPairs:

Hay đổi nội dung trong file *terraform.tfvars* sao cho phù hợp với thông tin của bạn
```
access_key = "Paste your Access Key ID here"
secret_key = "Paste your Secret Access Key here"
key_name   = "Paste your Key Pair Name here"
```
Command tạo keypair:

```
aws ec2 create-key-pair --key-name my-key-pair --query "KeyMaterial" --output text > my-key-pair.pem
aws ec2 describe-key-pairs --key-name my-key-pair
```

Sau khi thiết lập xong thì chạy lệnh để Terraform bắt đầu khởi tạo môi trường
```
terraform init
terraform apply
```

Add ssh key vào máy bằng lệnh
```
ssh-add -K <Key Pair Name>
ssh-add -L <Key Pair Name>
```

Thực hiện truy cập bằng
```
ssh -A ec2-user@<public IP của SSH Gateway>
ssh ec2-user@<private IP của Protected Server>
