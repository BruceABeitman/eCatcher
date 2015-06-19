.class public Lorg/pinguo/richpicture/AudioInfo;
.super Ljava/lang/Object;
.source "AudioInfo.java"


# instance fields
.field private audioFormat:I

.field private channelConfig:I

.field private data:[B

.field private formatType:I

.field private length:J

.field private sampleRate:I

.field private type:I

.field private uuid:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioFormat()I
    .registers 2

    iget v0, p0, Lorg/pinguo/richpicture/AudioInfo;->audioFormat:I

    return v0
.end method

.method public getChannelConfig()I
    .registers 2

    iget v0, p0, Lorg/pinguo/richpicture/AudioInfo;->channelConfig:I

    return v0
.end method

.method public getData()[B
    .registers 2

    iget-object v0, p0, Lorg/pinguo/richpicture/AudioInfo;->data:[B

    return-object v0
.end method

.method public getFormatType()I
    .registers 2

    iget v0, p0, Lorg/pinguo/richpicture/AudioInfo;->formatType:I

    return v0
.end method

.method public getLength()J
    .registers 3

    iget-wide v0, p0, Lorg/pinguo/richpicture/AudioInfo;->length:J

    return-wide v0
.end method

.method public getSampleRate()I
    .registers 2

    iget v0, p0, Lorg/pinguo/richpicture/AudioInfo;->sampleRate:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lorg/pinguo/richpicture/AudioInfo;->type:I

    return v0
.end method

.method public getUuid()[B
    .registers 2

    iget-object v0, p0, Lorg/pinguo/richpicture/AudioInfo;->uuid:[B

    return-object v0
.end method

.method public setAudioFormat(I)V
    .registers 2

    iput p1, p0, Lorg/pinguo/richpicture/AudioInfo;->audioFormat:I

    return-void
.end method

.method public setChannelConfig(I)V
    .registers 2

    iput p1, p0, Lorg/pinguo/richpicture/AudioInfo;->channelConfig:I

    return-void
.end method

.method public setData([B)V
    .registers 2

    iput-object p1, p0, Lorg/pinguo/richpicture/AudioInfo;->data:[B

    return-void
.end method

.method public setFormatType(I)V
    .registers 2

    iput p1, p0, Lorg/pinguo/richpicture/AudioInfo;->formatType:I

    return-void
.end method

.method public setLength(J)V
    .registers 3

    iput-wide p1, p0, Lorg/pinguo/richpicture/AudioInfo;->length:J

    return-void
.end method

.method public setSampleRate(I)V
    .registers 2

    iput p1, p0, Lorg/pinguo/richpicture/AudioInfo;->sampleRate:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lorg/pinguo/richpicture/AudioInfo;->type:I

    return-void
.end method

.method public setUuid([B)V
    .registers 2

    iput-object p1, p0, Lorg/pinguo/richpicture/AudioInfo;->uuid:[B

    return-void
.end method
