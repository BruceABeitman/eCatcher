.class public Lcom/admarvel/android/ads/AdMarvelXMLReader;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"
.field private a:Lcom/admarvel/android/ads/AdMarvelXMLElement;
.field private b:Ljava/util/Stack;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelXMLReader;->a:Lcom/admarvel/android/ads/AdMarvelXMLElement;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelXMLReader;->b:Ljava/util/Stack;
return-void
.end method
.method private static chkAndReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 8
const/4 v1, 0x0
if-eqz p0, :cond_1f
:try_start_3
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
:try_end_8
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_27
:goto_8
const/4 v2, 0x0
:goto_9
:try_start_9
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_2d
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v3
add-int/2addr v3, v2
invoke-virtual {v0, v2, v3, p2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
:try_end_1c
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_36
add-int/lit8 v2, v2, 0x1
goto :goto_9
:try_start_1f
:cond_1f
new-instance v0, Ljava/lang/StringBuffer;
const-string v2, ""
invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
:try_end_26
.catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_27
goto :goto_8
:catch_27
move-exception v0
move-object v2, v1
:goto_29
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
move-object v0, v2
:cond_2d
if-nez v0, :cond_31
move-object v0, v1
:goto_30
return-object v0
:cond_31
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_30
:catch_36
move-exception v2
move-object v4, v2
move-object v2, v0
move-object v0, v4
goto :goto_29
.end method
.method static xmlDecode(Ljava/lang/String;)Ljava/lang/String;
.registers 4
if-eqz p0, :cond_23
const-string v0, "&amp;"
const-string v1, "&"
invoke-static {p0, v0, v1}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->chkAndReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "&quot;"
const-string v2, "\""
invoke-static {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->chkAndReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "&gt;"
const-string v2, ">"
invoke-static {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->chkAndReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "&lt;"
const-string v2, "<"
invoke-static {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->chkAndReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_22
return-object v0
:cond_23
const/4 v0, 0x0
goto :goto_22
.end method
.method static xmlEncode(Ljava/lang/String;)Ljava/lang/String;
.registers 4
if-eqz p0, :cond_23
const-string v0, "&"
const-string v1, "&amp;"
invoke-static {p0, v0, v1}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->chkAndReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "\""
const-string v2, "&quot;"
invoke-static {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->chkAndReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "<"
const-string v2, "&lt;"
invoke-static {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->chkAndReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, ">"
const-string v2, "&gt;"
invoke-static {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->chkAndReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_22
return-object v0
:cond_23
const/4 v0, 0x0
goto :goto_22
.end method
.method public characters([CII)V
.registers 6
new-instance v0, Ljava/lang/String;
invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V
add-int v1, p2, p3
invoke-virtual {v0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelXMLReader;->b:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->a(Ljava/lang/String;)V
return-void
.end method
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelXMLReader;->b:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
return-void
.end method
.method public getParsedXMLData()Lcom/admarvel/android/ads/AdMarvelXMLElement;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelXMLReader;->a:Lcom/admarvel/android/ads/AdMarvelXMLElement;
return-object v0
.end method
.method public parseXMLString(Ljava/lang/String;)V
.registers 5
new-instance v0, Ljava/util/Stack;
invoke-direct {v0}, Ljava/util/Stack;-><init>()V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelXMLReader;->b:Ljava/util/Stack;
invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;
move-result-object v0
invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
move-result-object v0
invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
move-result-object v0
invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
new-instance v1, Lorg/xml/sax/InputSource;
new-instance v2, Ljava/io/StringReader;
invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V
invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
return-void
.end method
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
.registers 10
new-instance v1, Ljava/util/LinkedHashMap;
invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V
if-eqz p4, :cond_1c
invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I
move-result v2
const/4 v0, 0x0
:goto_c
if-ge v0, v2, :cond_1c
invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;
move-result-object v3
invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_c
:cond_1c
new-instance v2, Lcom/admarvel/android/ads/AdMarvelXMLElement;
invoke-direct {v2, p2, v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;-><init>(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelXMLReader;->b:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
move-result v0
if-eqz v0, :cond_31
iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelXMLReader;->a:Lcom/admarvel/android/ads/AdMarvelXMLElement;
:goto_2b
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelXMLReader;->b:Ljava/util/Stack;
invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
return-void
:cond_31
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelXMLReader;->b:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/ArrayList;
if-nez v1, :cond_51
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
invoke-virtual {v0, p2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_51
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_2b
.end method