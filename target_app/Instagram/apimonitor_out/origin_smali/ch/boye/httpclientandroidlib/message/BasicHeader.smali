.class public Lch/boye/httpclientandroidlib/message/BasicHeader;
.super Ljava/lang/Object;
.source "BasicHeader.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/Header;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x4b516aaf286317beL


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHeader;->name:Ljava/lang/String;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicHeader;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeader;->value:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeader;->value:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->parseElements(Ljava/lang/String;Lch/boye/httpclientandroidlib/message/HeaderValueParser;)[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    new-array v0, v0, [Lch/boye/httpclientandroidlib/HeaderElement;

    goto :goto_b
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    sget-object v0, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineFormatter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->formatHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/Header;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
