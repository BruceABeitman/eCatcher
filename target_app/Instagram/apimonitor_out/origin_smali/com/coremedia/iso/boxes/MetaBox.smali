.class public Lcom/coremedia/iso/boxes/MetaBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "MetaBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "meta"


# instance fields
.field private flags:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const-string v0, "meta"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    iput v1, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 6

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/coremedia/iso/e;->l(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hdlr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v3, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    iput v3, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    :goto_1e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_50

    :try_start_26
    iget-object v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->boxes:Ljava/util/List;

    iget-object v1, p0, Lcom/coremedia/iso/boxes/MetaBox;->boxParser:Lcom/coremedia/iso/b;

    new-instance v2, Lcom/googlecode/mp4parser/c/a;

    invoke-direct {v2, p1}, Lcom/googlecode/mp4parser/c/a;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v1, v2, p0}, Lcom/coremedia/iso/b;->a(Ljava/nio/channels/ReadableByteChannel;Lcom/coremedia/iso/boxes/ContainerBox;)Lcom/coremedia/iso/boxes/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_36} :catch_37

    goto :goto_1e

    :catch_37
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sebastian needs to fix 7518765283"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    goto :goto_1e

    :cond_50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_5e

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sebastian needs to fix it 90732r26537"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MetaBox;->isMp4Box()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;I)V

    :cond_10
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/MetaBox;->writeChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public getContentSize()J
    .registers 5

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MetaBox;->isMp4Box()Z

    move-result v0

    if-eqz v0, :cond_e

    const-wide/16 v0, 0x4

    invoke-super {p0}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getContentSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_d
    return-wide v0

    :cond_e
    invoke-super {p0}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getContentSize()J

    move-result-wide v0

    goto :goto_d
.end method

.method public getNumOfBytesToFirstChild()J
    .registers 3

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MetaBox;->isMp4Box()Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0xc

    :goto_8
    return-wide v0

    :cond_9
    const-wide/16 v0, 0x8

    goto :goto_8
.end method

.method public isMp4Box()Z
    .registers 3

    const/4 v1, -0x1

    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setMp4Box(Z)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-eqz p1, :cond_9

    iput v1, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    iput v1, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    :goto_8
    return-void

    :cond_9
    iput v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    iput v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    goto :goto_8
.end method
