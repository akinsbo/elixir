#To setup and start using codecommit
# At the command line, paste the following commands:
git config --global credential.helper "!aws codecommit credential-helper $@"
git config --global credential.UseHttpPath true

#Clone your repository to your local computer and start working on code:
git clone https://git-codecommit.eu-west-1.amazonaws.com/v1/repos/ledebe


# For example, to clone a repository named MyDemoRepo to a local repo named 
#my-demo-repo in the US East (Ohio) region:
#git clone https://git-codecommit.us-east-2.amazonaws.com/v1/repos/MyDemoRepo my-demo-repo