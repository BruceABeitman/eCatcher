.class public Lch/boye/httpclientandroidlib/ProtocolVersion;
.super Ljava/lang/Object;
.source "ProtocolVersion.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x7c37246eac22717cL


# instance fields
.field protected final major:I

.field protected final minor:I

.field protected final protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-gez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol major version number must not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-gez p3, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol minor version number may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput-object p1, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->protocol:Ljava/lang/String;

    iput p2, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->major:I

    iput p3, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->minor:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compareToVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)I
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol version must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object v1, p1, Lch/boye/httpclientandroidlib/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Versions for different protocols cannot be compared. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMajor()I

    move-result v0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMajor()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_47

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMinor()I

    move-result v0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMinor()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_47
    return v0
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
    instance-of v2, p1, Lch/boye/httpclientandroidlib/ProtocolVersion;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lch/boye/httpclientandroidlib/ProtocolVersion;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget v2, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->major:I

    iget v3, p1, Lch/boye/httpclientandroidlib/ProtocolVersion;->major:I

    if-ne v2, v3, :cond_23

    iget v2, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->minor:I

    iget v3, p1, Lch/boye/httpclientandroidlib/ProtocolVersion;->minor:I

    if-eq v2, v3, :cond_4

    :cond_23
    move v0, v1

    goto :goto_4
.end method

.method public forVersion(II)Lch/boye/httpclientandroidlib/ProtocolVersion;
    .registers 5

    iget v0, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->major:I

    if-ne p1, v0, :cond_9

    iget v0, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->minor:I

    if-ne p2, v0, :cond_9

    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Lch/boye/httpclientandroidlib/ProtocolVersion;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lch/boye/httpclientandroidlib/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    move-object p0, v0

    goto :goto_8
.end method

.method public final getMajor()I
    .registers 2

    iget v0, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->major:I

    return v0
.end method

.method public final getMinor()I
    .registers 2

    iget v0, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->minor:I

    return v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final greaterEquals(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->isComparable(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->compareToVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)I

    move-result v0

    if-ltz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final hashCode()I
    .registers 4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->major:I

    const v2, 0x186a0

    mul-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget v1, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->minor:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isComparable(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z
    .registers 4

    if-eqz p1, :cond_e

    iget-object v0, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object v1, p1, Lch/boye/httpclientandroidlib/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final lessEquals(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->isComparable(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->compareToVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)I

    move-result v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    iget v1, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->major:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    iget v1, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->minor:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
