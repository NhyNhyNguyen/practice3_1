[Ivy]
1872117F0C34E05D 7.5.0 #module
>Proto >Proto Collection #zClass
Ss0 StartProcess Big #zClass
Ss0 B #cInfo
Ss0 #process
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @EndTask f1 '' #zField
Ss0 @UserDialog f4 '' #zField
Ss0 @StartRequest f5 '' #zField
Ss0 @UserDialog f2 '' #zField
Ss0 @PushWFArc f18 '' #zField
Ss0 @PushWFArc f3 '' #zField
Ss0 @Page f17 '' #zField
Ss0 @UserDialog f22 '' #zField
Ss0 @UserDialog f25 '' #zField
Ss0 @StartRequest f26 '' #zField
Ss0 @PushWFArc f6 '' #zField
Ss0 @TaskSwitchSimple f7 '' #zField
Ss0 @PushWFArc f0 '' #zField
Ss0 @TkArc f11 '' #zField
Ss0 @TaskSwitchSimple f9 '' #zField
Ss0 @EndRequest f14 '' #zField
Ss0 @PushWFArc f13 '' #zField
Ss0 @IntermediateEvent f15 '' #zField
Ss0 @TkArc f8 '' #zField
Ss0 @EMail f19 '' #zField
Ss0 @PushWFArc f20 '' #zField
Ss0 @PushWFArc f16 '' #zField
Ss0 @IntermediateEvent f24 '' #zField
Ss0 @EMail f29 '' #zField
Ss0 @PushWFArc f27 '' #zField
Ss0 @IntermediateEvent f31 '' #zField
Ss0 @PushWFArc f28 '' #zField
Ss0 @TaskSwitch f10 '' #zField
Ss0 @TkArc f21 '' #zField
Ss0 @PushWFArc f23 '' #zField
Ss0 @PushWFArc f32 '' #zField
Ss0 @TkArc f30 '' #zField
Ss0 @TaskSwitchSimple f12 '' #zField
>Proto Ss0 Ss0 StartProcess #zField
Ss0 f1 977 177 30 30 0 15 #rect
Ss0 f1 @|EndIcon #fIcon
Ss0 f4 dialogId Practice31.ManagerApprove #txt
Ss0 f4 startMethod start(Practice31.CustomerData) #txt
Ss0 f4 requestActionDecl '<Practice31.CustomerData customerData> param;' #txt
Ss0 f4 requestMappingAction 'param.customerData=in;
param.customerData.customer=in.customer;
param.customerData.order=in.order;
' #txt
Ss0 f4 responseMappingAction 'out=in;
out=result.customerData;
' #txt
Ss0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ManagerApprove</name>
    </language>
</elementInfo>
' #txt
Ss0 f4 632 170 112 44 -46 -8 #rect
Ss0 f4 @|UserDialogIcon #fIcon
Ss0 f5 outLink start.ivp #txt
Ss0 f5 inParamDecl '<> param;' #txt
Ss0 f5 inParamTable 'out.customer.address="defaultAddess";
out.customer.birthday=new java.util.Date();
out.customer.email="nhi@gmail.com";
out.customer.gender=true;
out.customer.name="nhi";
out.customer.phone="0232222";
out.order.battery="Solar";
out.order.cableLength=1;
out.order.connectedPower=1;
out.order.productType="Solar";
out.order.requireMeter=false;
out.order.total=120;
' #txt
Ss0 f5 actionCode '
' #txt
Ss0 f5 requestEnabled true #txt
Ss0 f5 triggerEnabled false #txt
Ss0 f5 callSignature start() #txt
Ss0 f5 caseData 'businessCase.attach=true
case.name=Order process' #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ss0 f5 @C|.responsibility Everybody #txt
Ss0 f5 41 177 30 30 -21 18 #rect
Ss0 f5 @|StartRequestIcon #fIcon
Ss0 f2 dialogId Practice31.CustomerInfo #txt
Ss0 f2 startMethod start(Practice31.CustomerData) #txt
Ss0 f2 requestActionDecl '<Practice31.CustomerData data> param;' #txt
Ss0 f2 requestMappingAction 'param.data.customer=in.customer;
param.data.order=in.order;
' #txt
Ss0 f2 responseMappingAction 'out=in;
' #txt
Ss0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Customer, Order Info</name>
    </language>
</elementInfo>
' #txt
Ss0 f2 280 170 112 44 -57 -8 #rect
Ss0 f2 @|UserDialogIcon #fIcon
Ss0 f18 744 192 878 192 #arcP
Ss0 f3 expr data #txt
Ss0 f3 outCond ivp=="LinkA.ivp" #txt
Ss0 f3 914 192 977 192 #arcP
Ss0 f17 outTypes "Practice31.CustomerData" #txt
Ss0 f17 outLinks "LinkA.ivp" #txt
Ss0 f17 template "view\\HomePage.xhtml" #txt
Ss0 f17 type Practice31.CustomerData #txt
Ss0 f17 skipLink skip.ivp #txt
Ss0 f17 sortLink sort.ivp #txt
Ss0 f17 templateWizard '#
#Wed Mar 29 10:24:00 ICT 2023
' #txt
Ss0 f17 pageArchivingActivated false #txt
Ss0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Order Page</name>
    </language>
