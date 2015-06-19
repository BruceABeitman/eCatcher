.class public final Lcom/squareup/okhttp/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/squareup/okhttp/a;

.field final b:Ljava/net/Proxy;

.field final c:Ljava/net/InetSocketAddress;

.field final d:Z


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "address == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-nez p3, :cond_21

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inetSocketAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput-object p1, p0, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;

    iput-object p2, p0, Lcom/squareup/okhttp/p;->b:Ljava/net/Proxy;

    iput-object p3, p0, Lcom/squareup/okhttp/p;->c:Ljava/net/InetSocketAddress;

    iput-boolean p4, p0, Lcom/squareup/okhttp/p;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/net/Proxy;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/p;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/squareup/okhttp/p;

    if-eqz v1, :cond_2c

    check-cast p1, Lcom/squareup/okhttp/p;

    iget-object v1, p0, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;

    iget-object v2, p1, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/squareup/okhttp/p;->b:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/squareup/okhttp/p;->b:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/squareup/okhttp/p;->c:Ljava/net/InetSocketAddress;

    iget-object v2, p1, Lcom/squareup/okhttp/p;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-boolean v1, p0, Lcom/squareup/okhttp/p;->d:Z

    iget-boolean v2, p1, Lcom/squareup/okhttp/p;->d:Z

    if-ne v1, v2, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/a;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/p;->b:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/p;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/squareup/okhttp/p;->d:Z

    if-eqz v0, :cond_22

    mul-int/lit8 v0, v1, 0x1f

    :goto_20
    add-int/2addr v0, v1

    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_20
.end method
