dt=`date +"%Y-%m-%d %H:%M:%S"`
repoDir=/home/monitor_gitlab_repo

git --git-dir=$repoDir/.git pull
echo  " " >> $repoDir/README.md
echo  "added at $dt  " >> $repoDir/README.md
git --git-dir=$repoDir/.git --work-tree=$repoDir commit $repoDir/README.md  -m 'added at $dt on gitworker0 '
git --git-dir=$repoDir/.git push
