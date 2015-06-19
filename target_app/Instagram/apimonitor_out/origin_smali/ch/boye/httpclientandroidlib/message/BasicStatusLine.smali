.class public Lch/boye/httpclientandroidlib/message/BasicStatusLine;
.super Ljava/lang/Object;
.source "BasicStatusLine.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/StatusLine;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x21e85bd4afe13085L


# instance fields
.field private final protoVersion:Lch/boye/httpclientandroidlib/ProtocolVersion;

.field private final reasonPhrase:Ljava/lang/String;

.field private final statusCode:I


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol version may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-gez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status code may not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicStatusLine;->protoVersion:Lch/boye/httpclientandroidlib/ProtocolVersion;

    iput p2, p0, Lch/boye/httpclientandroidlib/message/BasicStatusLine;->statusCode:I

    iput-object p3, p0, Lch/boye/httpclientandroidlib/message/BasicStatusLine;->reasonPhrase:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicStatusLine;->protoVersion:Lch/boye/httpclientandroidlib/ProtocolVersion;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicStatusLine;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicStatusLine;->statusCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    sget-object v0, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineFormatter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->formatStatusLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/StatusLine;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
