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
Ms0 @PushWFArc f4 '' #zField
Ms0 @PushWFArc f6 '' #zField
Ms0 @DBStep f5 '' #zField
Ms0 @PushWFArc f3 '' #zField
Ms0 @StartRequest f0 '' #zField
>Proto Ms0 Ms0 MainProcess #zField
Ms0 f1 521 49 30 30 0 15 #rect
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
Ms0 f2 168 42 112 44 -45 -8 #rect
Ms0 f2 @|UserDialogIcon #fIcon
Ms0 f4 464 64 521 64 #arcP
Ms0 f6 280 64 304 64 #arcP
Ms0 f5 actionTable 'out=in;
' #txt
Ms0 f5 dbSql '<?xml version=""1.0"" standalone=""no""?>
<!DOCTYPE INSERT SYSTEM  ""sqlStatements.dtd"">
<INSERT><Table name=''CUSTOMER''/><Value column=''ADDRESS''><AnyExpression>in.customerInfo.address</AnyExpression></Value><Value column=''BIRTHDAY''><AnyExpression>in.customerInfo.birthday</AnyExpression></Value><Value column=''DOCUMENTS''><AnyExpression>in.customerInfo.documents</AnyExpression></Value><Value column=''EMAIL''><AnyExpression>in.customerInfo.email</AnyExpression></Value><Value column=''GENDER''><AnyExpression>in.customerInfo.gender</AnyExpression></Value><Value column=''NAME''><AnyExpression>in.customerInfo.name</AnyExpression></Value><Value column=''PHONE''><AnyExpression>in.customerInfo.phone</AnyExpression></Value></INSERT>' #txt
Ms0 f5 dbUrl Practice #txt
Ms0 f5 lotSize 2147483647 #txt
Ms0 f5 startIdx 0 #txt
Ms0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save input data to database</name>
    </language>
</elementInfo>
' #txt
Ms0 f5 304 42 160 44 -76 -8 #rect
Ms0 f5 @|DBStepIcon #fIcon
Ms0 f3 111 64 168 64 #arcP
Ms0 f0 outLink start.ivp #txt
Ms0 f0 inParamDecl '<> param;' #txt
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
Ms0 f0 81 49 30 30 -21 17 #rect
Ms0 f0 @|StartRequestIcon #fIcon
>Proto Ms0 .type Practice31.MainProcessData #txt
>Proto Ms0 .processKind NORMAL #txt
>Proto Ms0 0 0 32 24 18 0 #rect
>Proto Ms0 @|BIcon #fIcon
Ms0 f0 mainOut f3 tail #connect
Ms0 f3 head f2 mainIn #connect
Ms0 f2 mainOut f6 tail #connect
Ms0 f6 head f5 mainIn #connect
Ms0 f5 mainOut f4 tail #connect
Ms0 f4 head f1 mainIn #connect
