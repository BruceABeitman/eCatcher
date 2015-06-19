.class public final Lch/boye/httpclientandroidlib/HttpHost;
.super Ljava/lang/Object;
.source "HttpHost.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT_SCHEME_NAME:Ljava/lang/String; = "http"

.field private static final serialVersionUID:J = -0x687dd718ea3e061aL


# instance fields
.field protected final hostname:Ljava/lang/String;

.field protected final lcHostname:Ljava/lang/String;

.field protected final port:I

.field protected final schemeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;)V
    .registers 5

    iget-object v0, p1, Lch/boye/httpclientandroidlib/HttpHost;->hostname:Ljava/lang/String;

    iget v1, p1, Lch/boye/httpclientandroidlib/HttpHost;->port:I

    iget-object v2, p1, Lch/boye/httpclientandroidlib/HttpHost;->schemeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lch/boye/httpclientandroidlib/HttpHost;->hostname:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/HttpHost;->lcHostname:Ljava/lang/String;

    if-eqz p3, :cond_24

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/HttpHost;->schemeName:Ljava/lang/String;

    :goto_21
    iput p2, p0, Lch/boye/httpclientandroidlib/HttpHost;->port:I

    return-void

    :cond_24
    const-string v0, "http"

    iput-object v0, p0, Lch/boye/httpclientandroidlib/HttpHost;->schemeName:Ljava/lang/String;

    goto :goto_21
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lch/boye/httpclientandroidlib/HttpHost;

    if-eqz v2, :cond_27

    check-cast p1, Lch/boye/httpclientandroidlib/HttpHost;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/HttpHost;->lcHostname:Ljava/lang/String;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/HttpHost;->lcHostname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget v2, p0, Lch/boye/httpclientandroidlib/HttpHost;->port:I

    iget v3, p1, Lch/boye/httpclientandroidlib/HttpHost;->port:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lch/boye/httpclientandroidlib/HttpHost;->schemeName:Ljava/lang/String;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/HttpHost;->schemeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_25
    move v0, v1

    goto :goto_4

    :cond_27
    move v0, v1

    goto :goto_4
.end method

.method public final getHostName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/HttpHost;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public final getPort()I
    .registers 2

    iget v0, p0, Lch/boye/httpclientandroidlib/HttpHost;->port:I

    return v0
.end method

.method public final getSchemeName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/HttpHost;->schemeName:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    const/16 v0, 0x11

    iget-object v1, p0, Lch/boye/httpclientandroidlib/HttpHost;->lcHostname:Ljava/lang/String;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget v1, p0, Lch/boye/httpclientandroidlib/HttpHost;->port:I

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(II)I

    move-result v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/HttpHost;->schemeName:Ljava/lang/String;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toHostString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lch/boye/httpclientandroidlib/HttpHost;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/HttpHost;->hostname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/HttpHost;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    iget v1, p0, Lch/boye/httpclientandroidlib/HttpHost;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    return-object v0

    :cond_2a
    iget-object v0, p0, Lch/boye/httpclientandroidlib/HttpHost;->hostname:Ljava/lang/String;

    goto :goto_29
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toURI()Ljava/lang/String;
    .registers 4

    new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/HttpHost;->schemeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v1, "://"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/HttpHost;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    iget v1, p0, Lch/boye/httpclientandroidlib/HttpHost;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    iget v1, p0, Lch/boye/httpclientandroidlib/HttpHost;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_29
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
