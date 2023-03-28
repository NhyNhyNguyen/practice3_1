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
Ss0 @PushWFArc f3 '' #zField
Ss0 @UserDialog f4 '' #zField
Ss0 @UserDialog f2 '' #zField
Ss0 @TaskSwitchSimple f7 '' #zField
Ss0 @TkArc f8 '' #zField
Ss0 @PushWFArc f6 '' #zField
Ss0 @TaskSwitchSimple f9 '' #zField
Ss0 @PushWFArc f0 '' #zField
Ss0 @StartRequest f5 '' #zField
Ss0 @TkArc f11 '' #zField
Ss0 @EndTask f10 '' #zField
Ss0 @UserDialog f12 '' #zField
Ss0 @StartRequest f13 '' #zField
Ss0 @UserDialog f15 '' #zField
Ss0 @PushWFArc f21 '' #zField
Ss0 @PushWFArc f14 '' #zField
Ss0 @PushWFArc f16 '' #zField
>Proto Ss0 Ss0 StartProcess #zField
Ss0 f1 713 177 30 30 0 15 #rect
Ss0 f1 @|EndIcon #fIcon
Ss0 f3 648 192 713 192 #arcP
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
Ss0 f4 536 170 112 44 -46 -8 #rect
Ss0 f4 @|UserDialogIcon #fIcon
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
Ss0 f7 actionTable 'out=in1;
' #txt
Ss0 f7 taskData 'TaskA.CATEGORY=TaskManagerApproveInput
TaskA.NAM=Task Manager Approve Input' #txt
Ss0 f7 449 177 30 30 0 16 #rect
Ss0 f7 @|TaskSwitchSimpleIcon #fIcon
Ss0 f8 392 192 449 192 #arcP
Ss0 f6 479 192 536 192 #arcP
Ss0 f9 actionTable 'out=in1;
' #txt
Ss0 f9 taskData 'TaskA.CATEGORY=TaskCheckCustomerInput
TaskA.NAM=Task Check Customer Input' #txt
Ss0 f9 161 177 30 30 0 16 #rect
Ss0 f9 @|TaskSwitchSimpleIcon #fIcon
Ss0 f0 191 192 280 192 #arcP
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
Ss0 f5 actionCode 'import ch.ivyteam.ivy.environment.Ivy;
import ch.ivy.addon.portalkit.publicapi.ProcessStartAPI;
out.order.cleckComment = ProcessStartAPI.findLinkByFriendlyRequestPath(Ivy.wf().getApplication(), "Business Processes/StartProcess/start2.ivp");

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
Ss0 f11 71 192 161 192 #arcP
Ss0 f10 721 281 30 30 0 15 #rect
Ss0 f10 @|EndIcon #fIcon
Ss0 f12 dialogId Practice31.ManagerApprove #txt
Ss0 f12 startMethod start(Practice31.CustomerData) #txt
Ss0 f12 requestActionDecl '<Practice31.CustomerData customerData> param;' #txt
Ss0 f12 requestMappingAction 'param.customerData=in;
param.customerData.customer=in.customer;
param.customerData.order=in.order;
' #txt
Ss0 f12 responseMappingAction 'out=in;
out=result.customerData;
' #txt
Ss0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ManagerApprove</name>
    </language>
</elementInfo>
' #txt
Ss0 f12 544 274 112 44 -46 -8 #rect
Ss0 f12 @|UserDialogIcon #fIcon
Ss0 f13 outLink start2.ivp #txt
Ss0 f13 inParamDecl '<> param;' #txt
Ss0 f13 inParamTable 'out.customer.address="defaultAddess";
out.customer.birthday=new java.util.Date();
out.customer.email="nhi@gmail.com";
out.customer.gender=false;
out.customer.name="nhi";
out.customer.phone="0232222";
out.order.battery="Solar";
out.order.cableLength=1;
out.order.cleckComment="Cleck Comment";
out.order.connectedPower=1;
out.order.productType="Solar";
out.order.requireMeter=false;
out.order.total=120;
' #txt
Ss0 f13 requestEnabled true #txt
Ss0 f13 triggerEnabled false #txt
Ss0 f13 callSignature start2() #txt
Ss0 f13 caseData 'businessCase.attach=true
case.name=Order process' #txt
Ss0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start2.ivp</name>
    </language>
</elementInfo>
' #txt
Ss0 f13 @C|.responsibility Everybody #txt
Ss0 f13 49 281 30 30 -25 17 #rect
Ss0 f13 @|StartRequestIcon #fIcon
Ss0 f15 dialogId Practice31.CustomerInfo #txt
Ss0 f15 startMethod start(Practice31.CustomerData) #txt
Ss0 f15 requestActionDecl '<Practice31.CustomerData data> param;' #txt
Ss0 f15 requestMappingAction 'param.data.customer=in.customer;
param.data.order=in.order;
' #txt
Ss0 f15 responseMappingAction 'out=in;
' #txt
Ss0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Customer, Order Info</name>
    </language>
</elementInfo>
' #txt
Ss0 f15 288 274 112 44 -57 -8 #rect
Ss0 f15 @|UserDialogIcon #fIcon
Ss0 f21 656 296 721 296 #arcP
Ss0 f14 79 296 288 296 #arcP
Ss0 f16 400 296 544 296 #arcP
>Proto Ss0 .type Practice31.CustomerData #txt
>Proto Ss0 .processKind NORMAL #txt
>Proto Ss0 0 0 32 24 18 0 #rect
>Proto Ss0 @|BIcon #fIcon
Ss0 f4 mainOut f3 tail #connect
Ss0 f3 head f1 mainIn #connect
Ss0 f2 mainOut f8 tail #connect
Ss0 f8 head f7 in #connect
Ss0 f7 out f6 tail #connect
Ss0 f6 head f4 mainIn #connect
Ss0 f9 out f0 tail #connect
Ss0 f0 head f2 mainIn #connect
Ss0 f11 head f9 in #connect
Ss0 f5 mainOut f11 tail #connect
Ss0 f12 mainOut f21 tail #connect
Ss0 f21 head f10 mainIn #connect
Ss0 f13 mainOut f14 tail #connect
Ss0 f14 head f15 mainIn #connect
Ss0 f15 mainOut f16 tail #connect
Ss0 f16 head f12 mainIn #connect
