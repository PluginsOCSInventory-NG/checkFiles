'Author: Valentin DEVILLE

file = Array("C:\Users\user\Desktop\ocs.txt", "C:\Program Files (x86)\putty\putty.exe")

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

