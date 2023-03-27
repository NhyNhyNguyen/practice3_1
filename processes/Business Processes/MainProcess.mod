[Ivy]
1870DC3920EAD723 7.5.0 #module
>Proto >Proto Collection #zClass
Ms0 MainProcess Big #zClass
Ms0 B #cInfo
Ms0 #process
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @EndTask f1 '' #zField
Ms0 @UserDialog f2 '' #zField
Ms0 @PushWFArc f3 '' #zField
Ms0 @StartRequest f0 '' #zField
Ms0 @UserDialog f4 '' #zField
Ms0 @EndTask f14 '' #zField
Ms0 @StartRequest f17 '' #zField
Ms0 @PushWFArc f7 '' #zField
Ms0 @DBStep f5 '' #zField
Ms0 @DBStep f8 '' #zField
Ms0 @PushWFArc f13 '' #zField
Ms0 @DBStep f12 '' #zField
Ms0 @UserDialog f15 '' #zField
Ms0 @PushWFArc f18 '' #zField
Ms0 @PushWFArc f19 '' #zField
Ms0 @PushWFArc f20 '' #zField
Ms0 @UserDialog f16 '' #zField
Ms0 @PushWFArc f21 '' #zField
Ms0 @PushWFArc f22 '' #zField
Ms0 @GridStep f9 '' #zField
Ms0 @PushWFArc f10 '' #zField
Ms0 @PushWFArc f6 '' #zField
>Proto Ms0 Ms0 MainProcess #zField
Ms0 f1 1233 481 30 30 0 15 #rect
Ms0 f1 @|EndIcon #fIcon
Ms0 f2 dialogId Practice31.CustomerDialog #txt
Ms0 f2 startMethod start(Practice31.MainProcessData) #txt
Ms0 f2 requestActionDecl '<Practice31.MainProcessData mainProcessData> param;' #txt
Ms0 f2 requestMappingAction 'param.mainProcessData=in;
' #txt
Ms0 f2 responseMappingAction 'out=in;
out=result.mainProcessData;
' #txt
Ms0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CustomerDialog</name>
    </language>
</elementInfo>
' #txt
Ms0 f2 160 170 112 44 -45 -8 #rect
Ms0 f2 @|UserDialogIcon #fIcon
Ms0 f3 103 192 160 192 #arcP
Ms0 f0 outLink start.ivp #txt
Ms0 f0 inParamDecl '<> param;' #txt
Ms0 f0 inParamTable 'out.customerInfo.address="50 ong ich khiem";
out.customerInfo.birthday=new java.util.Date();
out.customerInfo.email="nhi@gmail.com";
out.customerInfo.gender=false;
out.customerInfo.id=(org.apache.commons.lang.math.RandomUtils.nextInt(10000));
out.customerInfo.name="Nhi";
out.customerInfo.phone="8432441211";
out.orderInfo.battery="battery";
out.orderInfo.cableLength=12;
out.orderInfo.connectedPower=12;
out.orderInfo.id=(org.apache.commons.lang.math.RandomUtils.nextInt(10000));
out.orderInfo.productType=enums.ProductType.SOLAR.name();
out.orderInfo.requiredMeter=false;
out.orderInfo.total=11111.111;
' #txt
Ms0 f0 requestEnabled true #txt
Ms0 f0 triggerEnabled false #txt
Ms0 f0 callSignature start() #txt
Ms0 f0 caseData businessCase.attach=true #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ms0 f0 @C|.responsibility Everybody #txt
Ms0 f0 73 177 30 30 -21 15 #rect
Ms0 f0 @|StartRequestIcon #fIcon
Ms0 f4 dialogId Practice31.OrderDialog #txt
Ms0 f4 startMethod start(Practice31.MainProcessData) #txt
Ms0 f4 requestActionDecl '<Practice31.MainProcessData mainProcessData> param;' #txt
Ms0 f4 requestMappingAction 'param.mainProcessData=in;
' #txt
Ms0 f4 responseMappingAction 'out=in;
out=result.mainProcessData;
' #txt
Ms0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>OrderDialog</name>
    </language>
