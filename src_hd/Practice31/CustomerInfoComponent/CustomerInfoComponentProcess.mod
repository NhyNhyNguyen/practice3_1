[Ivy]
18726EE5375EE9CF 7.5.0 #module
>Proto >Proto Collection #zClass
Cs0 CustomerInfoComponentProcess Big #zClass
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
>Proto Cs0 Cs0 CustomerInfoComponentProcess #zField
Cs0 f0 guid 18726EE5399D57FD #txt
Cs0 f0 method start(Practice31.CustomerData) #txt
Cs0 f0 inParameterDecl '<Practice31.CustomerData customerData> param;' #txt
Cs0 f0 inParameterMapAction 'out.customerData=param.customerData;
' #txt
Cs0 f0 outParameterDecl '<Practice31.CustomerData customerData> result;' #txt
Cs0 f0 outParameterMapAction 'result.customerData=in.customerData;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(CustomerData)</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 85 53 22 22 14 0 #rect
Cs0 f0 @|UdInitIcon #fIcon
Cs0 f1 213 53 22 22 14 0 #rect
Cs0 f1 @|UdProcessEndIcon #fIcon
Cs0 f2 107 64 213 64 #arcP
Cs0 f3 guid 18726EE53B835E93 #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Cs0 f3 85 149 22 22 14 0 #rect
Cs0 f3 @|UdEventIcon #fIcon
Cs0 f4 213 149 22 22 14 0 #rect
Cs0 f4 @|UdExitEndIcon #fIcon
Cs0 f5 107 160 213 160 #arcP
>Proto Cs0 .type Practice31.CustomerInfoComponent.CustomerInfoComponentData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f3 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
