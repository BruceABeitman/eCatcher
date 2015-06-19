.class public Lcom/twidroid/net/a/d/d;
.super Lcom/twidroid/net/a/d/e;
.source "SourceFile"


# static fields
.field private static final s:Ljava/lang/String; = "TwitVideoApi"


# instance fields
.field private final t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twidroid/model/twitter/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/net/a/d/e;-><init>(Lcom/twidroid/model/twitter/c;)V

    const-string v0, "http://api.vid.ly/0.1/upload.xml"

    iput-object v0, p0, Lcom/twidroid/net/a/d/d;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "Vid.ly"

    return-object v0
.end method

.method public a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Landroid/app/Activity;Lcom/twidroid/d/v;Landroid/os/Handler;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;)Ljava/lang/String;
    .registers 18

    const/4 v7, 0x0

    const-string v0, "TwitVideoApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-static {p3, p2}, Lcom/twidroid/net/a/d/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const-string v1, "TwitVideoApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decode URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v1, p0, Lcom/twidroid/net/a/d/d;->v:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/twidroid/net/a/d/d;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/twidroid/net/a/d/d;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "source"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "twidroyd"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/twidroid/net/a/d/d;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    const-string v0, "message"

    invoke-interface {v2, v0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http://api.vid.ly/0.1/upload.xml"

    const-string v3, "media"

    iget-object v4, p0, Lcom/twidroid/net/a/d/d;->v:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const-string v5, "video/3gpp"

    const-string v6, "video.3gp"

    move-object v0, p0

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/twidroid/net/a/d/d;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;)Lorg/apache/http/HttpEntity;

    const/4 v0, 0x0

    return-object v0

    :cond_84
    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v1, "RAW Files not support for video"

    invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "TwitVideoApi"

    invoke-static {v1, p1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    const-string v1, "response"

    invoke-interface {v2, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v5, "status"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ok"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_8c

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_4e
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_73

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_70

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_73
    const-string v1, "TwitVideoApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::parseResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_8c
    const-string v0, "error"

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "code"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/ubermedia/net/a/a/a;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v3, "msg"

    invoke-interface {v0, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c2} :catch_c2

    :catch_c2
    move-exception v0

    new-instance v1, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
