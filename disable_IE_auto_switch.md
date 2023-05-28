# Disable Auto switch from Internet Explorer to Edge

You may need to use Internet Explorer(IE) for some old sites or old applications. However, when you open IE, it is automatically switched to Edge.

This is due to Edge installs a Browser Helper Object (BHO) that hooks into Internet Explorer.

Internet Explorer to Microsoft Edge switching is done by the IE browser helper object: **IEToEdge BHO**.

If you cannot lauch the IE, click the search on the taskbar, type "Internet Explorer", the Internet Explorer will show up, right click, select **"start inPrivate browsing"**. Click the settings gear, then "manage add-on", there is an IEToEdge BHO add-on
```
Name:                   IEToEdge BHO
Publisher:              Microsoft Corporation
File:                   ie_to_edge_bho_64.dll
Folder:                 C:\Program Files (x86)\Microsoft\Edge\Application\113.0.1774.57\BHO
```

## To disable this auto switch add-on:

## Methods 1: Disable the IEToEdge BHO via Internet Options

1. Launch Internet Explorer, click Tools, Internet Options. Alternately, launch inetcpl.cpl from the Run dialog.
2. In the Internet Options, click the Advanced tab.
3. Under “Browsing,” disable the Enable third-party browser extensions checkbox.
4. Close all instances of Internet Explorer and relaunch.

## Methods 2: Disable the IEToEdge BHO via the Policies registry key
Start the Registry Editor (regedit.exe) and go to the following branch:
```
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Ext\CLSID
```

Double-click {1FD49718-1D00-4B19-AF5F-070AF6D5D54C} and set its data to 0

## Methods 3: Disable the IEToEdge BHO via renaming the BHO folder
The files are located in the following version numbered folder:
```
C:\Program Files (x86)\Microsoft\Edge\Application\[version_number]\BHO
```
Renaming the folder named BHO to BHO.old would prevent IE from loading the module. However, you’ll need to repeat this after **every Edge update**, as the folder name/version number changes after every update.

