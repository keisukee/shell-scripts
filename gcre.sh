#!/bin/sh
# 作成したいレポの名前を聞く
username="keisukee"
read -p "Enter your new repository name: " reponame

# ここで作成(curlでjsonでPOSTしている）
curl -u $username https://api.github.com/user/repos -d '{"name":"'$reponame'"}'

# README.mdの空ファイルを作成している
touch README.md

# git initとかaddとかcommitとか
git init
git add -A
git commit -m "first commit"
git remote rm origin
git remote add origin https://github.com/$username/$reponame.git
git push -u origin master

# 作成後のレポジトリをブラウザで開きたいかどうか
read -p "Do you want to open the new repo page in browser?(y/n): " answer

case $answer in
  y)
    open https://github.com/$username/$reponame
    ;;
  n)
    ;;
  *)
    ;;
esac
