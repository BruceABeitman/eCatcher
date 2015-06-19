.class final Lcom/squareup/okhttp/a/a$1;
.super Lorg/apache/http/params/AbstractHttpParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/a/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/a/a;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/squareup/okhttp/a/a$1;->a:Lcom/squareup/okhttp/a/a;

    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    return-void
.end method


# virtual methods
.method public final copy()Lorg/apache/http/params/HttpParams;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const-string v0, "http.route.default-proxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/squareup/okhttp/a/a$1;->a:Lcom/squareup/okhttp/a/a;

    iget-object v0, v0, Lcom/squareup/okhttp/a/a;->a:Lcom/squareup/okhttp/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/m;->c()Ljava/net/Proxy;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_13

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeParameter(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    .registers 8

    const-string v0, "http.route.default-proxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    check-cast p2, Lorg/apache/http/HttpHost;

    const/4 v0, 0x0

    if-eqz p2, :cond_21

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :cond_21
    iget-object v1, p0, Lcom/squareup/okhttp/a/a$1;->a:Lcom/squareup/okhttp/a/a;

    iget-object v1, v1, Lcom/squareup/okhttp/a/a;->a:Lcom/squareup/okhttp/m;

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/m;->a(Ljava/net/Proxy;)Lcom/squareup/okhttp/m;

    return-object p0

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
