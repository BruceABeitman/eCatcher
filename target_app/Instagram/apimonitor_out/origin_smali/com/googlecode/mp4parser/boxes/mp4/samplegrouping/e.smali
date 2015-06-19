.class public final Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;
.super Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;
.source "RollRecoveryEntry.java"


# instance fields
.field private a:S


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .registers 3

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->a:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->a:S

    return-void
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
    check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;

    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->a:S

    iget-short v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->a:S

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->a:S

    return v0
.end method
