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
Ss0 @UserDialog f22 '' #zField
Ss0 @UserDialog f25 '' #zField
Ss0 @StartRequest f26 '' #zField
Ss0 @EndRequest f14 '' #zField
Ss0 @PushWFArc f13 '' #zField
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
Ss0 f14 template "view\\OrderPage.xhtml" #txt
Ss0 f14 987 395 26 26 14 0 #rect
Ss0 f14 @|EndRequestIcon #fIcon
Ss0 f13 928 408 987 408 #arcP
Ss0 f29 beanConfig '"{/emailSubject ""Confirm Order""/emailFrom ""icon@gmail.com""/emailReplyTo """"/emailTo ""<%=in.customer.email%>""/emailCC """"/emailBCC """"/exceptionMissingEmailAttachments ""false""/emailMessage ""Dear <%=in.customer.name%>\\nCustomer info:\\n+ Name: <%=in.customer.name%>\\n+ Phone: <%=in.customer.phone%>\\n+ Birthday: <%=in.customer.birthday%>\\n+ Address: <%=in.customer.address%>\\n+ Email: <%=in.customer.email%>\\n+ Gender: <%=in.customer.gender ? \\""Male\\"" : \\""Femail\\""%>\\n\\nOrder Info:\\n+ ProductType: <%=in.order.productType%>\\n+ Connected Power: <%=in.order.connectedPower%>\\n+ Cable Length: <%=in.order.cableLength%>\\n+ Required Meter: <%=in.order.requireMeter ? \\""Yes\\"" : \\""No\\""%>\\n+ Baterry: <%=in.order.battery%>\\n+ Total: <%=in.order.total%>\\n""/emailAttachments * }"' #txt
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
Ss0 f22 mainOut f13 tail #connect
Ss0 f13 head f14 mainIn #connect
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
