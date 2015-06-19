.class public Lcom/pinguo/camera360/sony/utils/XmlElement;
.super Ljava/lang/Object;
.source "XmlElement.java"


# static fields
.field public static final NULL_ELEMENT:Lcom/pinguo/camera360/sony/utils/XmlElement;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mChildElements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pinguo/camera360/sony/utils/XmlElement;",
            ">;"
        }
    .end annotation
.end field

.field protected mParentElement:Lcom/pinguo/camera360/sony/utils/XmlElement;

.field protected mTagName:Ljava/lang/String;

.field protected mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/pinguo/camera360/sony/utils/XmlElement;

    invoke-direct {v0}, Lcom/pinguo/camera360/sony/utils/XmlElement;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/sony/utils/XmlElement;->NULL_ELEMENT:Lcom/pinguo/camera360/sony/utils/XmlElement;

    const-class v0, Lcom/pinguo/camera360/sony/utils/XmlElement;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/sony/utils/XmlElement;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mParentElement:Lcom/pinguo/camera360/sony/utils/XmlElement;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mChildElements:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mAttributes:Ljava/util/Map;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/pinguo/camera360/sony/utils/XmlElement;
    .registers 5

    if-nez p0, :cond_b

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "parseXml: input is null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    :try_start_b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-static {v1}, Lcom/pinguo/camera360/sony/utils/XmlElement;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/pinguo/camera360/sony/utils/XmlElement;
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_1a} :catch_1c

    move-result-object v2

    :goto_1b
    return-object v2

    :catch_1c
    move-exception v0

    sget-object v2, Lcom/pinguo/camera360/sony/utils/XmlElement;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "parseXml: XmlPullParserException occured."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/pinguo/camera360/sony/utils/XmlElement;->NULL_ELEMENT:Lcom/pinguo/camera360/sony/utils/XmlElement;

    goto :goto_1b
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/pinguo/camera360/sony/utils/XmlElement;
    .registers 8

    sget-object v4, Lcom/pinguo/camera360/sony/utils/XmlElement;->NULL_ELEMENT:Lcom/pinguo/camera360/sony/utils/XmlElement;

    :try_start_2
    sget-object v3, Lcom/pinguo/camera360/sony/utils/XmlElement;->NULL_ELEMENT:Lcom/pinguo/camera360/sony/utils/XmlElement;

    :cond_4
    :goto_4
    :pswitch_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    packed-switch v5, :pswitch_data_5e

    goto :goto_4

    :goto_c
    :pswitch_c
    return-object v4

    :pswitch_d
    new-instance v0, Lcom/pinguo/camera360/sony/utils/XmlElement;

    invoke-direct {v0}, Lcom/pinguo/camera360/sony/utils/XmlElement;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/pinguo/camera360/sony/utils/XmlElement;->setTagName(Ljava/lang/String;)V

    sget-object v5, Lcom/pinguo/camera360/sony/utils/XmlElement;->NULL_ELEMENT:Lcom/pinguo/camera360/sony/utils/XmlElement;

    if-ne v3, v5, :cond_34

    move-object v4, v0

    :goto_1e
    move-object v3, v0

    const/4 v2, 0x0

    :goto_20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/pinguo/camera360/sony/utils/XmlElement;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_34
    invoke-direct {v3, v0}, Lcom/pinguo/camera360/sony/utils/XmlElement;->putChild(Lcom/pinguo/camera360/sony/utils/XmlElement;)V
    :try_end_37
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_37} :catch_38
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_37} :catch_4c

    goto :goto_1e

    :catch_38
    move-exception v1

    sget-object v5, Lcom/pinguo/camera360/sony/utils/XmlElement;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "parseXml: XmlPullParserException."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/pinguo/camera360/sony/utils/XmlElement;->NULL_ELEMENT:Lcom/pinguo/camera360/sony/utils/XmlElement;

    goto :goto_c

    :pswitch_44
    :try_start_44
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/pinguo/camera360/sony/utils/XmlElement;->setValue(Ljava/lang/String;)V
    :try_end_4b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_4b} :catch_38
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4b} :catch_4c

    goto :goto_4

    :catch_4c
    move-exception v1

    sget-object v5, Lcom/pinguo/camera360/sony/utils/XmlElement;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "parseXml: IOException."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/pinguo/camera360/sony/utils/XmlElement;->NULL_ELEMENT:Lcom/pinguo/camera360/sony/utils/XmlElement;

    goto :goto_c

    :pswitch_58
    :try_start_58
    invoke-virtual {v3}, Lcom/pinguo/camera360/sony/utils/XmlElement;->getParent()Lcom/pinguo/camera360/sony/utils/XmlElement;
    :try_end_5b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_5b} :catch_38
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_4c

    move-result-object v3

    goto :goto_4

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_4
        :pswitch_c
        :pswitch_d
        :pswitch_58
        :pswitch_44
    .end packed-switch
.end method

.method private putAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private putChild(Lcom/pinguo/camera360/sony/utils/XmlElement;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mChildElements:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p1, p0}, Lcom/pinguo/camera360/sony/utils/XmlElement;->setParent(Lcom/pinguo/camera360/sony/utils/XmlElement;)V

    return-void
.end method

.method private setParent(Lcom/pinguo/camera360/sony/utils/XmlElement;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mParentElement:Lcom/pinguo/camera360/sony/utils/XmlElement;

    return-void
.end method

.method private setTagName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mTagName:Ljava/lang/String;

    return-void
.end method

.method private setValue(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public findChild(Ljava/lang/String;)Lcom/pinguo/camera360/sony/utils/XmlElement;
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mChildElements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v0, Lcom/pinguo/camera360/sony/utils/XmlElement;->NULL_ELEMENT:Lcom/pinguo/camera360/sony/utils/XmlElement;

    :goto_e
    return-object v0

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/sony/utils/XmlElement;

    invoke-virtual {v0}, Lcom/pinguo/camera360/sony/utils/XmlElement;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_e
.end method

.method public findChildren(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/sony/utils/XmlElement;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mChildElements:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    return-object v1

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/sony/utils/XmlElement;

    invoke-virtual {v0}, Lcom/pinguo/camera360/sony/utils/XmlElement;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mAttributes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_b

    move-object v0, p2

    :cond_b
    return-object v0
.end method

.method public getIntAttribute(Ljava/lang/String;I)I
    .registers 6

    iget-object v2, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mAttributes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_b

    :goto_a
    return p2

    :cond_b
    :try_start_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_12} :catch_14

    move-result p2

    goto :goto_a

    :catch_14
    move-exception v1

    goto :goto_a
.end method

.method public getIntValue(I)I
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mValue:Ljava/lang/String;

    if-nez v1, :cond_5

    :goto_4
    return p1

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_e} :catch_10

    move-result p1

    goto :goto_4

    :catch_10
    move-exception v0

    goto :goto_4
.end method

.method public getParent()Lcom/pinguo/camera360/sony/utils/XmlElement;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mParentElement:Lcom/pinguo/camera360/sony/utils/XmlElement;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mTagName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/utils/XmlElement;->mTagName:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
