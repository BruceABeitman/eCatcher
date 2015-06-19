.class public Lcom/googlecode/mp4parser/boxes/piff/a;
.super Lcom/googlecode/mp4parser/boxes/piff/f;
.source "PlayReadyHeader.java"


# instance fields
.field private c:J

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/piff/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/piff/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .registers 5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/piff/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/piff/b;

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/piff/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_8

    :cond_25
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    int-to-long v0, v1

    invoke-static {v2, v0, v1}, Lcom/coremedia/iso/g;->c(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v2, v0}, Lcom/coremedia/iso/g;->c(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/piff/b;

    iget v3, v0, Lcom/googlecode/mp4parser/boxes/piff/b;->a:I

    invoke-static {v2, v3}, Lcom/coremedia/iso/g;->c(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/piff/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v2, v3}, Lcom/coremedia/iso/g;->c(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/piff/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_3c

    :cond_60
    return-object v2
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .registers 4

    invoke-static {p1}, Lcom/coremedia/iso/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/piff/a;->c:J

    invoke-static {p1}, Lcom/coremedia/iso/e;->e(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/googlecode/mp4parser/boxes/piff/b;->a(Ljava/nio/ByteBuffer;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/a;->d:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayReadyHeader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/piff/a;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", recordCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/piff/a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", records="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/piff/a;->d:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
