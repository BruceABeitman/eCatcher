.class public Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "FontTableBox.java"


# instance fields
.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/threegpp26245/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "ftab"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 6

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_17

    new-instance v2, Lcom/googlecode/mp4parser/boxes/threegpp26245/a;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/threegpp26245/a;-><init>()V

    invoke-virtual {v2, p1}, Lcom/googlecode/mp4parser/boxes/threegpp26245/a;->a(Ljava/nio/ByteBuffer;)V

    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 4

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/threegpp26245/a;

    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/threegpp26245/a;->b(Ljava/nio/ByteBuffer;)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method protected getContentSize()J
    .registers 4

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/threegpp26245/a;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/threegpp26245/a;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_8

    :cond_1b
    int-to-long v0, v1

    return-wide v0
.end method

.method public getEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/threegpp26245/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    return-object v0
.end method

.method public setEntries(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/threegpp26245/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    return-void
.end method
