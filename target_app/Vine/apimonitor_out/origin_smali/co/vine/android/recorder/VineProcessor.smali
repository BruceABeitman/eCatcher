.class public Lco/vine/android/recorder/VineProcessor;
.super Ljava/lang/Object;
.source "VineProcessor.java"


# instance fields
.field private final mProcessor:Lco/vine/android/recorder/Processor;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/vine/android/VineLoggingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    new-instance v1, Lco/vine/android/recorder/Processor;

    invoke-direct {v1, p1}, Lco/vine/android/recorder/Processor;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lco/vine/android/recorder/VineProcessor;->mProcessor:Lco/vine/android/recorder/Processor;
    :try_end_a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    new-instance v1, Lco/vine/android/VineLoggingException;

    invoke-direct {v1, v0}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public combineVideoAndAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    iget-object v0, p0, Lco/vine/android/recorder/VineProcessor;->mProcessor:Lco/vine/android/recorder/Processor;

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->newCommand()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/Processor;->addInputPath(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lco/vine/android/recorder/Processor;->addInputPath(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    const-string v1, "0:0"

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/Processor;->setMap(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    const-string v1, "1:0"

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/Processor;->setMap(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->setCopy()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->enableOverwrite()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p3}, Lco/vine/android/recorder/Processor;->processToOutput(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public combineVideoAndAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/recorder/VineProcessor;->mProcessor:Lco/vine/android/recorder/Processor;

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->newCommand()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/Processor;->addInputPath(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lco/vine/android/recorder/Processor;->addInputPath(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    const-string v1, "0:0"

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/Processor;->setMap(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    const-string v1, "1:0"

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/Processor;->setMap(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->setCopy()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p4}, Lco/vine/android/recorder/Processor;->setMetaData(Ljava/util/HashMap;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->enableOverwrite()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p3}, Lco/vine/android/recorder/Processor;->processToOutput(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public concat(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "concat:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v2, :cond_21

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_21
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lco/vine/android/recorder/VineProcessor;->mProcessor:Lco/vine/android/recorder/Processor;

    invoke-virtual {v3}, Lco/vine/android/recorder/Processor;->newCommand()Lco/vine/android/recorder/Processor;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lco/vine/android/recorder/Processor;->addInputPath(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/recorder/Processor;->setCopy()Lco/vine/android/recorder/Processor;

    move-result-object v3

    const-string v4, "aac_adtstoasc"

    invoke-virtual {v3, v4}, Lco/vine/android/recorder/Processor;->setBsfA(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/recorder/Processor;->enableOverwrite()Lco/vine/android/recorder/Processor;

    move-result-object v3

    invoke-virtual {v3, p3}, Lco/vine/android/recorder/Processor;->setMetaData(Ljava/util/HashMap;)Lco/vine/android/recorder/Processor;

    move-result-object v3

    invoke-virtual {v3, p2}, Lco/vine/android/recorder/Processor;->processToOutput(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public cropTo480(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/16 v1, 0x1e0

    iget-object v0, p0, Lco/vine/android/recorder/VineProcessor;->mProcessor:Lco/vine/android/recorder/Processor;

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->newCommand()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/Processor;->addInputPath(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->setAudioCopy()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lco/vine/android/recorder/Processor;->filterCrop(II)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->enableOverwrite()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lco/vine/android/recorder/Processor;->processToOutput(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public cropTo480andRotate(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/16 v1, 0x1e0

    iget-object v0, p0, Lco/vine/android/recorder/VineProcessor;->mProcessor:Lco/vine/android/recorder/Processor;

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->newCommand()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/Processor;->addInputPath(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->setAudioCopy()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lco/vine/android/recorder/Processor;->filterCrop(II)Lco/vine/android/recorder/Processor;

    move-result-object v0

    sget-object v1, Lco/vine/android/recorder/Processor$Rotation;->NO_FLIP_90_CLOCKWISE:Lco/vine/android/recorder/Processor$Rotation;

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/Processor;->filterRotation(Lco/vine/android/recorder/Processor$Rotation;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->enableOverwrite()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lco/vine/android/recorder/Processor;->processToOutput(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getImageForFrame(Ljava/lang/String;JIILjava/lang/String;)I
    .registers 9

    iget-object v0, p0, Lco/vine/android/recorder/VineProcessor;->mProcessor:Lco/vine/android/recorder/Processor;

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->newCommand()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lco/vine/android/recorder/Processor;->setStart(J)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/Processor;->addInputPath(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/Processor;->setVFrames(I)Lco/vine/android/recorder/Processor;

    move-result-object v0

    const-string v1, "image2"

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/Processor;->setFormat(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->enableOverwrite()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p6}, Lco/vine/android/recorder/Processor;->processToOutput(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public init()V
    .registers 5

    iget-object v0, p0, Lco/vine/android/recorder/VineProcessor;->mProcessor:Lco/vine/android/recorder/Processor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ffmpeg"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-h"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/Processor;->process([Ljava/lang/String;)I

    return-void
.end method

.method public rotate(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lco/vine/android/recorder/VineProcessor;->mProcessor:Lco/vine/android/recorder/Processor;

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->newCommand()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/Processor;->addInputPath(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->setAudioCopy()Lco/vine/android/recorder/Processor;

    move-result-object v0

    sget-object v1, Lco/vine/android/recorder/Processor$Rotation;->NO_FLIP_90_CLOCKWISE:Lco/vine/android/recorder/Processor$Rotation;

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/Processor;->filterRotation(Lco/vine/android/recorder/Processor$Rotation;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->enableOverwrite()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lco/vine/android/recorder/Processor;->processToOutput(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/recorder/VineProcessor;->mProcessor:Lco/vine/android/recorder/Processor;

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->newCommand()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/Processor;->addInputPath(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->setCopy()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p3}, Lco/vine/android/recorder/Processor;->setMetaData(Ljava/util/HashMap;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->enableOverwrite()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lco/vine/android/recorder/Processor;->processToOutput(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public split(Ljava/lang/String;Lco/vine/android/recorder/RelativeTime;Ljava/lang/String;I)I
    .registers 8

    iget-object v0, p0, Lco/vine/android/recorder/VineProcessor;->mProcessor:Lco/vine/android/recorder/Processor;

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->newCommand()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/Processor;->addInputPath(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    iget-wide v1, p2, Lco/vine/android/recorder/RelativeTime;->start:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/Processor;->setStart(J)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {p2, p4}, Lco/vine/android/recorder/RelativeTime;->getDuration(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p4}, Lco/vine/android/recorder/Processor;->setFrames(JI)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->setVideoCopy()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->setAudioCopy()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->enableOverwrite()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p3}, Lco/vine/android/recorder/Processor;->processToOutput(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public splitTs(Ljava/lang/String;Lco/vine/android/recorder/RelativeTime;Ljava/lang/String;I)I
    .registers 8

    iget-object v0, p0, Lco/vine/android/recorder/VineProcessor;->mProcessor:Lco/vine/android/recorder/Processor;

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->newCommand()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/Processor;->addInputPath(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    iget-wide v1, p2, Lco/vine/android/recorder/RelativeTime;->start:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/Processor;->setStart(J)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {p2, p4}, Lco/vine/android/recorder/RelativeTime;->getDuration(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p4}, Lco/vine/android/recorder/Processor;->setFrames(JI)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->setCopy()Lco/vine/android/recorder/Processor;

    move-result-object v0

    const-string v1, "h264_mp4toannexb"

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/Processor;->setBsfV(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    const-string v1, "mpegts"

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/Processor;->setFormat(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->enableOverwrite()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p3}, Lco/vine/android/recorder/Processor;->processToOutput(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toH264(Ljava/lang/String;Lco/vine/android/recorder/Processor$Preset;Ljava/lang/String;Ljava/util/HashMap;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lco/vine/android/recorder/Processor$Preset;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/recorder/VineProcessor;->mProcessor:Lco/vine/android/recorder/Processor;

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->newCommand()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/Processor;->addInputPath(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->useX264()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lco/vine/android/recorder/Processor;->setPreset(Lco/vine/android/recorder/Processor$Preset;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->setAudioCopy()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p4}, Lco/vine/android/recorder/Processor;->setMetaData(Ljava/util/HashMap;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->enableOverwrite()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p3}, Lco/vine/android/recorder/Processor;->processToOutput(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toTs(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lco/vine/android/recorder/VineProcessor;->mProcessor:Lco/vine/android/recorder/Processor;

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->newCommand()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/Processor;->addInputPath(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->setCopy()Lco/vine/android/recorder/Processor;

    move-result-object v0

    const-string v1, "h264_mp4toannexb"

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/Processor;->setBsfV(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    const-string v1, "mpegts"

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/Processor;->setFormat(Ljava/lang/String;)Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/Processor;->enableOverwrite()Lco/vine/android/recorder/Processor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lco/vine/android/recorder/Processor;->processToOutput(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
