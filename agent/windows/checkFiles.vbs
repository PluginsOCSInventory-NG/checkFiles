'Author: Valentin DEVILLE

'Change CUSTOM_PATH with your own file path 
file = Array("C:\CUSTOM_PATH_2", "C:\CUSTOM_PATH_1")

Set fso = CreateObject("Scripting.FileSystemObject")

For each item in file
    If (fso.FileExists(item)) Then
        exist = "Yes"
    Else
        exist = "No"
    End If

    Wscript.Echo _
    "<CHECKFILES>" & VbCrLf &_
    "<PATH>" & item & "</PATH>" & VbCrLf &_
    "<EXIST>" & exist & "</EXIST>" & VbCrLf &_
    "</CHECKFILES>"
Next
