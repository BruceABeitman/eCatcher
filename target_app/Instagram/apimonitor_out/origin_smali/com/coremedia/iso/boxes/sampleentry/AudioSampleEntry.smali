.class public Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "AudioSampleEntry.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/ContainerBox;


# static fields
.field public static final TYPE1:Ljava/lang/String; = "samr"

.field public static final TYPE10:Ljava/lang/String; = "mlpa"

.field public static final TYPE11:Ljava/lang/String; = "dtsl"

.field public static final TYPE12:Ljava/lang/String; = "dtsh"

.field public static final TYPE13:Ljava/lang/String; = "dtse"

.field public static final TYPE2:Ljava/lang/String; = "sawb"

.field public static final TYPE3:Ljava/lang/String; = "mp4a"

.field public static final TYPE4:Ljava/lang/String; = "drms"

.field public static final TYPE5:Ljava/lang/String; = "alac"

.field public static final TYPE7:Ljava/lang/String; = "owma"

.field public static final TYPE8:Ljava/lang/String; = "ac-3"

.field public static final TYPE9:Ljava/lang/String; = "ec-3"

.field public static final TYPE_ENCRYPTED:Ljava/lang/String; = "enca"


# instance fields
.field private boxParser:Lcom/coremedia/iso/b;

.field private bytesPerFrame:J

.field private bytesPerPacket:J

.field private bytesPerSample:J

.field private channelCount:I

.field private compressionId:I

.field private packetSize:I

.field private reserved1:I

.field private reserved2:J

.field private sampleRate:J

.field private sampleSize:I

.field private samplesPerPacket:J

.field private soundVersion:I

.field private soundVersion2Data:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 6

    const/16 v3, 0x14

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved1:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved2:J

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->channelCount:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleSize:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->compressionId:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->packetSize:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleRate:J

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->type:Ljava/lang/String;

    const-string v1, "mlpa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleRate:J

    const/16 v2, 0x10

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleRate:J

    :cond_46
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    if-lez v0, :cond_62

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->samplesPerPacket:J

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerPacket:J

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerFrame:J

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerSample:J

    :cond_62
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6e

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion2Data:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    :cond_6e
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->_parseChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public getBytesPerFrame()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerFrame:J

    return-wide v0
.end method

.method public getBytesPerPacket()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerPacket:J

    return-wide v0
.end method

.method public getBytesPerSample()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerSample:J

    return-wide v0
.end method

.method public getChannelCount()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->channelCount:I

    return v0
.end method

.method public getCompressionId()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->compressionId:I

    return v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved1:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved2:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->channelCount:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleSize:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->compressionId:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->packetSize:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->type:Ljava/lang/String;

    const-string v1, "mlpa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    :goto_37
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    if-lez v0, :cond_4f

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->samplesPerPacket:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerPacket:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerFrame:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerSample:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    :cond_4f
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_59

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion2Data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_59
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->_writeChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_5d
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v0

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_37
.end method

.method protected getContentSize()J
    .registers 7

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1c

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    if-lez v0, :cond_2e

    const-wide/16 v0, 0x10

    :goto_a
    add-long/2addr v0, v4

    iget v4, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    const-wide/16 v2, 0x14

    :cond_12
    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->boxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/a;

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/a;->getSize()J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_1a

    :cond_2e
    move-wide v0, v2

    goto :goto_a

    :cond_30
    return-wide v1
.end method

.method public getPacketSize()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->packetSize:I

    return v0
.end method

.method public getReserved1()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved1:I

    return v0
.end method

.method public getReserved2()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved2:J

    return-wide v0
.end method

.method public getSampleRate()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleRate:J

    return-wide v0
.end method

.method public getSampleSize()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleSize:I

    return v0
.end method

.method public getSamplesPerPacket()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->samplesPerPacket:J

    return-wide v0
.end method

.method public getSoundVersion()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    return v0
.end method

.method public getSoundVersion2Data()[B
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion2Data:[B

    return-object v0
.end method

.method public setBoxParser(Lcom/coremedia/iso/b;)V
    .registers 2

    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->boxParser:Lcom/coremedia/iso/b;

    return-void
.end method

.method public setBytesPerFrame(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerFrame:J

    return-void
.end method

.method public setBytesPerPacket(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerPacket:J

    return-void
.end method

.method public setBytesPerSample(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerSample:J

    return-void
.end method

.method public setChannelCount(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->channelCount:I

    return-void
.end method

.method public setCompressionId(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->compressionId:I

    return-void
.end method

.method public setPacketSize(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->packetSize:I

    return-void
.end method

.method public setReserved1(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved1:I

    return-void
.end method

.method public setReserved2(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved2:J

    return-void
.end method

.method public setSampleRate(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleRate:J

    return-void
.end method

.method public setSampleSize(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleSize:I

    return-void
.end method

.method public setSamplesPerPacket(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->samplesPerPacket:J

    return-void
.end method

.method public setSoundVersion(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    return-void
.end method

.method public setSoundVersion2Data([B)V
    .registers 2

    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion2Data:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioSampleEntry{bytesPerSample="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerSample:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytesPerFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerFrame:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytesPerPacket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerPacket:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", samplesPerPacket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->samplesPerPacket:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packetSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->packetSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", compressionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->compressionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", soundVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleRate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boxes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
