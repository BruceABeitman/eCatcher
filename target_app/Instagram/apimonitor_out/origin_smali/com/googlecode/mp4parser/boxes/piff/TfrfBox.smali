.class public Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "TfrfBox.java"


# instance fields
.field public entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/piff/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "uuid"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_37

    new-instance v2, Lcom/googlecode/mp4parser/boxes/piff/g;

    invoke-direct {v2, p0}, Lcom/googlecode/mp4parser/boxes/piff/g;-><init>(Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;)V

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2a

    invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/googlecode/mp4parser/boxes/piff/g;->a:J

    invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/googlecode/mp4parser/boxes/piff/g;->b:J

    :goto_22
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->entries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2a
    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/googlecode/mp4parser/boxes/piff/g;->a:J

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/googlecode/mp4parser/boxes/piff/g;->b:J

    goto :goto_22

    :cond_37
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/piff/g;

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->getVersion()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    iget-wide v2, v0, Lcom/googlecode/mp4parser/boxes/piff/g;->a:J

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V

    iget-wide v2, v0, Lcom/googlecode/mp4parser/boxes/piff/g;->b:J

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V

    goto :goto_12

    :cond_30
    iget-wide v2, v0, Lcom/googlecode/mp4parser/boxes/piff/g;->a:J

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    iget-wide v2, v0, Lcom/googlecode/mp4parser/boxes/piff/g;->b:J

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_12

    :cond_3b
    return-void
.end method

.method protected getContentSize()J
    .registers 4

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->getVersion()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    const/16 v0, 0x10

    :goto_f
    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    int-to-long v0, v0

    return-wide v0

    :cond_14
    const/16 v0, 0x8

    goto :goto_f
.end method

.method public getEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/piff/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getFragmentCount()J
    .registers 3

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getUserType()[B
    .registers 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 0x1
        0xd4t
        0x80t
        0x7et
        0xf2t
        0xcat
        0x39t
        0x46t
        0x95t
        0x8et
        0x54t
        0x26t
        0xcbt
        0x9et
        0x46t
        0xa7t
        0x9ft
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TfrfBox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->entries:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
