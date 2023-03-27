[Ivy]
1872129E4A6BDBA4 7.5.0 #module
>Proto >Proto Collection #zClass
Cs0 CustomerInfoProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @UdInit f0 '' #zField
Cs0 @UdProcessEnd f1 '' #zField
Cs0 @UdEvent f3 '' #zField
Cs0 @UdExitEnd f4 '' #zField
Cs0 @GridStep f6 '' #zField
Cs0 @PushWFArc f7 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @GridStep f8 '' #zField
Cs0 @PushWFArc f9 '' #zField
Cs0 @PushWFArc f5 '' #zField
>Proto Cs0 Cs0 CustomerInfoProcess #zField
Cs0 f0 guid 1872129E4ABA850F #txt
Cs0 f0 method start(Practice31.CustomerData) #txt
Cs0 f0 inParameterDecl '<Practice31.CustomerData data> param;' #txt
Cs0 f0 inParameterMapAction 'out.dataEntity=param.data;
' #txt
Cs0 f0 outParameterDecl '<Practice31.CustomerData data> result;' #txt
Cs0 f0 outParameterMapAction 'result.data=in.dataEntity;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Data)</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 83 51 26 26 -29 15 #rect
Cs0 f0 @|UdInitIcon #fIcon
Cs0 f1 339 51 26 26 0 12 #rect
Cs0 f1 @|UdProcessEndIcon #fIcon
Cs0 f3 guid 1872129E4B82722A #txt
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
Cs0 f4 347 147 26 26 0 12 #rect
Cs0 f4 @|UdExitEndIcon #fIcon
Cs0 f6 actionTable 'out=in;
' #txt
Cs0 f6 actionCode in.bean.init(); #txt
Cs0 f6 168 42 112 44 0 -8 #rect
Cs0 f6 @|StepIcon #fIcon
Cs0 f7 109 64 168 64 #arcP
Cs0 f2 280 64 339 64 #arcP
Cs0 f8 actionTable 'out=in;
' #txt
Cs0 f8 actionCode in.bean.save(in.dataEntity); #txt
Cs0 f8 168 138 112 44 0 -8 #rect
Cs0 f8 @|StepIcon #fIcon
Cs0 f9 109 160 168 160 #arcP
Cs0 f5 280 160 347 160 #arcP
>Proto Cs0 .type Practice31.CustomerInfo.CustomerInfoData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f7 tail #connect
Cs0 f7 head f6 mainIn #connect
Cs0 f6 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f3 mainOut f9 tail #connect
Cs0 f9 head f8 mainIn #connect
Cs0 f8 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
