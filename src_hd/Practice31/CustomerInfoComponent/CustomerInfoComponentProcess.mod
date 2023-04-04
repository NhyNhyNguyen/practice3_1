[Ivy]
18726EE5375EE9CF 7.5.0 #module
>Proto >Proto Collection #zClass
Cs0 CustomerInfoComponentProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @UdInit f0 '' #zField
Cs0 @UdProcessEnd f1 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @UdEvent f3 '' #zField
Cs0 @UdExitEnd f4 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @UdEvent f6 '' #zField
Cs0 @UdProcessEnd f7 '' #zField
Cs0 @GridStep f8 '' #zField
Cs0 @PushWFArc f9 '' #zField
Cs0 @PushWFArc f10 '' #zField
>Proto Cs0 Cs0 CustomerInfoComponentProcess #zField
Cs0 f0 guid 18726EE5399D57FD #txt
Cs0 f0 method start(entity.CustomerEntity,bean.CustomerBean) #txt
Cs0 f0 inParameterDecl '<entity.CustomerEntity customer,bean.CustomerBean bean> param;' #txt
Cs0 f0 inParameterMapAction 'out.bean=param.bean;
out.customerData.customer=param.customer;
' #txt
Cs0 f0 outParameterDecl '<Practice31.CustomerData customerData> result;' #txt
Cs0 f0 outParameterMapAction 'result.customerData=in.customerData;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(CustomerEntity)</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 85 53 22 22 14 0 #rect
Cs0 f0 @|UdInitIcon #fIcon
Cs0 f1 213 53 22 22 14 0 #rect
Cs0 f1 @|UdProcessEndIcon #fIcon
Cs0 f2 107 64 213 64 #arcP
Cs0 f3 guid 18726EE53B835E93 #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Cs0 f3 85 149 22 22 14 0 #rect
Cs0 f3 @|UdEventIcon #fIcon
Cs0 f4 213 149 22 22 14 0 #rect
Cs0 f4 @|UdExitEndIcon #fIcon
Cs0 f5 107 160 213 160 #arcP
Cs0 f6 guid 187459F89C5C18E5 #txt
Cs0 f6 actionTable 'out=in;
' #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fileDownload</name>
    </language>
</elementInfo>
' #txt
Cs0 f6 85 213 22 22 14 0 #rect
Cs0 f6 @|UdEventIcon #fIcon
Cs0 f7 365 213 22 22 14 0 #rect
Cs0 f7 @|UdProcessEndIcon #fIcon
Cs0 f8 actionTable 'out=in;
' #txt
Cs0 f8 actionCode 'import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import javax.faces.bean.ManagedBean;
import org.primefaces.model.DefaultStreamedContent;
import org.primefaces.model.StreamedContent;

InputStream stream;
stream = new FileInputStream(in.customerData.customer.documents);
in.fileDownload = new DefaultStreamedContent(stream, "text/txt", in.customerData.customer.fileName);


' #txt
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DowloadContent</name>
    </language>
</elementInfo>
' #txt
Cs0 f8 214 212 36 24 20 -2 #rect
Cs0 f8 @|StepIcon #fIcon
Cs0 f9 107 224 214 224 #arcP
Cs0 f10 250 224 365 224 #arcP
>Proto Cs0 .type Practice31.CustomerInfoComponent.CustomerInfoComponentData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f3 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f6 mainOut f9 tail #connect
Cs0 f9 head f8 mainIn #connect
Cs0 f8 mainOut f10 tail #connect
Cs0 f10 head f7 mainIn #connect
