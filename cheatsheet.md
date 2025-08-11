# Permission Basics
## Setup:
```
mkdir workshop
cd workshop
echo "Hello World" > file1.txt
echo "Secret data" > private.txt
mkdir shared_folder
echo "#\!/bin/bash\necho 'Hello from script'" > script.sh
```

## Activities:
- Examine permissions: ls -l and explain each part
- Try accessing files: cat private.txt vs cat file1.txt
- Run script without execute: ./script.sh (should fail)
- Add execute permission: chmod +x script.sh and try again
- Create permission scenarios: Different users try accessing files
  
# Ownership Changes
## Activities:
```
Create test users: sudo useradd testuser1, sudo useradd testuser2
Change ownership: sudo chown testuser1 file1.txt
Change group: sudo chgrp testuser2 shared_folder
Verify changes: ls -l and stat filename
Practice recursive changes: chown -R testuser1:testuser1 shared_folder/
```

# chmod Mastery
## Scenarios to Practice:
Web server files: Make HTML files readable by all but writable only by owner
```
touch index.html style.css
chmod 644 *.html *.css
```

Executable scripts: Make scripts executable for owner and group
```
touch backup.sh deploy.sh
chmod 750 *.sh
```

Private directory: Create a directory only accessible by owner

```
mkdir private_docs
chmod 700 private_docs
```

Shared project: Directory where group members can collaborate

```
mkdir project_shared
chmod 775 project_shared
```

# find Command Practice 
## Create test environment:
```
mkdir -p test_files/{docs,scripts,logs,backup}
touch test_files/docs/{readme.txt,manual.pdf,guide.doc}
touch test_files/scripts/{backup.sh,deploy.py,test.rb}
touch test_files/logs/{app.log,error.log,debug.tmp}
touch test_files/backup/{data.bak,config.backup}
```

## Challenges:
- Find all .txt files: find test_files -name "*.txt"
- Find files larger than 0 bytes: find test_files -size +0c
- Find executable files: find test_files -type f -executable
- Find and delete .tmp files: find test_files -name "*.tmp" -delete
- Find files and change permissions: find test_files -name "*.sh" -exec chmod +x {} \;
  
# Advanced find & locate (20 minutes)
## Complex scenarios:
Security audit: Find all world-writable files

```
find /tmp -perm -002 -type f
```

Cleanup task: Find and remove old log files
```
find /var/log -name "*.log" -mtime +30 -exec ls -l {} \;
```

locate practice:
```
sudo updatedb
locate passwd
locate -c "*.conf"
```
# Quick Reference Commands

## Essential Commands Summary
### Viewing
- ls -l, stat, id

### Ownership
- chown user:group file
- chgrp group file

### Permissions
- chmod 755 file
- chmod u+rwx,g+rx,o+r file

### Finding
- find /path -name "pattern"
- find . -type f -size +100M
- locate filename

### Common Patterns
- find . -name "*.log" -mtime +7 -delete
- find /var -perm -002 -type f
chmod -R 755 directory/
chown -R user:group directory/
