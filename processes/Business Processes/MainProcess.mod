[Ivy]
1870507A9683D037 7.5.0 #module
>Proto >Proto Collection #zClass
Ms0 MainProcess Big #zClass
Ms0 B #cInfo
Ms0 #process
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @StartRequest f0 '' #zField
Ms0 @EndTask f1 '' #zField
Ms0 @UserDialog f3 '' #zField
Ms0 @PushWFArc f2 '' #zField
Ms0 @PushWFArc f4 '' #zField
>Proto Ms0 Ms0 MainProcess #zField
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
Ms0 f0 80 48 32 32 -21 17 #rect
Ms0 f0 @|StartRequestIcon #fIcon
Ms0 f1 337 49 30 30 0 15 #rect
Ms0 f1 @|EndIcon #fIcon
Ms0 f3 dialogId task31.HomePage #txt
Ms0 f3 startMethod start(task31.PortalStartData) #txt
Ms0 f3 requestActionDecl '<task31.PortalStartData portalStartData> param;' #txt
Ms0 f3 responseMappingAction 'out=in;
' #txt
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>HomePage</name>
    </language>
</elementInfo>
' #txt
Ms0 f3 168 42 112 44 -29 -8 #rect
Ms0 f3 @|UserDialogIcon #fIcon
Ms0 f2 112 64 168 64 #arcP
Ms0 f4 280 64 337 64 #arcP
>Proto Ms0 .type task31.PortalStartData #txt
>Proto Ms0 .processKind NORMAL #txt
>Proto Ms0 0 0 32 24 18 0 #rect
>Proto Ms0 @|BIcon #fIcon
Ms0 f0 mainOut f2 tail #connect
Ms0 f2 head f3 mainIn #connect
Ms0 f3 mainOut f4 tail #connect
Ms0 f4 head f1 mainIn #connect
