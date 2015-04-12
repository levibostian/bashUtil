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

## Scripts:

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
