echo What is your commit message?
read commitmessage
git add -A
git commit -m "$commitmessage"
git push
echo Your changes have been pushed to the repository with the message \"$commitmessage\"