.class public Lcom/googlecode/mp4parser/boxes/mp4/a/f;
.super Lcom/googlecode/mp4parser/boxes/mp4/a/b;
.source "DecoderSpecificInfo.java"


# annotations
.annotation runtime Lcom/googlecode/mp4parser/boxes/mp4/a/g;
    a = {
        0x5
    }
.end annotation


# instance fields
.field a:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .registers 3

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/f;->U:I

    if-lez v0, :cond_f

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/f;->U:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/f;->a:[B

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/f;->a:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_f
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/a/f;

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/f;->a:[B

    iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/a/f;->a:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/f;->a:[B

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/f;->a:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DecoderSpecificInfo"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{bytes="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/f;->a:[B

    if-nez v0, :cond_23

    const-string v0, "null"

    :goto_16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/f;->a:[B

    invoke-static {v0}, Lcom/coremedia/iso/d;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method
