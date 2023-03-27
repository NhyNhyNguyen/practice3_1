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
Ss0 @UserDialog f2 '' #zField
Ss0 @StartRequest f5 '' #zField
Ss0 @PushWFArc f0 '' #zField
Ss0 @UserDialog f4 '' #zField
Ss0 @PushWFArc f6 '' #zField
Ss0 @PushWFArc f3 '' #zField
>Proto Ss0 Ss0 StartProcess #zField
Ss0 f1 657 49 30 30 0 15 #rect
Ss0 f1 @|EndIcon #fIcon
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
Ss0 f2 288 42 128 44 -57 -8 #rect
Ss0 f2 @|UserDialogIcon #fIcon
Ss0 f5 outLink start2.ivp #txt
Ss0 f5 inParamDecl '<> param;' #txt
Ss0 f5 inParamTable 'out.customer.address="defaultAddess";
out.customer.birthday=new java.util.Date();
out.customer.email="nhi@gmail.com";
out.customer.gender=false;
out.customer.name="nhi";
out.customer.phone="0232222";
out.order.battery="Solar";
out.order.cableLength=1;
out.order.connectedPower=1;
out.order.productType="Solar";
out.order.requireMeter=false;
out.order.total=120;
' #txt
Ss0 f5 requestEnabled true #txt
Ss0 f5 triggerEnabled false #txt
Ss0 f5 callSignature start2() #txt
Ss0 f5 caseData businessCase.attach=true #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ss0 f5 @C|.responsibility Everybody #txt
Ss0 f5 72 48 32 32 -27 18 #rect
Ss0 f5 @|StartRequestIcon #fIcon
Ss0 f0 104 64 288 64 #arcP
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
Ss0 f4 480 42 112 44 -46 -8 #rect
Ss0 f4 @|UserDialogIcon #fIcon
Ss0 f6 416 64 480 64 #arcP
Ss0 f3 592 64 657 64 #arcP
>Proto Ss0 .type Practice31.CustomerData #txt
>Proto Ss0 .processKind NORMAL #txt
>Proto Ss0 0 0 32 24 18 0 #rect
>Proto Ss0 @|BIcon #fIcon
Ss0 f5 mainOut f0 tail #connect
Ss0 f0 head f2 mainIn #connect
Ss0 f2 mainOut f6 tail #connect
Ss0 f6 head f4 mainIn #connect
Ss0 f4 mainOut f3 tail #connect
Ss0 f3 head f1 mainIn #connect