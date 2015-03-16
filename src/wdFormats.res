        ��  ��                    <   T E X T   W O R D F O R M A T S         0 	        wdFormatDOSTextLineBreaks=5
wdFormatEncodedText=7
wdFormatFilteredHTML=10
wdFormatOpenDocumentText=23
wdFormatHTML=8
wdFormatRTF=6
wdFormatStrictOpenXMLDocument=24
wdFormatTemplate=1
wdFormatText=2
wdFormatTextLineBreaks=3
wdFormatUnicodeText=7
wdFormatWebArchive=9
wdFormatXML=11
wdFormatDocument97=0
wdFormatDocumentDefault=16
wdFormatPDF=17
wdFormatTemplate97=1
wdFormatXMLDocument=12
wdFormatXMLDocumentMacroEnabled=13
wdFormatXMLTemplate=14
wdFormatXMLTemplateMacroEnabled=15
wdFormatXPS=18
  (  8   T E X T   E X T E N S I O N S       0 	        wdFormatDOSTextLineBreaks=txt
wdFormatEncodedText=txt
wdFormatFilteredHTML=html
wdFormatOpenDocumentText=odt
wdFormatHTML=html
wdFormatRTF=rtf
wdFormatStrictOpenXMLDocument=ODD
wdFormatTemplate=dot
wdFormatText=txt
wdFormatTextLineBreaks=txt
wdFormatUnicodeText=txt
wdFormatWebArchive=weba
wdFormatXML=xml
wdFormatDocument97=doc
wdFormatDocumentDefault=doc
wdFormatPDF=pdf
wdFormatTemplate97=dot
wdFormatXMLDocument=xml
wdFormatXMLDocumentMacroEnabled=xml
wdFormatXMLTemplate=xml
wdFormatXMLTemplateMacroEnabled=xml
wdFormatXPS=xps�
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
  -V  Show Versions.  DocTo and Word/Excel


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

