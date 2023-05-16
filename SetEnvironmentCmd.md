# Set/Unset/Change an Environment Variable for the "Current" CMD Session

To set (or change) a environment variable, use command "set varname=value". There shall be no spaces before and after the '=' sign. To unset an environment variable, use "set varname=", i.e., set it to an empty string.
```
set varname
set varname=value
set varname=
set
```
Display the value of the variable
Set or change the value of the variable (Note: no space before and after '=')
Delete the variable by setting to empty string (Note: nothing after '=')
Display ALL the environment variables
For examples,
```
// Set an environment variable called OUTPUT_PATH
set OUTPUT_PATH=hello
   
// Display
set OUTPUT_PATH
OUTPUT_PATH=hello
   
// Unset an environment variable
set OUTPUT_PATH=
   
// Display
set OUTPUT_PATH
Environment variable OUTPUT_PATH not defined
```

# To reference a variable in Windows
Use %varname% (with prefix and suffix of '%'). For example, you can use the echo command to print the value of a variable in the form "echo %varname%".
```
// Display the PATH environment variable
echo %PATH%
PATH=xxxxxxx
   
// Append a directory in front of the existing PATH
set PATH=c:\myBin;%PATH%
PATH=c:\myBin;[existing entries]
```
