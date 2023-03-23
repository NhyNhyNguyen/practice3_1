[Ivy]
1870DC7B241F3204 7.5.0 #module
>Proto >Proto Collection #zClass
Cs0 CustomerDialogProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @UdInit f0 '' #zField
Cs0 @UdProcessEnd f1 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @UdEvent f3 '' #zField
Cs0 @UdExitEnd f4 '' #zField
Cs0 @PushWFArc f5 '' #zField
>Proto Cs0 Cs0 CustomerDialogProcess #zField
Cs0 f0 guid 1870DC7B2479BFB4 #txt
Cs0 f0 method start(Practice31.MainProcessData) #txt
Cs0 f0 inParameterDecl '<Practice31.MainProcessData mainProcessData> param;' #txt
Cs0 f0 inParameterMapAction 'out.mainProcessData=param.mainProcessData;
' #txt
Cs0 f0 outParameterDecl '<Practice31.MainProcessData mainProcessData> result;' #txt
Cs0 f0 outParameterMapAction 'result.mainProcessData=in.mainProcessData;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(MainProcessData)</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 83 51 26 26 -65 15 #rect
Cs0 f0 @|UdInitIcon #fIcon
Cs0 f1 211 51 26 26 0 12 #rect
Cs0 f1 @|UdProcessEndIcon #fIcon
Cs0 f2 109 64 211 64 #arcP
Cs0 f3 guid 1870DC7B254E8C92 #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Cs0 f3 83 147 26 26 -15 15 #rect
Cs0 f3 @|UdEventIcon #fIcon
Cs0 f4 211 147 26 26 0 12 #rect
Cs0 f4 @|UdExitEndIcon #fIcon
Cs0 f5 109 160 211 160 #arcP
>Proto Cs0 .type Practice31.CustomerDialog.CustomerDialogData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f3 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