</elementInfo>
' #txt
Ss0 f17 @C|.responsibility Everybody #txt
Ss0 f17 878 180 36 24 -32 18 #rect
Ss0 f17 @|PageIcon #fIcon
Ss0 f22 dialogId Practice31.ManagerApprove #txt
Ss0 f22 startMethod start(Practice31.CustomerData) #txt
Ss0 f22 requestActionDecl '<Practice31.CustomerData customerData> param;' #txt
Ss0 f22 requestMappingAction 'param.customerData=in;
param.customerData.customer=in.customer;
param.customerData.order=in.order;
' #txt
Ss0 f22 responseMappingAction 'out=in;
out=result.customerData;
' #txt
Ss0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ManagerApprove</name>
    </language>
</elementInfo>
' #txt
Ss0 f22 816 386 112 44 -46 -8 #rect
Ss0 f22 @|UserDialogIcon #fIcon
Ss0 f25 dialogId Practice31.CustomerInfo #txt
Ss0 f25 startMethod start(Practice31.CustomerData) #txt
Ss0 f25 requestActionDecl '<Practice31.CustomerData data> param;' #txt
Ss0 f25 requestMappingAction 'param.data.customer=in.customer;
param.data.order=in.order;
' #txt
Ss0 f25 responseMappingAction 'out=in;
' #txt
Ss0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Customer, Order Info</name>
    </language>
</elementInfo>
' #txt
Ss0 f25 272 386 112 44 -57 -8 #rect
Ss0 f25 @|UserDialogIcon #fIcon
Ss0 f26 outLink start3.ivp #txt
Ss0 f26 inParamDecl '<> param;' #txt
Ss0 f26 inParamTable 'out.customer.address="defaultAddess";
out.customer.birthday=new java.util.Date();
out.customer.email="nhi@gmail.com";
out.customer.gender=true;
out.customer.name="nhi";
out.customer.phone="0232222";
out.order.cableLength=1;
out.order.connectedPower=1;
out.order.productType="Solar";
out.order.requireMeter=false;
out.order.total=120;
' #txt
Ss0 f26 actionCode '
' #txt
Ss0 f26 requestEnabled true #txt
Ss0 f26 triggerEnabled false #txt
Ss0 f26 callSignature start3() #txt
Ss0 f26 caseData 'businessCase.attach=true
case.name=Order process' #txt
Ss0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start3.ivp</name>
    </language>
</elementInfo>
' #txt
Ss0 f26 @C|.responsibility Everybody #txt
Ss0 f26 33 393 30 30 -24 17 #rect
Ss0 f26 @|StartRequestIcon #fIcon
Ss0 f6 575 192 632 192 #arcP
Ss0 f7 actionTable 'out=in1;
' #txt
Ss0 f7 taskData 'TaskA.CATEGORY=TaskManagerApproveInput
TaskA.NAM=Task Manager Approve Input' #txt
Ss0 f7 545 177 30 30 0 16 #rect
Ss0 f7 @|TaskSwitchSimpleIcon #fIcon
Ss0 f0 191 192 280 192 #arcP
Ss0 f11 71 192 161 192 #arcP
Ss0 f9 actionTable 'out=in1;
' #txt
Ss0 f9 taskData 'TaskA.CATEGORY=TaskCheckCustomerInput
TaskA.DESC=Check Customer, Order Input
TaskA.NAM=Task Check Customer Input' #txt
Ss0 f9 161 177 30 30 0 16 #rect
Ss0 f9 @|TaskSwitchSimpleIcon #fIcon
Ss0 f14 template "view\\OrderPage.xhtml" #txt
Ss0 f14 987 395 26 26 14 0 #rect
Ss0 f14 @|EndRequestIcon #fIcon
Ss0 f13 928 408 987 408 #arcP
Ss0 f15 actionTable 'out=in;
' #txt
Ss0 f15 eventIdConfig "String.valueOf(in.order.id)" #txt
Ss0 f15 timeoutConfig 'ACTION_AFTER_TIMEOUT=NOTHING
EXCEPTION_PROCESS_START=
TIMEOUT_SCRIPT=new Duration("1S")' #txt
Ss0 f15 eventBeanClass "ch.ivyteam.ivy.process.intermediateevent.beans.FileIntermediateEventBean" #txt
Ss0 f15 483 179 26 26 13 0 #rect
Ss0 f15 @|IntermediateEventIcon #fIcon
Ss0 f8 509 192 545 192 #arcP
Ss0 f19 beanConfig "" #txt
Ss0 f19 type Practice31.CustomerData #txt
Ss0 f19 timeout 0 #txt
Ss0 f19 414 180 36 24 20 -2 #rect
Ss0 f19 @|EMailIcon #fIcon
Ss0 f20 392 192 414 192 #arcP
Ss0 f16 expr out #txt
Ss0 f16 450 192 483 192 #arcP
Ss0 f24 actionTable 'out=in;
' #txt
Ss0 f24 179 195 26 26 13 0 #rect
Ss0 f24 @|IntermediateEventIcon #fIcon
Ss0 f29 beanConfig '"{/emailSubject ""Send Customer""/emailFrom ""dddnhi@gmail.com""/emailReplyTo """"/emailTo ""zennynguyen021298@gmail.com""/emailCC """"/emailBCC """"/exceptionMissingEmailAttachments ""false""/emailMessage ""Hi""/emailAttachments * }"' #txt
Ss0 f29 type Practice31.CustomerData #txt
Ss0 f29 timeout 0 #txt
Ss0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Send Customer Email</name>
    </language>
