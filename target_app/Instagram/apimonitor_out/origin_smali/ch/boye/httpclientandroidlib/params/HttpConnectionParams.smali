.class public final Lch/boye/httpclientandroidlib/params/HttpConnectionParams;
.super Ljava/lang/Object;
.source "HttpConnectionParams.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/params/CoreConnectionPNames;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectionTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)I
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.connection.timeout"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLinger(Lch/boye/httpclientandroidlib/params/HttpParams;)I
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.socket.linger"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSoReuseaddr(Lch/boye/httpclientandroidlib/params/HttpParams;)Z
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.socket.reuseaddr"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)I
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.socket.timeout"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSocketBufferSize(Lch/boye/httpclientandroidlib/params/HttpParams;)I
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.socket.buffer-size"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTcpNoDelay(Lch/boye/httpclientandroidlib/params/HttpParams;)Z
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.tcp.nodelay"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isStaleCheckingEnabled(Lch/boye/httpclientandroidlib/params/HttpParams;)Z
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.connection.stalecheck"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setConnectionTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.connection.timeout"

    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public static setLinger(Lch/boye/httpclientandroidlib/params/HttpParams;I)V
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.socket.linger"

    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public static setSoReuseaddr(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.socket.reuseaddr"

    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public static setSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.socket.timeout"

    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public static setSocketBufferSize(Lch/boye/httpclientandroidlib/params/HttpParams;I)V
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.socket.buffer-size"

    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public static setStaleCheckingEnabled(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.connection.stalecheck"

    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public static setTcpNoDelay(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http.tcp.nodelay"

    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method
