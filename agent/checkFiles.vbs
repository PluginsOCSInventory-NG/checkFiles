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


    Wscript.Echo "<CHECKFILES>"
    Wscript.Echo "<PATH>" & item & "</PATH>"
    Wscript.Echo "<EXIST>" & exist & "</EXIST>"
    Wscript.Echo "</CHECKFILES>"

Next

