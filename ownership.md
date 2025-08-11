# 1. Understanding File Permissions

## Key Concepts

### Three Types of Permissions:

- Read (r/4): View file contents or list directory contents
- Write (w/2): Modify file contents or create/delete files in directory
- Execute (x/1): Run file as program or access directory

### Three User Categories:

- Owner (u): The user who owns the file
- Group (g): Users belonging to the file's group
- Others (o): All other users on the system

### Permission Representations:

- **Symbolic:** rwxrw-r-- (9 characters)
- **Octal:** 764 (3 digits)
- **Numeric calculation:** r=4, w=2, x=1

### Permission Examples
- -rwxr-xr--  = 754 (Owner: rwx=7, Group: r-x=5, Others: r--=4)
- drwxrwxr-x  = 775 (Directory with full access for owner/group)
- -rw-------  = 600 (File readable/writable only by owner)

### Special Permissions
- **Setuid (4000):** Execute with owner's privileges
- **Setgid (2000):** Execute with group's privileges
- **Sticky Bit (1000):** Only owner can delete files in directory

# 2. Viewing and Changing File Ownership

## Viewing Ownership
```
ls -l filename          # View detailed file information
ls -la                  # View all files including hidden ones
stat filename           # Detailed file statistics
id username             # View user and group IDs
 ```

## Changing Ownership Commands
- **chown:** Change file owner

```
chown newowner filename
chown newowner:newgroup filename
chown -R newowner directory/    # Recursive for directories

```

- **chgrp:** Change group ownership

```
chgrp newgroup filename
chgrp -R newgroup directory/

```

### Important Notes
- Only root or file owner can change ownership
- Use -R flag for recursive changes on directories
- Format: user:group or just user or :group

## 3. Modifying Permissions with chmod
### Symbolic Method
```
chmod u+x filename      # Add execute for owner
chmod g-w filename      # Remove write for group
chmod o=r filename      # Set others to read only
chmod a+r filename      # Add read for all (a = all)
chmod u+rwx,g+rx,o+r filename  # Multiple permissions

```
### Octal Method

```
chmod 755 filename      # rwxr-xr-x
chmod 644 filename      # rw-r--r--
chmod 600 filename      # rw-------
chmod 777 filename      # rwxrwxrwx (dangerous!)

```

#### Common Permission Sets
- 755: Executable files (owner can modify, others can execute)
- 644: Regular files (owner can modify, others can read)
- 600: Private files (only owner access)
- 775: Shared directories
- 700: Private directories



