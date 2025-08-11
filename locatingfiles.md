# 1. Locating Files Using find Command
## Basic Syntax
**find [path] [expression] [action]**

## Common find Options
### By name
- find /home -name "*.txt"
- find . -name "config*"
- find / -iname "README*"        # Case insensitive

### By type
- find /var -type f              # Files only
- find /var -type d              # Directories only
- find /tmp -type l              # Symbolic links

### By size
- find /home -size +100M         # Larger than 100MB
- find /var -size -1k            # Smaller than 1KB
- find . -size 50c               # Exactly 50 bytes

### By time
- find /tmp -mtime -7            # Modified in last 7 days
- find /var -atime +30           # Accessed more than 30 days ago
- find . -ctime -1               # Changed in last 24 hours

### By Permissions and Ownership
- find /home -perm 644           # Exact permissions
- find /usr -perm -644           # At least these permissions
- find /tmp -user john           # Files owned by john
- find /var -group admin         # Files owned by admin group

# 2. Advanced find Options

## Logical Operators
- find . -name "*.txt" -and -size +1M
- find . -name "*.log" -or -name "*.tmp"
- find . -not -name "*.backup"
- find . \( -name "*.txt" -or -name "*.doc" \) -and -size +1M

## Actions on Found Files
### Execute commands
- find /tmp -name "*.tmp" -exec rm {} \;
- find . -name "*.txt" -exec grep "pattern" {} \;
- find /var -type f -exec chmod 644 {} \;

### Interactive execution
- find . -name "*.bak" -ok rm {} \;

### Print with additional info
- find . -name "*.log" -ls
- find . -type f -printf "%f %s bytes\n"

### Delete files
- find /tmp -name "*.tmp" -delete

## Performance Options
- find / -name "*.conf" -maxdepth 3    # Limit search depth
- find . -name "core" -prune           # Skip certain directories
- find /usr -path "*/bin/*" -name "python*"


# 3. locate Command

## Basic Usage
```
locate filename
locate "*.conf"
locate -i readme               # Case insensitive
locate -c "*.txt"              # Count matches only

```

## Database Management
```
sudo updatedb                  # Update locate database
locate -S                      # Show database statistics
locate -e filename             # Check if files exist
```

# Advantages vs find
- locate: Faster, uses pre-built database, good for filename searches
- find: Real-time, more flexible criteria, can perform actions

