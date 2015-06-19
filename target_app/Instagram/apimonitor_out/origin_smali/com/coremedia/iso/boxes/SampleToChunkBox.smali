.class public Lcom/coremedia/iso/boxes/SampleToChunkBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SampleToChunkBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "stsc"


# instance fields
.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "stsc"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 12

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox;->entries:Ljava/util/List;

    const/4 v0, 0x0

    move v7, v0

    :goto_14
    if-ge v7, v8, :cond_30

    iget-object v9, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox;->entries:Ljava/util/List;

    new-instance v0, Lcom/coremedia/iso/boxes/h;

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/coremedia/iso/boxes/h;-><init>(JJJ)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_14

    :cond_30
    return-void
.end method

.method public blowup(I)[J
    .registers 9

    new-array v1, p1, [J

    new-instance v0, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox;->entries:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/h;

    :goto_16
    const/4 v3, 0x1

    if-le p1, v3, :cond_33

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h;->b()J

    move-result-wide v4

    aput-wide v4, v1, v3

    int-to-long v3, p1

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h;->a()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/h;

    :cond_30
    add-int/lit8 p1, p1, -0x1

    goto :goto_16

    :cond_33
    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h;->b()J

    move-result-wide v3

    aput-wide v3, v1, v2

    return-object v1
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/h;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h;->a()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h;->b()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h;->c()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_13

    :cond_35
    return-void
.end method

.method protected getContentSize()J
    .registers 3

    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public getEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox;->entries:Ljava/util/List;

    return-object v0
.end method

.method public setEntries(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox;->entries:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SampleToChunkBox[entryCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
