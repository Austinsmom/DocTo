        ��  ��                  E  <   T E X T   E X C E L F O R M A T S       0 	        xlAddIn=18
xlCSV=6
xlCSVMac=22
xlCSVMSDOS=24
xlCSVWindows=23
xlCurrentPlatformText=-4158
xlDBF2=7
xlDBF3=8
xlDBF4=11
xlDIF=9
xlExcel12=50
xlExcel2=16
xlExcel2FarEast=27
xlExcel3=29
xlExcel4=33
xlExcel4Workbook=35
xlExcel5=39
xlExcel7=39
xlExcel8=56
xlExcel9795=43
xlHtml=44
xlIntlAddIn=26
xlIntlMacro=25
xlOpenDocumentSpreadsheet=60
xlOpenXMLAddIn=55
xlOpenXMLTemplate=54
xlOpenXMLTemplateMacroEnabled=53
xlOpenXMLWorkbook=51
xlOpenXMLWorkbookMacroEnabled=52
xlSYLK=2
xlTemplate=17
xlTextMac=19
xlTextMSDOS=21
xlTextPrinter=36
xlTextWindows=20
xlUnicodeText=42
xlWebArchive=45
xlWJ2WD1=14
xlWJ3=40
xlWJ3FJ3=41
xlWK1=5
xlWK1ALL=31
xlWK1FMT=30
xlWK3=15
xlWK3FM3=32
xlWK4=38
xlWKS=4
xlWorkbookDefault=51
xlWorkbookNormal=-4143
xlWorks2FarEast=28
xlWQ1=34
xlXMLSpreadsheet=46
xlPDF=50000
   �
  ,   T E X T   H E L P       0 	        Help
Version:0.6.6
Source: http://github.com/tobya/DocTo/
Command Line Parameters
Each Parameter should be followed by its value  -f "c:\Docs\MyDoc.doc" -O "C:\MyDir\MyFile"
  -H  This message
  -F  Input File or Directory
  -O  Output File or Directory to place converted Docs
  -OX Output Extension if -F is Directory.
  -T  Format(Type) to convert file to, either integer or wdSaveFormat constant.
      Available from http://msdn.microsoft.com/en-us/library/microsoft.office.interop.word.wdsaveformat.aspx  or
      http://msdn.microsoft.com/en-us/library/office/bb241279(v=office.12).aspx
      See current List Below.
  -TF Force Format.  -T value if integer is checked against current list compiled in and not passed if unavailable.
      To future proof, -TF will pass through value without checking.
      Word will return an "EOleException  Value out of range" error if invalid.
      Use instead of -T.
  -L  Log Level 1 Errors Only, 2 Standard, 5 CHATTY, 10 VERBOSE
      Default: 2 Standard
  -C  Compatibility Mode. Set to an INTEGER value from https://msdn.microsoft.com/en-us/library/office/ff192388.aspx.
      If has a value SaveAs2 will be called.  Otherwise SaveAs is called.
  -G  Write Log to file in directory
  -GL Log File Name to Use default 'DocTo.Log';
  -Q  Quiet Mode: Nothing will be output to console.  To see any errors you must set -G or -GL
      Equivalent to setting -L 0
  -R  Remove Files after successful conversion: Default false;
  -W  Webhook: Url to call on events (plain url no params). See -HW for more details.
  -HW Webhook Help.
  -X  Halt on COM Error: Default True;  If you have trouble with some files not converting, set this to false to ignore
      errors and continue with batch job.


ERROR CODES:
200 : Invalid File Format specified
201 : Insufficient Inputs.  Minimum of Input File, Output File & Type
202 : Incorrect switches.  Switch requires value
203 : Unknown switch in command
220 : Word or COM Error
221 : Word not Installed

COMPATIBILITY MODES:
FROM https://msdn.microsoft.com/en-us/library/office/ff836084.aspx
wdCurrent   : 65535 (Compatibility mode equivalent to the latest version of Microsoft Word.)
wdWord2003  : 11  (Word 2010 is put into a mode that is most compatible with Word 2003. Features new to Word 2010 are disabled in this mode.)
wdWord2007  : 12  (Word 2010 is put into a mode that is most compatible with Office Word 2007. Features new to Word 2010are disabled in this mode.)
wdWord2010  : 14  (Word 2013 is put into a mode that is most compatible with . Features new to Word 2013are disabled in this mode.)
wdWord2013  : 15  (Default. All Word 2013 features are enabled.)
    4   T E X T   H E L P J S O N       0 	        JSON Format Help

TODO!   P  <   T E X T   H E L P W E B H O O K         0 	        Webhook Help

The Webhook URL will be called on the following events with the following parameters

  - File Converstion
    - action=convert
    - type=wdFormatType (or int if no matching format type)
    - ouputfilename=File being written to.
    - inputfilename=File being converted.

  - Error
    - action=error
    - type=wdFormatType (or int if no matching format type)
    - ouputfilename=File being written to.
    - inputfilename=File being converted.
    - error=Error Message

Return value is ignored, no errors are logged.  This is a fire and forget Webhook.

