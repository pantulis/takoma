# Takoma

Takoma is a tool for managing switching AWS environments for several tools using
a unique credentials file.

## Prerequisites 

You have to install 'jq' and 'yq' utilities.

## Installation

To install takoma, read the code --do not trust this file-- and run:

    curl -fsSL https://github.com/pantulis/takoma/raw/master/install.sh | bash

If you are MacOS user, just copy takoma file to your real path:

		mv ~/bin/takoma /usr/local/bin/
   
## Usage

Takoma needs a special file `.takoma.json` in your home directory. If you are using Tacoma, you should have a working `~/.tacoma.yml` in your home directory. Takoma can migrate that for you with `takoma upgrade_from_tacoma`

The format of the `.takoma.json` file is pretty straighforward
```json
   "project": {
        "aws_identity_file": "/home/.ssh/project1.pem",
        "aws_access_key_id": "PUTHEREYOURACCESSKEYID",
        "aws_secret_access_key": "PUTHEREYOURAWSSECRETACCESSKEY",
        "repo": "/home/src/projects/project1"
    }
```
Once setup with a file like this, you can run

     takoma list

And it will list all the configured entries.  Running

     takoma switch project

Will add the specified identity file into the SSH agent, and will generate configuration files for the supported tools, which at this time are

- [Fog](https://github.com/fog/fog), which should work with Capistrano's capify-ec2.
- [Boto](https://github.com/boto/boto)
- [s3cmd](https://github.com/s3tools/s3cmd)
- [route53](https://github.com/pcorliss/ruby_route_53)
- [aws cli](https://github.com/aws/aws-cli)

Will display the current takoma version and list all available configuration templates (providers).

     takoma current

Will display the currently active takoma environment.

If you don't indicate a specific region, takoma will use the "eu-west-1" region by default.