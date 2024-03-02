# Active Directory Group Member Finder

## Overview

This PowerShell script/function, `findmemberofgroup.ps1`, is designed to search Active Directory for groups matching a specified pattern and retrieve the members of those groups. It then filters the output to display accounts that do not match a specified pattern.

## Requirements

- **Active Directory PowerShell Module:** Ensure that the `ActiveDirectory` module is installed and available on the system where the script will be executed.

## Usage

1. **Import Active Directory Module:**
   ```powershell
   Import-Module ActiveDirectory
   ```

2. **Run the Script:**
   ```powershell
   .\findmemberofgroup.ps1
   ```

   The script will prompt the user with the accounts that need to be checked based on the specified pattern.

3. **Review Output:**
   The script output will display accounts that are members of groups matching the specified pattern but do not match the exclusion pattern (in this case, 'adm.'). 

## Script Details

- **Group Pattern:** The script searches for groups in Active Directory whose names match the pattern `ACL_*_LocalAdmin`.

- **Member Retrieval:** For each matching group, the script retrieves the members and displays their `SamAccountName`.

- **Exclusion Pattern:** The script filters the output to exclude accounts containing 'adm.'.

## Example

```powershell
Import-Module ActiveDirectory
.\findmemberofgroup.ps1
```

The output will list accounts to be checked, excluding those matching the exclusion pattern.

## Note

- Ensure that the script is executed with appropriate permissions to query Active Directory.

---

Feel free to customize this template based on your specific requirements and include additional information as needed.