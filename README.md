# Open Source Audit Project

## Student Details

- Name: Jitish Goyal
- Registration Number: 24MEI10020
- Course: Open Source Software
- Chosen Software: Git

---

## Project Description

An audit of the open-source program Git is presented in this project. The origin, licensing, ethical considerations, Linux implementation, ecosystem, and comparison with proprietary alternatives of Git are all examined in this report.

Five shell scripts have been created to show a practical grasp of Linux and Bash scripting concepts in addition to the theoretical analysis.

A separate PDF submission of the entire project report is available.

---

## Scripts Overview

### Script 1: System Identity Report

Shows system data, such as the Linux distribution, kernel version, home directory, uptime, current user, and license details.

---

### Script 2: FOSS Package Inspector

Verifies if Git is installed on the system, shows the version, and uses a case statement to give a brief description.

---

### Script 3: Disk and Permission Auditor

Looks at important system directories and shows how big they are, who owns them, and what permissions they have. It also looks at the details of the Git configuration file.

---

### Script 4: Log File Analyzer

Reads a log file, counts how many times a keyword (default: error) appears, and shows the last five lines that match.

---

### Script 5: Open Source Manifesto Generator

Takes what the user types in and makes a unique open source philosophy statement that is saved to a text file.

---

## How to Run the Scripts

### Step 1: Give Execution Permission

```bash
chmod +x script1_system_identity.sh
chmod +x script2_package_inspector.sh
chmod +x script3_disk_auditor.sh
chmod +x script4_log_analyzer.sh
chmod +x script5_manifest_generator.sh
```

### Step 2: Execute Scripts
Script 1
```bash
./script1_system_identity.sh
```

Script 2
```bash
./script2_package_inspector.sh
```

Script 3
```bash
./script3_disk_auditor.sh
```

Script 4
```bash
./script4_log_analyzer.sh test.log error
```

Script 5
```bash
./script5_manifest_generator.sh
```
### Requirements
> * Linux system (Debian/Ubuntu recommended)
> * Bash shell
> * Git installed