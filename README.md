# AWS Elastic Beanstalk quick setup

###### *Assumes you have set up [EB CLI](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-reference-eb.html)

## Steps

1. `git init`
2. Add your project files and whatnot
3. `git commit -am 'yada yada'`
4. `eb init`
5. Answer all the questions that pop up on the CLI. **_Note:_** I would recommend visiting the AWS Console after you've done this step to make sure everything is set up. I had to set up my EC2 instance and RDS through the console.
    - Use Sample Application
    - Use micro instances if you're on the free tier
6. Visit your app at `<app-name-env>.elasticbeanstalk.com` to make sure it's up and running.
7. `eb deploy` pushes your app's code live.
8. If you're using RDB and want to connect to pgAdmin III, you will need to set up your Security Group to allow the IP you're trying to connect from:
    - Services > RDS > Instances
    - Click the magnifying glass to expand the details
    - Mouse over the "information" icon next to the green "authorized" and click on the link to the Security Group
    - Actions > Edit inbound rules
    - Add Rule > Custom TCP Rule > Copy the port > Change source to "My IP" > Save
    - You can now set up the connection in pgAdmin using your DB credentials