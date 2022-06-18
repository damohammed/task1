Task 1

mkdir exadeltask
cd exadeltask
nano README.md
git init
cd ~/.ssh/
ssh-keygen -t rsa -b 4096 -C "mo7amad999999@gmail.com"
cat id_rsa
ssh-add
cd ~/exadeltask

Task 2

git add README.md
git commit -m "my first commit"
git remote add origin
git remote set-url origin git@github.com:damohammed/task1.git

Task 3
git push -u origin master
mkdir task1
mv README.md task1
cd task1
git add .
git commit -m "added new folder with Readme"
git push

Task 4 

git checkout -b dev
nano testfile
git commit -m "this is task4 testfile"
git push -u origin dev

Task 5

git branch -b %USERNAME-new_feature
mkdir username
cd username/
ls

Task 6

nano README.md

Task 7

git status

Task 8

nano .gitignore
git config --global core.exclidesFile ~/exadeltask/username/.gitignore
nano .gitignore 
git commit -m "ignoring all files that start with . (hidden files)"
ls
git add .
git commit -m "ignoring all files that start with . (hidden files)"
git branch

Task 9

git push -u origin %USERNAME-new_feature

Task 11

git branch
git checkout dev
git merge master
git checkout master
nano new.txt
git add new.txt
git commit -m "added new file"
git checkout dev
git merge master
git push

Task 12

git checkout %USERNAME-new_feature
nano README.md 
git add README.md 
git commit -m "changes of README (task 12) "
git push -f
git log
git revert 35c5e15965e7784677631ea5cf38a8ebe3b84a79
git push -f

Task 13

git log
git checkout master
touch log.txt
git log >> log.txt
git add log.txt 
git commit -m "log file created"
git push

Task 14

git branch -d %USERNAME-new_feature 
git push origin --delete %USERNAME-new_feature

Task 15
git checkout dev
nano git_commands.md
