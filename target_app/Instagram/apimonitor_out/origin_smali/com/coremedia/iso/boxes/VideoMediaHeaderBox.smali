.class public Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;
.super Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
.source "VideoMediaHeaderBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "vmhd"


# instance fields
.field private graphicsmode:I

.field private opcolor:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "vmhd"

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->graphicsmode:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->opcolor:[I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->setFlags(I)V

    return-void

    nop

    :array_16
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 6

    const/4 v3, 0x3

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->graphicsmode:I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->opcolor:[I

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v3, :cond_1c

    iget-object v1, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->opcolor:[I

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1c
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    iget v0, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->graphicsmode:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    iget-object v1, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->opcolor:[I

    array-length v2, v1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_16

    aget v3, v1, v0

    invoke-static {p1, v3}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_16
    return-void
.end method

.method protected getContentSize()J
    .registers 3

    const-wide/16 v0, 0xc

    return-wide v0
.end method

.method public getGraphicsmode()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->graphicsmode:I

    return v0
.end method

.method public getOpcolor()[I
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->opcolor:[I

    return-object v0
.end method

.method public setGraphicsmode(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->graphicsmode:I

    return-void
.end method

.method public setOpcolor([I)V
    .registers 2

    iput-object p1, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->opcolor:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoMediaHeaderBox[graphicsmode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->getGraphicsmode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";opcolor0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->getOpcolor()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";opcolor1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->getOpcolor()[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";opcolor2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->getOpcolor()[I

    move-result-object v1

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
