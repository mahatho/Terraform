resource "aws_instance" "db" {

    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-02f9e1c5789ab2d55" ]
    instance_type = "t3.micro"
    tags = {
        Name = "data-source-practice"
    }
}