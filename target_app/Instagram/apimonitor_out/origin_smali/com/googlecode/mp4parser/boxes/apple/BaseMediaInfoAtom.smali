.class public Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "BaseMediaInfoAtom.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "gmin"


# instance fields
.field balance:S

.field graphicsMode:S

.field opColorB:I

.field opColorG:I

.field opColorR:I

.field reserved:S


# direct methods
.method public constructor <init>()V
    .registers 3

    const v1, 0x8000

    const-string v0, "gmin"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x40

    iput-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->graphicsMode:S

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->opColorR:I

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->opColorG:I

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->opColorB:I

    return-void
.end method


# virtual methods
.method protected _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->graphicsMode:S

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->opColorR:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->opColorG:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->opColorB:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->balance:S

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->reserved:S

    return-void
.end method

.method public getBalance()S
    .registers 2

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->balance:S

    return v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->graphicsMode:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->opColorR:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->opColorG:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->opColorB:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->balance:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->reserved:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .registers 3

    const-wide/16 v0, 0x10

    return-wide v0
.end method

.method public getGraphicsMode()S
    .registers 2

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->graphicsMode:S

    return v0
.end method

.method public getOpColorB()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->opColorB:I

    return v0
.end method

.method public getOpColorG()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->opColorG:I

    return v0
.end method

.method public getOpColorR()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->opColorR:I

    return v0
.end method

.method public getReserved()S
    .registers 2

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->reserved:S

    return v0
.end method

.method public setBalance(S)V
    .registers 2

    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->balance:S

    return-void
.end method

.method public setGraphicsMode(S)V
    .registers 2

    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->graphicsMode:S

    return-void
.end method

.method public setOpColorB(I)V
    .registers 2

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->opColorB:I

    return-void
.end method

.method public setOpColorG(I)V
    .registers 2

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->opColorG:I

    return-void
.end method

.method public setOpColorR(I)V
    .registers 2

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->opColorR:I

    return-void
.end method

.method public setReserved(S)V
    .registers 2

    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->reserved:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseMediaInfoAtom{graphicsMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->graphicsMode:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opColorR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->opColorR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opColorG="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->opColorG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opColorB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->opColorB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", balance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->balance:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reserved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;->reserved:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
