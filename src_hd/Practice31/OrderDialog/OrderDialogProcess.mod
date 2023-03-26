[Ivy]
1871E818468BED9C 7.5.0 #module
>Proto >Proto Collection #zClass
Os0 OrderDialogProcess Big #zClass
Os0 RD #cInfo
Os0 #process
Os0 @TextInP .type .type #zField
Os0 @TextInP .processKind .processKind #zField
Os0 @TextInP .xml .xml #zField
Os0 @TextInP .responsibility .responsibility #zField
Os0 @UdInit f0 '' #zField
Os0 @UdProcessEnd f1 '' #zField
Os0 @PushWFArc f2 '' #zField
Os0 @UdEvent f3 '' #zField
Os0 @UdExitEnd f4 '' #zField
Os0 @PushWFArc f5 '' #zField
>Proto Os0 Os0 OrderDialogProcess #zField
Os0 f0 guid 1871E818488FAA94 #txt
Os0 f0 method start(Practice31.MainProcessData) #txt
Os0 f0 inParameterDecl '<Practice31.MainProcessData mainProcessData> param;' #txt
Os0 f0 inParameterMapAction 'out.mainProcessData=param.mainProcessData;
' #txt
Os0 f0 outParameterDecl '<Practice31.MainProcessData mainProcessData> result;' #txt
Os0 f0 outParameterMapAction 'result.mainProcessData=in.mainProcessData;
' #txt
Os0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(MainProcessData)</name>
    </language>
</elementInfo>
' #txt
Os0 f0 83 51 26 26 -64 15 #rect
Os0 f0 @|UdInitIcon #fIcon
Os0 f1 211 51 26 26 0 12 #rect
Os0 f1 @|UdProcessEndIcon #fIcon
Os0 f2 109 64 211 64 #arcP
Os0 f3 guid 1871E81849562686 #txt
Os0 f3 actionTable 'out=in;
' #txt
Os0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Os0 f3 83 147 26 26 -14 15 #rect
Os0 f3 @|UdEventIcon #fIcon
Os0 f4 211 147 26 26 0 12 #rect
Os0 f4 @|UdExitEndIcon #fIcon
Os0 f5 109 160 211 160 #arcP
>Proto Os0 .type Practice31.OrderDialog.OrderDialogData #txt
>Proto Os0 .processKind HTML_DIALOG #txt
>Proto Os0 -8 -8 16 16 16 26 #rect
>Proto Os0 '' #fIcon
Os0 f0 mainOut f2 tail #connect
Os0 f2 head f1 mainIn #connect
Os0 f3 mainOut f5 tail #connect
Os0 f5 head f4 mainIn #connect
