.class public Lch/boye/httpclientandroidlib/impl/auth/BasicScheme;
.super Lch/boye/httpclientandroidlib/impl/auth/RFC2617Scheme;
.source "BasicScheme.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private complete:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/auth/RFC2617Scheme;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/auth/BasicScheme;->complete:Z

    return-void
.end method

.method public static authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/Header;
    .registers 7

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credentials may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lch/boye/httpclientandroidlib/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lch/boye/httpclientandroidlib/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5f

    const-string v0, "null"

    :goto_31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/Base64;->encode([BI)[B

    move-result-object v0

    new-instance v1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    if-eqz p2, :cond_64

    const-string v2, "Proxy-Authorization"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :goto_4f
    const-string v2, ": Basic "

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append([BII)V

    new-instance v0, Lch/boye/httpclientandroidlib/message/BufferedHeader;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/message/BufferedHeader;-><init>(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V

    return-object v0

    :cond_5f
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_64
    const-string v2, "Authorization"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_4f
.end method


# virtual methods
.method public authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/Header;
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credentials may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/auth/params/AuthParams;->getCredentialCharset(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/auth/BasicScheme;->isProxy()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/auth/BasicScheme;->authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .registers 2

    const-string v0, "basic"

    return-object v0
.end method

.method public isComplete()Z
    .registers 2

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/auth/BasicScheme;->complete:Z

    return v0
.end method

.method public isConnectionBased()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public processChallenge(Lch/boye/httpclientandroidlib/Header;)V
    .registers 3

    invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/impl/auth/RFC2617Scheme;->processChallenge(Lch/boye/httpclientandroidlib/Header;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/auth/BasicScheme;->complete:Z

    return-void
.end method
