# File Permissions & Ownership in Linux

## 1. Understanding File Permissions

### **Key Concepts**

#### **Three Types of Permissions**
- **Read (r / 4)**: View file contents or list directory contents.
- **Write (w / 2)**: Modify file contents or create/delete files in a directory.
- **Execute (x / 1)**: Run file as a program or access directory.

#### **Three User Categories**
- **Owner (u)**: The user who owns the file.
- **Group (g)**: Users belonging to the file's group.
- **Others (o)**: All other users on the system.

#### **Permission Representations**
- **Symbolic**: `rwxrw-r--` (9 characters)
- **Octal**: `764` (3 digits)
- **Numeric Calculation**: `r=4`, `w=2`, `x=1`

---

### **Permission Examples**
| Symbolic      | Octal | Description |
|---------------|-------|-------------|
| `-rwxr-xr--`  | 754   | Owner: `rwx`=7, Group: `r-x`=5, Others: `r--`=4 |
| `drwxrwxr-x`  | 775   | Directory with full access for owner/group |
| `-rw-------`  | 600   | File readable/writable only by owner |

---

### **Special Permissions**
- **Setuid (4000)**: Execute with owner's privileges.
- **Setgid (2000)**: Execute with group's privileges.
- **Sticky Bit (1000)**: Only owner can delete files in directory.

---

## 2. Viewing and Changing File Ownership

### **Viewing Ownership**
```bash
ls -l filename          # View detailed file information
ls -la                  # View all files including hidden ones
stat filename           # Detailed file statistics
id username             # View user and group IDs


