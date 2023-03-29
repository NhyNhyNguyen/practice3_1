[Ivy]
1872248A91B69F46 7.5.0 #module
>Proto >Proto Collection #zClass
Ms0 ManagerApproveProcess Big #zClass
Ms0 RD #cInfo
Ms0 #process
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @UdInit f0 '' #zField
Ms0 @UdProcessEnd f1 '' #zField
Ms0 @UdEvent f3 '' #zField
Ms0 @UdExitEnd f4 '' #zField
Ms0 @GridStep f6 '' #zField
Ms0 @PushWFArc f7 '' #zField
Ms0 @PushWFArc f5 '' #zField
Ms0 @GridStep f8 '' #zField
Ms0 @PushWFArc f9 '' #zField
Ms0 @PushWFArc f2 '' #zField
>Proto Ms0 Ms0 ManagerApproveProcess #zField
Ms0 f0 guid 1872248A920CE9D4 #txt
Ms0 f0 method start(Practice31.CustomerData) #txt
Ms0 f0 inParameterDecl '<Practice31.CustomerData customerData> param;' #txt
Ms0 f0 inParameterMapAction 'out.customerData=param.customerData;
' #txt
Ms0 f0 outParameterDecl '<Practice31.CustomerData customerData> result;' #txt
Ms0 f0 outParameterMapAction 'result.customerData=in.customerData;
' #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(CustomerData)</name>
    </language>
</elementInfo>
' #txt
Ms0 f0 83 51 26 26 -56 15 #rect
Ms0 f0 @|UdInitIcon #fIcon
Ms0 f1 339 51 26 26 0 12 #rect
Ms0 f1 @|UdProcessEndIcon #fIcon
Ms0 f3 guid 1872248A92D45560 #txt
Ms0 f3 actionTable 'out=in;
' #txt
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ms0 f3 83 147 26 26 -15 15 #rect
Ms0 f3 @|UdEventIcon #fIcon
Ms0 f4 339 147 26 26 0 12 #rect
Ms0 f4 @|UdExitEndIcon #fIcon
Ms0 f6 actionTable 'out=in;
' #txt
Ms0 f6 actionCode 'import controllers.OrderController;
in.bean.approve(in.customerData);


OrderController.getInstance().update();
' #txt
Ms0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save manager approve</name>
    </language>
</elementInfo>
' #txt
Ms0 f6 152 138 144 44 -63 -8 #rect
Ms0 f6 @|StepIcon #fIcon
Ms0 f7 109 160 152 160 #arcP
Ms0 f5 296 160 339 160 #arcP
Ms0 f8 actionTable 'out=in;
' #txt
Ms0 f8 actionCode in.bean.init(); #txt
Ms0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init</name>
    </language>
</elementInfo>
' #txt
Ms0 f8 168 42 112 44 -8 -8 #rect
Ms0 f8 @|StepIcon #fIcon
Ms0 f9 109 64 168 64 #arcP
Ms0 f2 280 64 339 64 #arcP
>Proto Ms0 .type Practice31.ManagerApprove.ManagerApproveData #txt
>Proto Ms0 .processKind HTML_DIALOG #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f3 mainOut f7 tail #connect
Ms0 f7 head f6 mainIn #connect
Ms0 f6 mainOut f5 tail #connect
Ms0 f5 head f4 mainIn #connect
Ms0 f0 mainOut f9 tail #connect
Ms0 f9 head f8 mainIn #connect
Ms0 f8 mainOut f2 tail #connect
Ms0 f2 head f1 mainIn #connect
