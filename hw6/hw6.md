PS C:\Users\user> aws ec2 create-security-group --group-name 281024-wdm-paul-sg --description "Security Group for MySQL and HTTPS and SSH" --vpc-id vpc-0e84d428745fd3ebd

{

    "GroupId": "sg-0f503cfe117ec232c",

    "SecurityGroupArn": "arn:aws:ec2:eu-central-1:209540198371:security-group/sg-0f503cfe117ec232c"

}

PS C:\Users\user> aws ec2 authorize-security-group-ingress --group-id sg-0f503cfe117ec232c --protocol tcp --port 22 --cidr 0.0.0.0/0

{

    "Return": true,

    "SecurityGroupRules": [

        {

            "SecurityGroupRuleId": "sgr-0ba4a819435a92784",

            "GroupId": "sg-0f503cfe117ec232c",

            "GroupOwnerId": "209540198371",

            "IsEgress": false,

            "IpProtocol": "tcp",

            "FromPort": 22,

            "ToPort": 22,

            "CidrIpv4": "0.0.0.0/0",

            "SecurityGroupRuleArn": "arn:aws:ec2:eu-central-1:209540198371:security-group-rule/sgr-0ba4a819435a92784"

        }

    ]

}

PS C:\Users\user> aws ec2 authorize-security-group-ingress --group-id sg-0f503cfe117ec232c --protocol tcp --port 3306 --cidr 0.0.0.0/0

{

    "Return": true,

    "SecurityGroupRules": [

        {

            "SecurityGroupRuleId": "sgr-05c7dfef75f8f9b6a",

            "GroupId": "sg-0f503cfe117ec232c",

            "GroupOwnerId": "209540198371",

            "IsEgress": false,

            "IpProtocol": "tcp",

            "FromPort": 3306,

            "ToPort": 3306,

            "CidrIpv4": "0.0.0.0/0",

            "SecurityGroupRuleArn": "arn:aws:ec2:eu-central-1:209540198371:security-group-rule/sgr-05c7dfef75f8f9b6a"

        }

    ]

}

PS C:\Users\user> aws ec2 authorize-security-group-ingress --group-id sg-0f503cfe117ec232c --protocol tcp --port 443 --cidr 0.0.0.0/0

{

    "Return": true,

    "SecurityGroupRules": [

        {

            "SecurityGroupRuleId": "sgr-0aa622cf4f4e76c83",

            "GroupId": "sg-0f503cfe117ec232c",

            "GroupOwnerId": "209540198371",

            "IsEgress": false,

            "IpProtocol": "tcp",

            "FromPort": 443,

            "ToPort": 443,

            "CidrIpv4": "0.0.0.0/0",

            "SecurityGroupRuleArn": "arn:aws:ec2:eu-central-1:209540198371:security-group-rule/sgr-0aa622cf4f4e76c83"

        }

    ]

}

PS C:\Users\user> aws ec2 describe-security-groups --group-ids sg-0f503cfe117ec232c --query 'SecurityGroups[*].IpPermissions' --output json

[

    [

        {

            "IpProtocol": "tcp",

            "FromPort": 22,

            "ToPort": 22,

            "UserIdGroupPairs": [],

            "IpRanges": [

                {

                    "CidrIp": "217.232.16.79/32"

                }

            ],

            "Ipv6Ranges": [],

            "PrefixListIds": []

        },

        {

            "IpProtocol": "tcp",

            "FromPort": 3306,

            "ToPort": 3306,

            "UserIdGroupPairs": [],

            "IpRanges": [

                {

                    "CidrIp": "0.0.0.0/0"s

                }

            ],

            "Ipv6Ranges": [],

            "PrefixListIds": []

        },

        {

            "IpProtocol": "tcp",

            "FromPort": 443,

            "ToPort": 443,

            "UserIdGroupPairs": [],

            "IpRanges": [

                {

                    "CidrIp": "0.0.0.0/0"

                }

            ],

            "Ipv6Ranges": [],

            "PrefixListIds": []

        }

    ]

]
PS C:\Users\user> aws ec2 delete-security-group --group-id sg-0f503cfe117ec232c

{

    "Return": true,

    "GroupId": "sg-0f503cfe117ec232c"

}

PS C:\Users\user>
