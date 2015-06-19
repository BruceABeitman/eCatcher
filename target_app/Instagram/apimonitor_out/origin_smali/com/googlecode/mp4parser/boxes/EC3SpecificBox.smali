.class public Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "EC3SpecificBox.java"


# instance fields
.field dataRate:I

.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/c;",
            ">;"
        }
    .end annotation
.end field

.field numIndSub:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "dec3"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 9

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x3

    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/a/c;

    invoke-direct {v1, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;-><init>(Ljava/nio/ByteBuffer;)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->dataRate:I

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->numIndSub:I

    const/4 v0, 0x0

    :goto_19
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->numIndSub:I

    if-ge v0, v2, :cond_69

    new-instance v2, Lcom/googlecode/mp4parser/boxes/c;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/c;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v3

    iput v3, v2, Lcom/googlecode/mp4parser/boxes/c;->a:I

    invoke-virtual {v1, v6}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v3

    iput v3, v2, Lcom/googlecode/mp4parser/boxes/c;->b:I

    invoke-virtual {v1, v6}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v3

    iput v3, v2, Lcom/googlecode/mp4parser/boxes/c;->c:I

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v3

    iput v3, v2, Lcom/googlecode/mp4parser/boxes/c;->d:I

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v3

    iput v3, v2, Lcom/googlecode/mp4parser/boxes/c;->e:I

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v3

    iput v3, v2, Lcom/googlecode/mp4parser/boxes/c;->f:I

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v3

    iput v3, v2, Lcom/googlecode/mp4parser/boxes/c;->g:I

    iget v3, v2, Lcom/googlecode/mp4parser/boxes/c;->g:I

    if-lez v3, :cond_62

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v3

    iput v3, v2, Lcom/googlecode/mp4parser/boxes/c;->h:I

    :goto_5a
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->entries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_62
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I

    move-result v3

    iput v3, v2, Lcom/googlecode/mp4parser/boxes/c;->i:I

    goto :goto_5a

    :cond_69
    return-void
.end method

.method public addEntry(Lcom/googlecode/mp4parser/boxes/c;)V
    .registers 3

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .registers 10

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x3

    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/a/d;

    invoke-direct {v1, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;-><init>(Ljava/nio/ByteBuffer;)V

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->dataRate:I

    const/16 v2, 0xd

    invoke-virtual {v1, v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0, v5}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/c;

    iget v3, v0, Lcom/googlecode/mp4parser/boxes/c;->a:I

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget v3, v0, Lcom/googlecode/mp4parser/boxes/c;->b:I

    invoke-virtual {v1, v3, v7}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget v3, v0, Lcom/googlecode/mp4parser/boxes/c;->c:I

    invoke-virtual {v1, v3, v7}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget v3, v0, Lcom/googlecode/mp4parser/boxes/c;->d:I

    invoke-virtual {v1, v3, v5}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget v3, v0, Lcom/googlecode/mp4parser/boxes/c;->e:I

    invoke-virtual {v1, v3, v6}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget v3, v0, Lcom/googlecode/mp4parser/boxes/c;->f:I

    invoke-virtual {v1, v3, v5}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget v3, v0, Lcom/googlecode/mp4parser/boxes/c;->g:I

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    iget v3, v0, Lcom/googlecode/mp4parser/boxes/c;->g:I

    if-lez v3, :cond_5d

    iget v0, v0, Lcom/googlecode/mp4parser/boxes/c;->h:I

    const/16 v3, 0x9

    invoke-virtual {v1, v0, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    goto :goto_20

    :cond_5d
    iget v0, v0, Lcom/googlecode/mp4parser/boxes/c;->i:I

    invoke-virtual {v1, v0, v6}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    goto :goto_20

    :cond_63
    return-void
.end method

.method public getContentSize()J
    .registers 7

    const-wide/16 v0, 0x2

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/c;

    iget v0, v0, Lcom/googlecode/mp4parser/boxes/c;->g:I

    if-lez v0, :cond_1f

    const-wide/16 v4, 0x4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_9

    :cond_1f
    const-wide/16 v4, 0x3

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_9

    :cond_25
    return-wide v1
.end method

.method public getDataRate()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->dataRate:I

    return v0
.end method

.method public getEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getNumIndSub()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->numIndSub:I

    return v0
.end method

.method public setDataRate(I)V
    .registers 2

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->dataRate:I

    return-void
.end method

.method public setEntries(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->entries:Ljava/util/List;

    return-void
.end method

.method public setNumIndSub(I)V
    .registers 2

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->numIndSub:I

    return-void
.end method
