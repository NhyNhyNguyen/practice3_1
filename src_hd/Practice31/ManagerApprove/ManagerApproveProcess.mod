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
Ms0 @GridStep f8 '' #zField
Ms0 @PushWFArc f9 '' #zField
Ms0 @PushWFArc f2 '' #zField
Ms0 @UdExitEnd f3 '' #zField
Ms0 @GridStep f4 '' #zField
Ms0 @PushWFArc f7 '' #zField
Ms0 @UdEvent f5 '' #zField
Ms0 @GridStep f10 '' #zField
Ms0 @UdEvent f12 '' #zField
Ms0 @PushWFArc f14 '' #zField
Ms0 @GridStep f15 '' #zField
Ms0 @PushWFArc f16 '' #zField
Ms0 @PushWFArc f6 '' #zField
Ms0 @PushWFArc f19 '' #zField
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
Ms0 f3 675 163 26 26 0 12 #rect
Ms0 f3 @|UdExitEndIcon #fIcon
Ms0 f4 actionTable 'out=in;
' #txt
Ms0 f4 actionCode 'import controllers.OrderController;
in.bean.approve(in.customerData);


' #txt
Ms0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Approve</name>
    </language>
</elementInfo>
' #txt
Ms0 f4 200 162 64 28 -14 -8 #rect
Ms0 f4 @|StepIcon #fIcon
Ms0 f7 109 176 200 176 #arcP
Ms0 f5 guid 18735B89A411F977 #txt
Ms0 f5 actionTable 'out=in;
' #txt
Ms0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>verify</name>
    </language>
</elementInfo>
' #txt
Ms0 f5 83 163 26 26 -15 15 #rect
Ms0 f5 @|UdEventIcon #fIcon
Ms0 f10 actionTable 'out=in;
' #txt
Ms0 f10 actionCode 'import controllers.OrderController;
in.bean.reject(in.customerData);


' #txt
Ms0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Reject</name>
    </language>
</elementInfo>
' #txt
Ms0 f10 200 266 64 28 -12 -8 #rect
Ms0 f10 @|StepIcon #fIcon
Ms0 f12 guid 18735C3FF9CB7BBA #txt
Ms0 f12 actionTable 'out=in;
' #txt
Ms0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ms0 f12 83 267 26 26 -15 15 #rect
Ms0 f12 @|UdEventIcon #fIcon
Ms0 f14 109 280 200 280 #arcP
Ms0 f15 actionTable 'out=in;
' #txt
Ms0 f15 actionCode 'ivy.case.createNote(ivy.session, "Manager Comment: ".concat(in.customerData.order.managerComment));' #txt
Ms0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Add note for manager comment</name>
    </language>
</elementInfo>
' #txt
Ms0 f15 366 164 36 24 20 -2 #rect
Ms0 f15 @|StepIcon #fIcon
Ms0 f16 264 176 366 176 #arcP
Ms0 f6 402 176 675 176 #arcP
Ms0 f19 264 280 384 188 #arcP
Ms0 f19 1 384 280 #addKink
Ms0 f19 0 0.8070697730053583 0 0 #arcLabel
>Proto Ms0 .type Practice31.ManagerApprove.ManagerApproveData #txt
>Proto Ms0 .processKind HTML_DIALOG #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f0 mainOut f9 tail #connect
Ms0 f9 head f8 mainIn #connect
Ms0 f8 mainOut f2 tail #connect
Ms0 f2 head f1 mainIn #connect
Ms0 f5 mainOut f7 tail #connect
Ms0 f7 head f4 mainIn #connect
Ms0 f12 mainOut f14 tail #connect
Ms0 f14 head f10 mainIn #connect
Ms0 f4 mainOut f16 tail #connect
Ms0 f16 head f15 mainIn #connect
Ms0 f15 mainOut f6 tail #connect
Ms0 f6 head f3 mainIn #connect
Ms0 f10 mainOut f19 tail #connect
Ms0 f19 head f15 mainIn #connect
