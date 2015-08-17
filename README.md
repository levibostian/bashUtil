bashUtil
========

Bash scripts making my bash experience more efficient.  

Add "--help" flag to end of any script to get description of all special features of script:
```
$> symLinkGen --help
Useage: symLinkGen [options] executableName
options:
  -r : remove symlink
```

You probably want to add the directory of bashUtil in your $PATH so that all of the commands are available without specifying your full path. Just an idea. 

## Scripts:

### badHeroku.sh
```
$> badHeroku.sh whatever arguments you want to run
```
Unsets $DATABASE_URL and runs command for you. Use if you are running rails app that doesn't use postgresql or Heroku.

### disableNetworking.sh
```
$> disableNetworking.sh
```
Disables networking. Works on Ubuntu based distros of Linux.  

### enableNetworking.sh
```
$> enableNetworking.sh
```
Enables networking. Works on Ubunut based distros of Linux. 

### ghostUpgrade.sh
```
$> cd /directory/of/ghost/install
$> ghostUpgrade.sh httpsDownloadLinkFromGhostWebsite
```
Upgrades existing Ghost.org blog to newer version.

### gitAuthor
```
$> cd /directory/of/git/repo
$> gitAuthor "John Doe" john.doe@gmail.com
```
Sets git author settings of repo

### gitForgetAllFromGitignore.sh
```
$> cd /directory/of/git/repo
$> gitForgetAllFromGitignore.sh
```
When you have a git repo that you add a bunch of different files to and then
later in the future you decide to add a .gitignore that now ignores files 
that were previously tracked by git. Instead of `git rm --cached <file>` 
every single file individually, just run this script to go through them all.

### gitHistoryRewrite
```
$> cd /directory/of/git/repo
$> gitHistoryRewrite.sh oldEmail correctName correctEmail
```
Changes git repo author history to correctName and correctEmail is author has the oldEmail.

### git-local-sweep
```
$> cd /directory/of/git/repo
$> git-local-sweet 
```
Deletes all local git branches merged into master (or other branch you wish).

### gitListAuthors.sh
```
$> cd /directory/of/git/repo
$> gitListAuthors.sh
Levi Bostian <levi.bostian@gmail.com>
```
Lists all contributors of a git repo with name and email.

### keepup.sh
```
$> keepup.sh nameOfProgramHere
```
Script to check if process is running. If not, it starts it. 
Designed to be used as a cron job:
```
$> crontab -e
# type following below to check if rescuetime running every 5 minutes.
# */5 * * * * /location/of/bashUtil/keepup.sh rescuetime rescuetime
```

### ll
```
$> ll
total 32K
drwxr-xr-x  3 levi levi 4.0K Mar 27 17:47 .
drwxrwxrwx 13 levi levi 4.0K Mar 18 16:02 ..
drwxr-xr-x  8 levi levi 4.0K Mar 21 12:34 .git
-rwxr--r--  1 levi levi  172 Mar 21 12:28 gitAuthor
-rw-r--r--  1 levi levi 1.1K Mar 18 16:02 LICENSE
-rwxr--r--  1 levi levi  176 Mar 27 17:47 ll
-rw-r--r--  1 levi levi  356 Mar 20 08:55 README.md
-rwxr--r--  1 levi levi  511 Mar 21 12:31 symLinkGen
```
Shorthand for: ls -lh

### makeExec.sh
```
$> makeExec.sh keepup.sh
```
Changes permissions of keepup.sh to 775. Used when creating a new bash script.

### merge-into-master.sh
```
&> merge-into-master.sh branch-name -d
```
Merges git branch 'branch-name' into master and deletes branch after merge if '-d' set as second argument.

### mv-all-files.sh
```
$> mv-all-files.sh dir/* newDir/*
```
mv dir/* newDir/ <-- this command does not include hidden files inside dir.
This script allows you to move all files including hidden. 

### symLinkGen
```
$> cd /directory/containing/executable/
$> symLinkGen executableName
```
Creates a symbolic link /usr/bin/executableName

### wordpress_site_install.sh
```
$> wordpress_site_install.sh directoryToInstallSiteTo mysqlUserName
```
Installs WordPress website to directoryToInstallSiteTo location.