</elementInfo>
' #txt
Ss0 f29 494 396 36 24 -55 26 #rect
Ss0 f29 @|EMailIcon #fIcon
Ss0 f27 384 408 494 408 #arcP
Ss0 f31 actionTable 'out=in;
' #txt
Ss0 f31 eventIdConfig "String.valueOf(in.order.id)" #txt
Ss0 f31 timeoutConfig 'ACTION_AFTER_TIMEOUT=CONTINUE_WITHOUT_EVENT
EXCEPTION_PROCESS_START=
TIMEOUT_SCRIPT=new Duration("1S")' #txt
Ss0 f31 taskData 'ivp.NAM=Wait customer confirm' #txt
Ss0 f31 eventBeanClass "bean.IntermediateEventBean" #txt
Ss0 f31 eventBeanConfig '"/src
"' #txt
Ss0 f31 588 396 24 24 13 0 #rect
Ss0 f31 @|IntermediateEventIcon #fIcon
Ss0 f28 expr out #txt
Ss0 f28 530 408 588 408 #arcP
Ss0 f10 actionTable 'out=in1;
' #txt
Ss0 f10 outLinks "TaskA.ivp" #txt
Ss0 f10 taskData 'TaskA.CATEGORY=CleckApprove
TaskA.DESC=Cleck Approve
TaskA.NAM=Cleck Approve
TaskA.ROL=Cleck
TaskA.TYPE=0' #txt
Ss0 f10 template "view\\TaskPage.xhtml" #txt
Ss0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Cleck Approve</name>
    </language>
</elementInfo>
' #txt
Ss0 f10 146 394 28 28 14 0 #rect
Ss0 f10 @|TaskSwitchIcon #fIcon
Ss0 f21 var in1 #txt
Ss0 f21 63 408 146 408 #arcP
Ss0 f23 expr data #txt
Ss0 f23 outCond ivp=="TaskA.ivp" #txt
Ss0 f23 174 408 272 408 #arcP
Ss0 f32 719 408 816 408 #arcP
Ss0 f30 612 408 689 408 #arcP
Ss0 f12 actionTable 'out=in1;
' #txt
Ss0 f12 taskData 'TaskA.CATEGORY=ManagerApprove
TaskA.DESC=Manager Approve
TaskA.NAM=Manager Approve
TaskA.ROL=Manager
TaskA.TYPE=0' #txt
Ss0 f12 template "view\\TaskPage.xhtml" #txt
Ss0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Manager Approve</name>
        <desc>Check Customer, Order Input</desc>
    </language>
</elementInfo>
' #txt
Ss0 f12 689 393 30 30 -49 26 #rect
Ss0 f12 @|TaskSwitchSimpleIcon #fIcon
>Proto Ss0 .type Practice31.CustomerData #txt
>Proto Ss0 .processKind NORMAL #txt
>Proto Ss0 0 0 32 24 18 0 #rect
>Proto Ss0 @|BIcon #fIcon
Ss0 f7 out f6 tail #connect
Ss0 f6 head f4 mainIn #connect
Ss0 f9 out f0 tail #connect
Ss0 f0 head f2 mainIn #connect
Ss0 f11 head f9 in #connect
Ss0 f5 mainOut f11 tail #connect
Ss0 f4 mainOut f18 tail #connect
Ss0 f18 head f17 mainIn #connect
Ss0 f17 out f3 tail #connect
Ss0 f3 head f1 mainIn #connect
Ss0 f22 mainOut f13 tail #connect
Ss0 f13 head f14 mainIn #connect
Ss0 f15 mainOut f8 tail #connect
Ss0 f8 head f7 in #connect
Ss0 f2 mainOut f20 tail #connect
Ss0 f20 head f19 mainIn #connect
Ss0 f19 mainOut f16 tail #connect
Ss0 f16 head f15 mainIn #connect
Ss0 f25 mainOut f27 tail #connect
Ss0 f27 head f29 mainIn #connect
Ss0 f29 mainOut f28 tail #connect
Ss0 f28 head f31 mainIn #connect
Ss0 f31 mainOut f30 tail #connect
Ss0 f30 head f12 in #connect
Ss0 f12 out f32 tail #connect
Ss0 f32 head f22 mainIn #connect
Ss0 f26 mainOut f21 tail #connect
Ss0 f21 head f10 in #connect
Ss0 f10 out f23 tail #connect
Ss0 f23 head f25 mainIn #connect
