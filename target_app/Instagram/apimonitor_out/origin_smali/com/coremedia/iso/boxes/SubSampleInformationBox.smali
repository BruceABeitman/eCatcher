.class public Lcom/coremedia/iso/boxes/SubSampleInformationBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SubSampleInformationBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "subs"


# instance fields
.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/i;",
            ">;"
        }
    .end annotation
.end field

.field private entryCount:J


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "subs"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entryCount:J

    move v0, v1

    :goto_b
    int-to-long v2, v0

    iget-wide v4, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entryCount:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_62

    new-instance v5, Lcom/coremedia/iso/boxes/i;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/i;-><init>()V

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/coremedia/iso/boxes/i;->a(J)V

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v6

    move v4, v1

    :goto_23
    if-ge v4, v6, :cond_5a

    new-instance v7, Lcom/coremedia/iso/boxes/j;

    invoke-direct {v7}, Lcom/coremedia/iso/boxes/j;-><init>()V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->getVersion()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_54

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    :goto_35
    invoke-virtual {v7, v2, v3}, Lcom/coremedia/iso/boxes/j;->a(J)V

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/coremedia/iso/boxes/j;->a(I)V

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/coremedia/iso/boxes/j;->b(I)V

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/coremedia/iso/boxes/j;->b(J)V

    invoke-virtual {v5, v7}, Lcom/coremedia/iso/boxes/i;->a(Lcom/coremedia/iso/boxes/j;)V

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_23

    :cond_54
    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v2

    int-to-long v2, v2

    goto :goto_35

    :cond_5a
    iget-object v2, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_62
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/i;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/i;->a()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/i;->b()I

    move-result v2

    invoke-static {p1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/i;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/j;

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_65

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/j;->a()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    :goto_4f
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/j;->b()I

    move-result v3

    invoke-static {p1, v3}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/j;->c()I

    move-result v3

    invoke-static {p1, v3}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/j;->d()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_35

    :cond_65
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/j;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v3

    invoke-static {p1, v3}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    goto :goto_4f

    :cond_71
    return-void
.end method

.method protected getContentSize()J
    .registers 8

    const-wide/16 v0, 0x8

    const-wide/16 v2, 0x6

    iget-wide v4, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entryCount:J

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/i;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/i;->b()I

    move-result v5

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->getVersion()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_32

    const/4 v0, 0x4

    :goto_28
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, v5

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_10

    :cond_32
    const/4 v0, 0x2

    goto :goto_28

    :cond_34
    int-to-long v0, v1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    return-object v0
.end method

.method public setEntries(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entryCount:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubSampleInformationBox{entryCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entryCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
