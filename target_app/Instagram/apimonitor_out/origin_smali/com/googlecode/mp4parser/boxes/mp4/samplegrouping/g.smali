.class public final Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/g;
.super Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;
.source "TemporalLevelEntry.java"


# instance fields
.field private a:Z

.field private b:S


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-boolean v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/g;->a:Z

    if-eqz v0, :cond_13

    const/16 v0, 0x80

    :goto_b
    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .registers 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_b
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/g;->a:Z

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_b
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
    check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/g;

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/g;->a:Z

    iget-boolean v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/g;->a:Z

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto :goto_4

    :cond_1d
    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/g;->b:S

    iget-short v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/g;->b:S

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 3

    iget-boolean v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/g;->a:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/g;->b:S

    add-int/2addr v0, v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TemporalLevelEntry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{levelIndependentlyDecodable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/g;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
