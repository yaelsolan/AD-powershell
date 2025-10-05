# Active Directory PowerShell Scripts

This repository contains PowerShell scripts and command snippets for administering Active Directory environments.  
The content is based on real operational tasks such as user management, permissions, group membership, OU queries, and remote sessions.

## 📂 Scripts & Command Files Included

- **User Account Management**
  - Enable User Account
  - Disable User Account
  - Get AD Users by Name
  - Get All Disabled User Accounts
  - Get All Accounts with Password Set to Never Expire

- **Group & Permission Management**
  - Add AD Group Member
  - Remove_AllGroups_AD_User.ps1
  - Automation to change user permissions due to department move
  - #Automation - Adding permissions for users working in 2 departments

- **OU & Query Operations**
  - Get All Users From a Specific OU
  - Import Module ActiveDirectory
  - Properties of user

- **Remote Sessions & System Actions**
  - PSSession.txt
  - Restart Computer.txt
  - whatif.txt

## ⚙️ Usage Notes
- Some files are `.ps1` scripts and others are `.txt` command references.
- Scripts may require the **ActiveDirectory** module (`Import-Module ActiveDirectory`).
- Replace environment-specific values (usernames, OUs, servers) before running in production.
- Use `-WhatIf` and test on non-production systems when applicable.

