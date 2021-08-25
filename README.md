# Check files
Retrieve if specific file exist and get its content if needed.

## Configuration
Paths to files must be specified line 5 :
```ps1
$paths = @("\path\to\file", "\path\to\secondfile")
```

To turn off content retrieval, please modify the **agent/checkFiles.ps1**, line 2 :

```ps1
$getFileContent = $True
```
