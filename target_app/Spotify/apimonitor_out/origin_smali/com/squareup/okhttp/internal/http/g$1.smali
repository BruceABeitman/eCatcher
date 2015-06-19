.class final Lcom/squareup/okhttp/internal/http/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/g;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;
    .registers 4

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_15

    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_14
.end method


# virtual methods
.method public final a(Ljava/net/Proxy;Ljava/net/URL;Ljava/util/List;)Lcom/squareup/okhttp/l;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Proxy;",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/k;",
            ">;)",
            "Lcom/squareup/okhttp/l;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v9

    move v8, v0

    :goto_6
    if-ge v8, v9, :cond_52

    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/squareup/okhttp/k;

    const-string v0, "Basic"

    invoke-virtual {v5}, Lcom/squareup/okhttp/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/http/g$1;->a(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    move-result v2

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/squareup/okhttp/k;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/squareup/okhttp/k;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v2}, Lcom/squareup/okhttp/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/l;

    move-result-object v0

    :goto_4d
    return-object v0

    :cond_4e
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_6

    :cond_52
    const/4 v0, 0x0

    goto :goto_4d
.end method

.method public final b(Ljava/net/Proxy;Ljava/net/URL;Ljava/util/List;)Lcom/squareup/okhttp/l;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Proxy;",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/k;",
            ">;)",
            "Lcom/squareup/okhttp/l;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v9

    move v8, v0

    :goto_6
    if-ge v8, v9, :cond_59

    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/squareup/okhttp/k;

    const-string v0, "Basic"

    invoke-virtual {v5}, Lcom/squareup/okhttp/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/http/g$1;->a(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/squareup/okhttp/k;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/squareup/okhttp/k;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v2}, Lcom/squareup/okhttp/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/l;

    move-result-object v0

    :goto_54
    return-object v0

    :cond_55
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_6

    :cond_59
    const/4 v0, 0x0

    goto :goto_54
.end method
