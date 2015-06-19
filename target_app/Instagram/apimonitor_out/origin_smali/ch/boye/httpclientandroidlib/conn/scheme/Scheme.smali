.class public final Lch/boye/httpclientandroidlib/conn/scheme/Scheme;
.super Ljava/lang/Object;
.source "Scheme.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final defaultPort:I

.field private final layered:Z

.field private final name:Ljava/lang/String;

.field private final socketFactory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

.field private stringRep:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-lez p2, :cond_14

    const v0, 0xffff

    if-le p2, v0, :cond_29

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Port is invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    if-nez p3, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->name:Ljava/lang/String;

    iput-object p3, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->socketFactory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    iput p2, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->defaultPort:I

    instance-of v0, p3, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->layered:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;I)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-lez p3, :cond_1e

    const v0, 0xffff

    if-le p3, v0, :cond_33

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Port is invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->name:Ljava/lang/String;

    instance-of v0, p2, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;

    if-eqz v0, :cond_4e

    new-instance v0, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactoryAdaptor;

    check-cast p2, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;

    invoke-direct {v0, p2}, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactoryAdaptor;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->socketFactory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->layered:Z

    :goto_4b
    iput p3, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->defaultPort:I

    return-void

    :cond_4e
    new-instance v0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;

    invoke-direct {v0, p2}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->socketFactory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->layered:Z

    goto :goto_4b
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    if-eqz v2, :cond_23

    check-cast p1, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->name:Ljava/lang/String;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget v2, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->defaultPort:I

    iget v3, p1, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->defaultPort:I

    if-ne v2, v3, :cond_21

    iget-boolean v2, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->layered:Z

    iget-boolean v3, p1, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->layered:Z

    if-eq v2, v3, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4

    :cond_23
    move v0, v1

    goto :goto_4
.end method

.method public final getDefaultPort()I
    .registers 2

    iget v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->defaultPort:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSchemeSocketFactory()Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->socketFactory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    return-object v0
.end method

.method public final getSocketFactory()Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->socketFactory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    instance-of v0, v0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->socketFactory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    check-cast v0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->getFactory()Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->layered:Z

    if-eqz v0, :cond_1e

    new-instance v1, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactoryAdaptor;

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->socketFactory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    check-cast v0, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactoryAdaptor;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;)V

    move-object v0, v1

    goto :goto_e

    :cond_1e
    new-instance v0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->socketFactory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;)V

    goto :goto_e
.end method

.method public final hashCode()I
    .registers 3

    const/16 v0, 0x11

    iget v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->defaultPort:I

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(II)I

    move-result v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->layered:Z

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(IZ)I

    move-result v0

    return v0
.end method

.method public final isLayered()Z
    .registers 2

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->layered:Z

    return v0
.end method

.method public final resolvePort(I)I
    .registers 2

    if-gtz p1, :cond_4

    iget p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->defaultPort:I

    :cond_4
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->defaultPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    :cond_22
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    return-object v0
.end method
