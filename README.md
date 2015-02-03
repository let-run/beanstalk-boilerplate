# AWS Elastic Beanstalk quick setup

###### *Assumes you have set up [EB CLI](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-reference-eb.html)

## Steps

1. `git init`
2. Add your project files and whatnot
3. `git commit -am 'yada yada'`
4. `eb init`
5. Answer all the questions that pop up on the CLI. **_Note:_** I would recommend visiting the AWS Console after you've done this step to make sure everything is set up. I had to set up my EC2 instance and RDS through the console
    - Use Sample Application
    - Use micro instances if you're on the free tier
6. Visit your app at `<app-name-env>.elasticbeanstalk.com` to make sure it's up and running
7. `eb deploy`
    - This will deploy your latest commit to EB
8. Done

#### Optional

If you're using RDB and want to connect to DB administration tools (e.g. pgAdmin), you will need to set up your Security Group to allow the IP you're trying to connect from:
1. Services > RDS > Instances
2. Click the magnifying glass to expand the details
3. Mouse over the "information" icon next to the green "authorized" and click on the link to the Security Group
4. Actions > Edit inbound rules
5. Add Rule > Custom TCP Rule > Copy the port > Change source to "My IP" > Save
6. You can now set up the connection in your admin tool using your DB credentials