</elementInfo>
' #txt
Ms0 f4 776 170 112 44 -32 -8 #rect
Ms0 f4 @|UserDialogIcon #fIcon
Ms0 f14 617 305 30 30 0 15 #rect
Ms0 f14 @|EndIcon #fIcon
Ms0 f17 outLink start2.ivp #txt
Ms0 f17 inParamDecl '<> param;' #txt
Ms0 f17 inParamTable 'out.customerInfo.address="50 ong ich khiem";
out.customerInfo.email="nhi@gmail.com";
out.customerInfo.gender=false;
out.customerInfo.id=org.apache.commons.lang.math.RandomUtils.nextInt(10000);
out.customerInfo.name="Nhi";
out.customerInfo.phone="0333333333";
out.orderInfo.battery="battery";
out.orderInfo.cableLength=12;
out.orderInfo.connectedPower=12;
out.orderInfo.id=org.apache.commons.lang.math.RandomUtils.nextInt(10000);
out.orderInfo.productType=enums.ProductType.SOLAR.name();
out.orderInfo.requiredMeter=false;
out.orderInfo.total=11111.111;
' #txt
Ms0 f17 requestEnabled true #txt
Ms0 f17 triggerEnabled false #txt
Ms0 f17 callSignature start2() #txt
Ms0 f17 caseData businessCase.attach=true #txt
Ms0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start2.ivp</name>
    </language>
</elementInfo>
' #txt
Ms0 f17 @C|.responsibility Everybody #txt
Ms0 f17 73 305 30 30 -25 17 #rect
Ms0 f17 @|StartRequestIcon #fIcon
Ms0 f7 664 192 776 192 #arcP
Ms0 f5 actionTable 'out=in;
' #txt
Ms0 f5 dbSql '<?xml version=""1.0"" standalone=""no""?>
<!DOCTYPE ANY_SQL SYSTEM  ""sqlStatements.dtd"">
<ANY_SQL><Verbatim quote=''true''>INSERT INTO CUSTOMER (ID,ADDRESS, BIRTHDAY, DOCUMENTS, EMAIL, GENDER, NAME, PHONE)
VALUES (in.customerInfo.id, in.customerInfo.address, in.customerInfo.birthday, in.customerInfo.documents, in.customerInfo.email, in.customerInfo.gender, in.customerInfo.name, in.customerInfo.phone)</Verbatim></ANY_SQL>' #txt
Ms0 f5 dbUrl Practice #txt
Ms0 f5 dbWizard 'INSERT INTO CUSTOMER (ID,ADDRESS, BIRTHDAY, DOCUMENTS, EMAIL, GENDER, NAME, PHONE)
VALUES (in.customerInfo.id, in.customerInfo.address, in.customerInfo.birthday, in.customerInfo.documents, in.customerInfo.email, in.customerInfo.gender, in.customerInfo.name, in.customerInfo.phone)' #txt
Ms0 f5 lotSize 2147483647 #txt
Ms0 f5 startIdx 0 #txt
Ms0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save customer data to database</name>
    </language>
</elementInfo>
' #txt
Ms0 f5 472 170 192 44 -87 -8 #rect
Ms0 f5 @|DBStepIcon #fIcon
Ms0 f8 actionTable 'out=in;
' #txt
Ms0 f8 dbSql '<?xml version=""1.0"" standalone=""no""?>
<!DOCTYPE ANY_SQL SYSTEM  ""sqlStatements.dtd"">
<ANY_SQL><Verbatim quote=''true''>INSERT INTO ORDER_DETAIL (ID, BATTERY, CABLE_LENGTH, CONNECTED_POWER, PRODUCT_TYPE, REQUIRED_METER, TOTAL)
VALUES (in.orderInfo.id, in.orderInfo.battery, in.orderInfo.cableLength, in.orderInfo.connectedPower, in.orderInfo.productType, in.orderInfo.requiredMeter, in.orderInfo.total)</Verbatim></ANY_SQL>' #txt
Ms0 f8 dbUrl Practice #txt
Ms0 f8 dbWizard 'INSERT INTO ORDER_DETAIL (ID, BATTERY, CABLE_LENGTH, CONNECTED_POWER, PRODUCT_TYPE, REQUIRED_METER, TOTAL)
VALUES (in.orderInfo.id, in.orderInfo.battery, in.orderInfo.cableLength, in.orderInfo.connectedPower, in.orderInfo.productType, in.orderInfo.requiredMeter, in.orderInfo.total)' #txt
Ms0 f8 lotSize 2147483647 #txt
Ms0 f8 startIdx 0 #txt
Ms0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save Order Input</name>
    </language>
