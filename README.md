# AWS Elastic Beanstalk boilerplate

### Steps

1. `git init`
2. Add your project files and whatnot
3. `git commit -am 'yada yada'`
4. `eb init`
5. Answer all the questions that pop up on the CLI. I would recommend visiting the AWS Console to make sure everything is set up. I had to set up my EC2 instance and data tier through the console.
6. Visit your app at `<app-name-env>.elasticbeanstalk.com` to make sure it's up and running.
7. `eb deploy` pushes your app's code live.