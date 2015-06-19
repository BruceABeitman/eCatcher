.class public Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;
.super Lcom/pinguo/camera360/puzzle/template/BasePuzzleTemplateParser;
.source "PuzzleTemplateXMLParser.java"
.field public static final TAG:Ljava/lang/String;
.field private currentTemplateItem:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;
.field private items:Ljava/util/List;
.field private positions:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/puzzle/template/BasePuzzleTemplateParser;-><init>(Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->items:Ljava/util/List;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;)Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->currentTemplateItem:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->positions:Ljava/util/List;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->currentTemplateItem:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->positions:Ljava/util/List;
return-void
.end method
.method public parse()Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;
.registers 8
new-instance v2, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;
invoke-direct {v2}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;-><init>()V
new-instance v3, Landroid/sax/RootElement;
const-string/jumbo v4, "template"
invoke-direct {v3, v4}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
iput-object v4, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->items:Ljava/util/List;
const-string/jumbo v4, "id"
invoke-virtual {v3, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$1;
invoke-direct {v5, p0, v2}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$1;-><init>(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;)V
invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
const-string/jumbo v4, "name"
invoke-virtual {v3, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$2;
invoke-direct {v5, p0, v2}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$2;-><init>(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;)V
invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
const-string/jumbo v4, "width"
invoke-virtual {v3, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$3;
invoke-direct {v5, p0, v2}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$3;-><init>(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;)V
invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
const-string/jumbo v4, "ratio"
invoke-virtual {v3, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$4;
invoke-direct {v5, p0, v2}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$4;-><init>(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;)V
invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
const-string/jumbo v4, "padding"
invoke-virtual {v3, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$5;
invoke-direct {v5, p0, v2}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$5;-><init>(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;)V
invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
new-instance v4, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$6;
invoke-direct {v4, p0, v2}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$6;-><init>(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;)V
invoke-virtual {v3, v4}, Landroid/sax/RootElement;->setEndElementListener(Landroid/sax/EndElementListener;)V
const-string/jumbo v4, "item"
invoke-virtual {v3, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v1
new-instance v4, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$7;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$7;-><init>(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;)V
invoke-virtual {v1, v4}, Landroid/sax/Element;->setElementListener(Landroid/sax/ElementListener;)V
const-string/jumbo v4, "type"
invoke-virtual {v1, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$8;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$8;-><init>(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;)V
invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
const-string/jumbo v4, "position"
invoke-virtual {v1, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$9;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$9;-><init>(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;)V
invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
:try_start_94
invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->getInputStream()Ljava/io/InputStream;
move-result-object v4
sget-object v5, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;
invoke-virtual {v3}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;
move-result-object v6
invoke-static {v4, v5, v6}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
:try_end_a1
.catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a1} :catch_a2
return-object v2
:catch_a2
move-exception v0
new-instance v4, Ljava/lang/RuntimeException;
invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v4
.end method