</elementInfo>
' #txt
Ms0 f8 968 170 112 44 -45 -8 #rect
Ms0 f8 @|DBStepIcon #fIcon
Ms0 f13 888 192 968 192 #arcP
Ms0 f12 actionTable 'out=in;
' #txt
Ms0 f12 dbSql '<?xml version=""1.0"" standalone=""no""?>
<!DOCTYPE ANY_SQL SYSTEM  ""sqlStatements.dtd"">
<ANY_SQL><Verbatim quote=''true''>INSERT INTO ORDER_DETAIL (ID, BATTERY, CABLE_LENGTH, CONNECTED_POWER, PRODUCT_TYPE, REQUIRED_METER, TOTAL)
VALUES (in.orderInfo.id, in.orderInfo.battery, in.orderInfo.cableLength, in.orderInfo.connectedPower, in.orderInfo.productType, in.orderInfo.requiredMeter, in.orderInfo.total)</Verbatim></ANY_SQL>' #txt
Ms0 f12 dbUrl Practice #txt
Ms0 f12 dbWizard 'INSERT INTO ORDER_DETAIL (ID, BATTERY, CABLE_LENGTH, CONNECTED_POWER, PRODUCT_TYPE, REQUIRED_METER, TOTAL)
VALUES (in.orderInfo.id, in.orderInfo.battery, in.orderInfo.cableLength, in.orderInfo.connectedPower, in.orderInfo.productType, in.orderInfo.requiredMeter, in.orderInfo.total)' #txt
Ms0 f12 lotSize 2147483647 #txt
Ms0 f12 startIdx 0 #txt
Ms0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save Order Input</name>
    </language>
</elementInfo>
' #txt
Ms0 f12 392 298 112 44 -45 -8 #rect
Ms0 f12 @|DBStepIcon #fIcon
Ms0 f15 dialogId Practice31.OrderDialog #txt
Ms0 f15 startMethod start(Practice31.MainProcessData) #txt
Ms0 f15 requestActionDecl '<Practice31.MainProcessData mainProcessData> param;' #txt
Ms0 f15 requestMappingAction 'param.mainProcessData=in;
' #txt
Ms0 f15 responseMappingAction 'out=in;
out=result.mainProcessData;
' #txt
Ms0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>OrderDialog</name>
    </language>
</elementInfo>
' #txt
Ms0 f15 200 298 112 44 -32 -8 #rect
Ms0 f15 @|UserDialogIcon #fIcon
Ms0 f18 312 320 392 320 #arcP
Ms0 f19 103 320 200 320 #arcP
Ms0 f20 504 320 617 320 #arcP
Ms0 f16 dialogId Practice31.ApproveDialog #txt
Ms0 f16 startMethod start(Practice31.MainProcessData) #txt
Ms0 f16 requestActionDecl '<Practice31.MainProcessData mainProcessData> param;' #txt
Ms0 f16 requestMappingAction 'param.mainProcessData=in;
' #txt
Ms0 f16 responseMappingAction 'out=in;
out=result.mainProcessData;
' #txt
Ms0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ApproveDialog</name>
    </language>
</elementInfo>
' #txt
Ms0 f16 1192 282 112 44 -39 -8 #rect
Ms0 f16 @|UserDialogIcon #fIcon
Ms0 f21 1068 214 1204 282 #arcP
Ms0 f22 1248 326 1248 481 #arcP
Ms0 f9 actionTable 'out=in;
' #txt
Ms0 f9 actionCode 'import services.CustomerService;



CustomerService.getInstance().save(customer)' #txt
Ms0 f9 320 170 112 44 0 -8 #rect
Ms0 f9 @|StepIcon #fIcon
Ms0 f10 272 192 320 192 #arcP
Ms0 f6 432 192 472 192 #arcP
>Proto Ms0 .type Practice31.MainProcessData #txt
>Proto Ms0 .processKind NORMAL #txt
>Proto Ms0 0 0 32 24 18 0 #rect
>Proto Ms0 @|BIcon #fIcon
Ms0 f0 mainOut f3 tail #connect
Ms0 f3 head f2 mainIn #connect
Ms0 f5 mainOut f7 tail #connect
Ms0 f7 head f4 mainIn #connect
Ms0 f4 mainOut f13 tail #connect
Ms0 f13 head f8 mainIn #connect
Ms0 f15 mainOut f18 tail #connect
Ms0 f18 head f12 mainIn #connect
Ms0 f17 mainOut f19 tail #connect
Ms0 f19 head f15 mainIn #connect
Ms0 f12 mainOut f20 tail #connect
Ms0 f20 head f14 mainIn #connect
Ms0 f8 mainOut f21 tail #connect
Ms0 f21 head f16 mainIn #connect
Ms0 f16 mainOut f22 tail #connect
Ms0 f22 head f1 mainIn #connect
Ms0 f2 mainOut f10 tail #connect
Ms0 f10 head f9 mainIn #connect
Ms0 f9 mainOut f6 tail #connect
Ms0 f6 head f5 mainIn #connect
