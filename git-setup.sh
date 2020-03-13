repo=org.javacream.training.java.demo
user=${1:-unknown}
git clone "https://github.com/Javacream/${repo}.git"
cd $repo
git config --local user.name $user
git config --local user.email "${user}@training.org"
git config --local push.default matching
git config --local alias.save '!git add . && git commit -m "working" && git push'
git remote set-url origin "https://javacream-training:javacream-training-4711@GitHub.com/Javacream/${repo}"
git checkout -b $user
echo "${user} ready" > setup.txt
git add .
git commit -m "setup"
git push --set-upstream origin $user

