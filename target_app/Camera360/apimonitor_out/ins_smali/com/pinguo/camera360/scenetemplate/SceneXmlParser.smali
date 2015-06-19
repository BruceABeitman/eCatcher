.class public Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;
.super Lcom/pinguo/camera360/scenetemplate/SceneParser;
.source "SceneXmlParser.java"
.field private static final CHILD:Ljava/lang/String; = "Child"
.field private static final CHILD_ID:Ljava/lang/String; = "ChildId"
.field private static final CLOSED:Ljava/lang/String; = "Closed"
.field private static final DETAIL_LOGO:Ljava/lang/String; = "DetailLogo"
.field private static final DOWNLOAD_COUNT:Ljava/lang/String; = "DownloadCount"
.field private static final HOT:Ljava/lang/String; = "Hot"
.field private static final NEED_PAY:Ljava/lang/String; = "NeedPay"
.field private static final NETWORK_CONNECT_TIMEOUT:I = 0x1770
.field private static final NETWORK_READ_TIMEOUT:I = 0x1770
.field private static final NEW:Ljava/lang/String; = "New"
.field private static final ROOT:Ljava/lang/String; = "Root"
.field private static final TEMPLATE_ID:Ljava/lang/String; = "TemplateId"
.field private static final TITLE:Ljava/lang/String; = "Title"
.field private static final TYPE:Ljava/lang/String; = "Type"
.field private currentItem:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
.field private feedUrl:Ljava/net/URL;
.method public constructor <init>()V
.registers 7
invoke-direct {p0}, Lcom/pinguo/camera360/scenetemplate/SceneParser;-><init>()V
const/4 v2, 0x0
iput-object v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->feedUrl:Ljava/net/URL;
new-instance v0, Ljava/text/SimpleDateFormat;
const-string/jumbo v2, "yyyyMMdd"
sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sget-object v2, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->TEMPLATE_URL:Ljava/lang/String;
const/4 v3, 0x7
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
sget-object v5, Lcom/pinguo/lib/util/Util;->VERSION_CODE:Ljava/lang/String;
aput-object v5, v3, v4
const/4 v4, 0x1
sget-object v5, Lcom/pinguo/lib/util/Util;->PHONE_LOCALE:Ljava/lang/String;
aput-object v5, v3, v4
const/4 v4, 0x2
sget-object v5, Lcom/pinguo/lib/util/Util;->PACKAGE_NAME:Ljava/lang/String;
aput-object v5, v3, v4
const/4 v4, 0x3
sget-object v5, Lcom/pinguo/lib/util/Util;->PHONE_IMEI:Ljava/lang/String;
aput-object v5, v3, v4
const/4 v4, 0x4
sget-object v5, Lcom/pinguo/lib/util/Util;->NETWORK_TYPE:Ljava/lang/String;
aput-object v5, v3, v4
const/4 v4, 0x5
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v5
invoke-static {v5}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x6
new-instance v5, Ljava/util/Date;
invoke-direct {v5}, Ljava/util/Date;-><init>()V
invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/net/URL;
invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
iput-object v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->feedUrl:Ljava/net/URL;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;)Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->currentItem:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->currentItem:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
return-void
.end method
.method private getInputStream()Ljava/io/InputStream;
.registers 4
const/16 v2, 0x1770
iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->feedUrl:Ljava/net/URL;
invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V
invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V
invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v1
return-object v1
.end method
.method protected getKeyFromURL(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const-string/jumbo v0, "/"
invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v0
add-int/lit8 v0, v0, 0x1
const-string/jumbo v1, ".jpg"
invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public parse()Ljava/util/List;
.registers 8
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
new-instance v4, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
invoke-direct {v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;-><init>()V
iput-object v4, p0, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->currentItem:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
new-instance v3, Landroid/sax/RootElement;
const-string/jumbo v4, "Root"
invoke-direct {v3, v4}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "Type"
invoke-virtual {v3, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v0
const-string/jumbo v4, "Child"
invoke-virtual {v0, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v1
new-instance v4, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$1;
invoke-direct {v4, p0, v2}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$1;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;Ljava/util/List;)V
invoke-virtual {v1, v4}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V
const-string/jumbo v4, "ChildId"
invoke-virtual {v1, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$2;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$2;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;)V
invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
const-string/jumbo v4, "TemplateId"
invoke-virtual {v1, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$3;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$3;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;)V
invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
const-string/jumbo v4, "Title"
invoke-virtual {v1, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$4;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$4;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;)V
invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
const-string/jumbo v4, "DetailLogo"
invoke-virtual {v1, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$5;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$5;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;)V
invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
const-string/jumbo v4, "DownloadCount"
invoke-virtual {v1, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$6;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$6;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;)V
invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
const-string/jumbo v4, "NeedPay"
invoke-virtual {v1, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$7;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$7;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;)V
invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
const-string/jumbo v4, "Hot"
invoke-virtual {v1, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$8;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$8;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;)V
invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
const-string/jumbo v4, "New"
invoke-virtual {v1, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$9;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$9;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;)V
invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
const-string/jumbo v4, "Closed"
invoke-virtual {v1, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$10;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$10;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;)V
invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
invoke-direct {p0}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->getInputStream()Ljava/io/InputStream;
move-result-object v4
sget-object v5, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;
invoke-virtual {v3}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;
move-result-object v6
invoke-static {v4, v5, v6}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
return-object v2
.end method