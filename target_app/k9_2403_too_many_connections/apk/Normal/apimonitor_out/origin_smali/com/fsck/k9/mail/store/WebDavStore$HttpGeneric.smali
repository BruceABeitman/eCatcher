.class public Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/WebDavStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HttpGeneric"
.end annotation


# instance fields
.field public METHOD_NAME:Ljava/lang/String;

.field final synthetic this$0:Lcom/fsck/k9/mail/store/WebDavStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    const-string v0, "POST"

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->METHOD_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)V
    .registers 13

    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    const-string v7, "POST"

    iput-object v7, p0, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->METHOD_NAME:Ljava/lang/String;

    sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v7, :cond_2b

    const-string v7, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Starting uri = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const-string v7, "/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v3, v6

    const/4 v7, 0x1

    sub-int v7, v3, v7

    aget-object v0, v6, v7

    const-string v5, ""

    const/4 v7, 0x3

    if-le v3, v7, :cond_50

    :try_start_3c
    const-string v7, "UTF-8"

    invoke-static {v0, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "UTF-8"

    invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "\\+"

    const-string v8, "%20"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3c .. :try_end_4f} :catch_74
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_4f} :catch_9d

    move-result-object v0

    :cond_50
    :goto_50
    const/4 v1, 0x0

    :goto_51
    const/4 v7, 0x1

    sub-int v7, v3, v7

    if-ge v1, v7, :cond_c9

    if-eqz v1, :cond_c6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :catch_74
    move-exception v7

    move-object v4, v7

    const-string v7, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UnsupportedEncodingException caught in HttpGeneric(String uri): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nTrace: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #calls: Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1200(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :catch_9d
    move-exception v7

    move-object v2, v7

    const-string v7, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IllegalArgumentException caught in HttpGeneric(String uri): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nTrace: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #calls: Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1200(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :cond_c6
    aget-object v5, v6, v1

    goto :goto_71

    :cond_c9
    sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v7, :cond_10b

    const-string v7, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "url = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", end = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "url = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setURI(Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/net/URI;)V
    .registers 4

    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    const-string v0, "POST"

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->METHOD_NAME:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setURI(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->METHOD_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->METHOD_NAME:Ljava/lang/String;

    :cond_4
    return-void
.end method
