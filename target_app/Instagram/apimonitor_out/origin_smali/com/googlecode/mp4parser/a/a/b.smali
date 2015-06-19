.class final Lcom/googlecode/mp4parser/a/a/b;
.super Ljava/lang/Object;
.source "DefaultMp4Builder.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/a;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/a/e;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/coremedia/iso/boxes/ContainerBox;

.field d:J

.field final synthetic e:Lcom/googlecode/mp4parser/a/a/a;


# direct methods
.method private constructor <init>(Lcom/googlecode/mp4parser/a/a/a;Lcom/googlecode/mp4parser/a/c;)V
    .registers 16

    iput-object p1, p0, Lcom/googlecode/mp4parser/a/a/b;->e:Lcom/googlecode/mp4parser/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->b:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/a/a/b;->d:J

    invoke-virtual {p2}, Lcom/googlecode/mp4parser/a/c;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->a:Ljava/util/List;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/googlecode/mp4parser/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/a/e;

    invoke-virtual {p1, v0, p2}, Lcom/googlecode/mp4parser/a/a/a;->a(Lcom/googlecode/mp4parser/a/e;Lcom/googlecode/mp4parser/a/c;)[I

    move-result-object v2

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_37
    const/4 v0, 0x0

    move v4, v0

    :goto_39
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    if-ge v4, v0, :cond_a8

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_50
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/googlecode/mp4parser/a/e;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    :goto_66
    if-ge v1, v4, :cond_6f

    aget v3, v0, v1

    int-to-long v9, v3

    add-long/2addr v5, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_6f
    invoke-static {v5, v6}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v1

    move v3, v1

    :goto_74
    int-to-long v9, v3

    aget v1, v0, v4

    int-to-long v11, v1

    add-long/2addr v11, v5

    cmp-long v1, v9, v11

    if-gez v1, :cond_50

    iget-object v1, p1, Lcom/googlecode/mp4parser/a/a/a;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    iget-wide v9, p0, Lcom/googlecode/mp4parser/a/a/b;->d:J

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/googlecode/mp4parser/a/a/b;->d:J

    iget-object v9, p0, Lcom/googlecode/mp4parser/a/a/b;->b:Ljava/util/List;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_74

    :cond_a4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_39

    :cond_a8
    return-void
.end method

.method synthetic constructor <init>(Lcom/googlecode/mp4parser/a/a/a;Lcom/googlecode/mp4parser/a/c;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/a/a/b;-><init>(Lcom/googlecode/mp4parser/a/a/a;Lcom/googlecode/mp4parser/a/c;)V

    return-void
.end method

.method private static a(J)Z
    .registers 6

    const-wide/16 v0, 0x8

    add-long/2addr v0, p0

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public final a()J
    .registers 7

    const-wide/16 v0, 0x10

    :goto_2
    invoke-interface {p0}, Lcom/coremedia/iso/boxes/a;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-interface {p0}, Lcom/coremedia/iso/boxes/a;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v2

    invoke-interface {v2}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/a;

    if-eq p0, v0, :cond_29

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/a;->getSize()J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_15

    :cond_29
    invoke-interface {p0}, Lcom/coremedia/iso/boxes/a;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object p0

    move-wide v0, v1

    goto :goto_2

    :cond_2f
    return-wide v0
.end method

.method public final getBox(Ljava/nio/channels/WritableByteChannel;)V
    .registers 10

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/a/a/b;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/googlecode/mp4parser/a/a/b;->a(J)Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    :goto_13
    const-string v3, "mdat"

    invoke-static {v3}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Lcom/googlecode/mp4parser/a/a/b;->a(J)Z

    move-result v3

    if-eqz v3, :cond_97

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    instance-of v0, p1, Ljava/nio/channels/GatheringByteChannel;

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->e:Lcom/googlecode/mp4parser/a/a/a;

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/googlecode/mp4parser/a/a/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    move v2, v0

    :goto_3d
    int-to-double v0, v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v4, v4

    iget-object v6, p0, Lcom/googlecode/mp4parser/a/a/b;->e:Lcom/googlecode/mp4parser/a/a/a;

    iget v6, v6, Lcom/googlecode/mp4parser/a/a/a;->a:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    cmpg-double v0, v0, v4

    if-gez v0, :cond_b9

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->e:Lcom/googlecode/mp4parser/a/a/a;

    iget v0, v0, Lcom/googlecode/mp4parser/a/a/a;->a:I

    mul-int v1, v2, v0

    add-int/lit8 v0, v2, 0x1

    iget-object v4, p0, Lcom/googlecode/mp4parser/a/a/b;->e:Lcom/googlecode/mp4parser/a/a/a;

    iget v4, v4, Lcom/googlecode/mp4parser/a/a/a;->a:I

    mul-int/2addr v0, v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_9b

    add-int/lit8 v0, v2, 0x1

    iget-object v4, p0, Lcom/googlecode/mp4parser/a/a/b;->e:Lcom/googlecode/mp4parser/a/a/a;

    iget v4, v4, Lcom/googlecode/mp4parser/a/a/a;->a:I

    mul-int/2addr v0, v4

    :goto_6b
    invoke-interface {v3, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    :cond_7b
    move-object v1, p1

    check-cast v1, Ljava/nio/channels/GatheringByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gtz v1, :cond_7b

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3d

    :cond_90
    const-wide/16 v3, 0x1

    invoke-static {v0, v3, v4}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    goto/16 :goto_13

    :cond_97
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V

    goto :goto_29

    :cond_9b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_6b

    :cond_a0
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_a6

    :cond_b9
    return-void
.end method

.method public final getParent()Lcom/coremedia/iso/boxes/ContainerBox;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->c:Lcom/coremedia/iso/boxes/ContainerBox;

    return-object v0
.end method

.method public final getSize()J
    .registers 5

    const-wide/16 v0, 0x10

    iget-wide v2, p0, Lcom/googlecode/mp4parser/a/a/b;->d:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    const-string v0, "mdat"

    return-object v0
.end method

.method public final parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/b;)V
    .registers 6

    return-void
.end method

.method public final setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V
    .registers 2

    iput-object p1, p0, Lcom/googlecode/mp4parser/a/a/b;->c:Lcom/coremedia/iso/boxes/ContainerBox;

    return-void
.end method
