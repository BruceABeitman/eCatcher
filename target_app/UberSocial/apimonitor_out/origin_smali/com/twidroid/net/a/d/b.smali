.class public Lcom/twidroid/net/a/d/b;
.super Lcom/twidroid/net/a/d/e;
.source "SourceFile"


# instance fields
.field s:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

.field t:I

.field private final u:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twidroid/model/twitter/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/net/a/d/e;-><init>(Lcom/twidroid/model/twitter/c;)V

    const-string v0, "TweetPhotoVideo"

    iput-object v0, p0, Lcom/twidroid/net/a/d/b;->u:Ljava/lang/String;

    const-string v0, "http://tweetphotoapi.com/api/upload.aspx"

    iput-object v0, p0, Lcom/twidroid/net/a/d/b;->x:Ljava/lang/String;

    const-string v0, "926a1f89-4e8b-4e81-b04e-c9709f4f2ef8"

    iput-object v0, p0, Lcom/twidroid/net/a/d/b;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "YFrog Video"

    return-object v0
.end method

.method public a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Landroid/app/Activity;Lcom/twidroid/d/v;Landroid/os/Handler;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;)Ljava/lang/String;
    .registers 18

    const-string v0, "TweetPhotoVideo"

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

    if-eqz v0, :cond_8b

    invoke-static {p3, p2}, Lcom/twidroid/net/a/d/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const-string v1, "TweetPhotoVideo"

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

    iput-object v1, p0, Lcom/twidroid/net/a/d/b;->s:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    if-nez p7, :cond_93

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/twidroid/net/a/d/b;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/twidroid/net/a/d/b;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "message"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    const-string v2, "api_key"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "926a1f89-4e8b-4e81-b04e-c9709f4f2ef8"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/twidroid/net/a/d/b;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    :goto_77
    const-string v1, "http://tweetphotoapi.com/api/upload.aspx"

    const-string v3, "media"

    iget-object v4, p0, Lcom/twidroid/net/a/d/b;->s:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const-string v5, "video/3gpp"

    const-string v6, "video.3gp"

    move-object v0, p0

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/twidroid/net/a/d/b;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;)Lorg/apache/http/HttpEntity;

    const/4 v0, 0x0

    return-object v0

    :cond_8b
    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v1, "RAW Files not support for video"

    invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_93
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "message"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    const/4 v1, 0x2

    const-string v2, "api_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "926a1f89-4e8b-4e81-b04e-c9709f4f2ef8"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "isoauth"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "true"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/twidroid/net/a/d/b;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    goto :goto_77
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "MediaUrl"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_33

    move-result-object v0

    return-object v0

    :catch_33
    move-exception v0

    new-instance v1, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
