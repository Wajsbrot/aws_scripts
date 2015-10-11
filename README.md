# aws_scripts
With a configured AWS account, here's how to use those scripts. Before starting make sure that you have installed aws command line interface tools (``sudo pip install awscli``)

1. give the execution rights for all scripts: ``chmod +x aws_*.sh``
1. (only the first time) create your security group with aws_security_group.sh
1. (only the first time) create your key pair: ``./aws_keypair.sh``
1. execute aws_request.sh
1. check your request state with aws_check.sh
1. once your request state is 'active' you can retrieve its IP address with aws_set_ip.sh
1. to get the instance_ip environment variable, type ``source ~/.bashrc``
1. connect to your instance with aws_connect.sh
1. whenever you're done, terminate your instance with aws_kill.sh
