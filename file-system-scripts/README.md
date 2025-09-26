# File System Scripts

This folder is part of the **Operating System Projects** repository.  
It contains Bash scripts illustrating core **file system, linking, and permission** operations in Linux.

---

## 📂 Contents

### `make_diroctory_loop.sh`
- Creates nested directories (`dir1/dir2`).  
- Places a **symbolic link** inside `dir2` pointing back to `dir1`.  
- Prints status messages to show progress.

**Concepts:** directory creation, symbolic links, shell scripting.

---

###  `make_links_to_file.sh`
- Generates a file (e.g. `file1`).  
- Creates **hard links** (`link1`, `link2`, `link3`) pointing to that file.  

**Concepts:** hard links, file reference counting.

---

###  `make_course_grading_structure.sh`
- Builds a **grading directory structure** (e.g. `grades/`).  
- Creates subfolders for students and `grade.txt` files.  
- Adds users (coordinator, TAs, students) and groups.  
- Sets up file ownership and permissions to control access.

**Concepts:** user & group management, file permissions, ownership.  
 Requires **sudo** privileges to run this script.

---

###  `names.txt`
- Contains team member names and IDs, for example:
  ```
  Mustafa Habeb mh224tb
  Sohil Moghimiazar sm223sc
  Ville Ekdal ve222hb
  ```

---

##  Requirements

- Bash shell (Linux / Unix)  
- `sudo` privileges (for scripts that create users/groups)  
- Standard Linux filesystem commands (`mkdir`, `ln`, `chmod`, `chown`, `useradd`, `groupadd`)  

---

##  Usage

Run any script via the shell:
```bash
bash script_name.sh
```

For example:
```bash
bash make_diroctory_loop.sh
```

---

##  Purpose & Learning Goals

These scripts were created to help you understand and practice:
- File and directory operations  
- Hard links vs symbolic links  
- User, group, and file permission management  
- Scripting automation of Linux system tasks

---

##  Author

**Mustafa Habeb**  
**Sohil Moghimiazar**
**Ville Ekdal**
---

## 📜 License

This folder is covered under the **MIT License** (same as root project).
