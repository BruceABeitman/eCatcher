.class public final Lcom/instagram/common/j/a;
.super Ljava/lang/Object;
.source "ListenableHttpDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lch/boye/httpclientandroidlib/client/HttpClient;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/instagram/common/j/b;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/client/HttpClient;Ljava/lang/String;Lcom/instagram/common/j/b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/common/j/a;->a:Lch/boye/httpclientandroidlib/client/HttpClient;

    iput-object p2, p0, Lcom/instagram/common/j/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/common/j/a;->c:Lcom/instagram/common/j/b;

    iget-object v0, p0, Lcom/instagram/common/j/a;->c:Lcom/instagram/common/j/b;

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    return-void
.end method

.method private a(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    if-nez p1, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP entity may not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    :try_start_10
    invoke-static {p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_4d

    :goto_16
    throw v0

    :cond_17
    if-nez v1, :cond_20

    :try_start_19
    invoke-static {p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1f} :catch_4f

    :goto_1f
    return-void

    :cond_20
    :try_start_20
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-lez v0, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_37
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_44

    iget-object v3, p0, Lcom/instagram/common/j/a;->c:Lcom/instagram/common/j/b;

    invoke-interface {v3, v0, v2}, Lcom/instagram/common/j/b;->a([BI)V
    :try_end_43
    .catchall {:try_start_20 .. :try_end_43} :catchall_f

    goto :goto_37

    :cond_44
    :try_start_44
    invoke-static {p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4a} :catch_4b

    goto :goto_1f

    :catch_4b
    move-exception v0

    goto :goto_1f

    :catch_4d
    move-exception v1

    goto :goto_16

    :catch_4f
    move-exception v0

    goto :goto_1f
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    new-instance v0, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    iget-object v1, p0, Lcom/instagram/common/j/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/common/j/a;->c:Lcom/instagram/common/j/b;

    invoke-interface {v1, v0}, Lcom/instagram/common/j/b;->a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;)V

    iget-object v1, p0, Lcom/instagram/common/j/a;->a:Lch/boye/httpclientandroidlib/client/HttpClient;

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/instagram/common/j/a;->c:Lcom/instagram/common/j/b;

    invoke-interface {v0}, Lcom/instagram/common/j/b;->b()V

    :goto_19
    return-void

    :cond_1a
    iget-object v1, p0, Lcom/instagram/common/j/a;->c:Lcom/instagram/common/j/b;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    invoke-interface {v1, v2}, Lcom/instagram/common/j/b;->a(Lch/boye/httpclientandroidlib/StatusLine;)V

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/common/j/a;->a(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_34} :catch_3a

    iget-object v0, p0, Lcom/instagram/common/j/a;->c:Lcom/instagram/common/j/b;

    invoke-interface {v0}, Lcom/instagram/common/j/b;->a()V

    goto :goto_19

    :catch_3a
    move-exception v0

    const-string v1, "ListenableHttpDownloader"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/common/j/a;->c:Lcom/instagram/common/j/b;

    invoke-interface {v0}, Lcom/instagram/common/j/b;->b()V

    goto :goto_19
.end method
