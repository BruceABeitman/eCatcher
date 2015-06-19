.class public final Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;
.super Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;
.source "RateShareEntry.java"


# instance fields
.field private a:S

.field private b:S

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:S


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .registers 5

    const/4 v2, 0x1

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->a:S

    if-ne v0, v2, :cond_2c

    const/16 v0, 0xd

    :goto_7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->a:S

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->a:S

    if-ne v0, v2, :cond_33

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->b:S

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_19
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->d:I

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->e:I

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->f:S

    invoke-static {v1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :cond_2c
    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->a:S

    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0xb

    goto :goto_7

    :cond_33
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->b()S

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_39
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .registers 7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->a:S

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->a:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->b:S

    :cond_11
    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->d:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->e:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->f:S

    return-void

    :cond_2d
    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->a:S

    :goto_2f
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->c:Ljava/util/List;

    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;-><init>(IS)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_2f
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
    check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;

    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->f:S

    iget-short v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->f:S

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto :goto_4

    :cond_1d
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->d:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->d:I

    if-eq v2, v3, :cond_25

    move v0, v1

    goto :goto_4

    :cond_25
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->e:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->e:I

    if-eq v2, v3, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->a:S

    iget-short v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->a:S

    if-eq v2, v3, :cond_35

    move v0, v1

    goto :goto_4

    :cond_35
    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->b:S

    iget-short v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->b:S

    if-eq v2, v3, :cond_3d

    move v0, v1

    goto :goto_4

    :cond_3d
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->c:Ljava/util/List;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->c:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_4b
    move v0, v1

    goto :goto_4

    :cond_4d
    iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->c:Ljava/util/List;

    if-eqz v2, :cond_4

    goto :goto_4b
.end method

.method public final hashCode()I
    .registers 3

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->a:S

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->b:S

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->c:Ljava/util/List;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->c:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;->f:S

    add-int/2addr v0, v1

    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_13
.end method
