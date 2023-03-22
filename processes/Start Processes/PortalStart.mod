[Ivy]
18704EC79C911C09 7.5.0 #module
>Proto >Proto Collection #zClass
Pt0 PortalStart Big #zClass
Pt0 B #cInfo
Pt0 #process
Pt0 @TextInP .type .type #zField
Pt0 @TextInP .processKind .processKind #zField
Pt0 @TextInP .xml .xml #zField
Pt0 @TextInP .responsibility .responsibility #zField
Pt0 @StartRequest f0 '' #zField
Pt0 @EndTask f1 '' #zField
Pt0 @PushWFArc f2 '' #zField
Pt0 @UserDialog f3 '' #zField
>Proto Pt0 Pt0 PortalStart #zField
Pt0 f0 outLink start.ivp #txt
Pt0 f0 inParamDecl '<> param;' #txt
Pt0 f0 requestEnabled true #txt
Pt0 f0 triggerEnabled false #txt
Pt0 f0 callSignature start() #txt
Pt0 f0 caseData businessCase.attach=true #txt
Pt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Pt0 f0 @C|.responsibility Everybody #txt
Pt0 f0 81 33 30 30 -21 17 #rect
Pt0 f0 @|StartRequestIcon #fIcon
Pt0 f1 513 33 30 30 0 15 #rect
Pt0 f1 @|EndIcon #fIcon
Pt0 f2 111 48 513 48 #arcP
Pt0 f3 dialogId task31.Test #txt
Pt0 f3 startMethod start(task31.PortalStartData) #txt
Pt0 f3 requestActionDecl '<task31.PortalStartData portalStartData> param;' #txt
Pt0 f3 requestMappingAction 'param.portalStartData=in;
' #txt
Pt0 f3 responseMappingAction 'out=in;
out=result.portalStartData;
' #txt
Pt0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Test</name>
    </language>
</elementInfo>
' #txt
Pt0 f3 248 34 112 44 -11 -8 #rect
Pt0 f3 @|UserDialogIcon #fIcon
>Proto Pt0 .type task31.PortalStartData #txt
>Proto Pt0 .processKind NORMAL #txt
>Proto Pt0 0 0 32 24 18 0 #rect
>Proto Pt0 @|BIcon #fIcon
Pt0 f0 mainOut f2 tail #connect
Pt0 f2 head f1 mainIn #connect
