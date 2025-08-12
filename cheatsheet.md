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
  

# Quick Reference Commands

## Essential Commands Summary
### Viewing
- ls -l, stat, id

### Finding
- find /path -name "pattern"
- find . -type f -size +100M
- locate filename
