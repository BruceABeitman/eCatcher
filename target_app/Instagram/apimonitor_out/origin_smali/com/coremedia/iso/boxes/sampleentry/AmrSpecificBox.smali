.class public Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "AmrSpecificBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "damr"


# instance fields
.field private decoderVersion:I

.field private framesPerSample:I

.field private modeChangePeriod:I

.field private modeSet:I

.field private vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "damr"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->bytesToFourCC([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->vendor:Ljava/lang/String;

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->decoderVersion:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->modeSet:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->modeChangePeriod:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->framesPerSample:I

    return-void
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .registers 3

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->vendor:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->decoderVersion:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->modeSet:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->modeChangePeriod:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->framesPerSample:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method protected getContentSize()J
    .registers 3

    const-wide/16 v0, 0x9

    return-wide v0
.end method

.method public getDecoderVersion()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->decoderVersion:I

    return v0
.end method

.method public getFramesPerSample()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->framesPerSample:I

    return v0
.end method

.method public getModeChangePeriod()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->modeChangePeriod:I

    return v0
.end method

.method public getModeSet()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->modeSet:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AmrSpecificBox[vendor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->getVendor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";decoderVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->getDecoderVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";modeSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->getModeSet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";modeChangePeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->getModeChangePeriod()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";framesPerSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AmrSpecificBox;->getFramesPerSample()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
