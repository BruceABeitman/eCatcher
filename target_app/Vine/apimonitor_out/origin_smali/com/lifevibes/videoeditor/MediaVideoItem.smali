.class public Lcom/lifevibes/videoeditor/MediaVideoItem;
.super Lcom/lifevibes/videoeditor/MediaItem;
.source "MediaVideoItem.java"


# instance fields
.field private final mAspectRatio:I

.field private final mAudioBitrate:I

.field private final mAudioChannels:I

.field private final mAudioSamplingFrequency:I

.field private final mAudioType:I

.field private mAudioWaveformFilename:Ljava/lang/String;

.field private mBeginBoundaryTimeMs:J

.field private final mDurationMs:J

.field private mEndBoundaryTimeMs:J

.field private mExclude:Z

.field private mExcludeBeginTime:J

.field private mExcludeEndTime:J

.field private final mFileType:I

.field private final mFps:I

.field private final mHeight:I

.field private mIsVideo3D:Z

.field private mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

.field private mMuted:Z

.field private mThumbnailLock:Ljava/util/concurrent/Semaphore;

.field private final mVideoBitrate:I

.field private mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditorImpl;

.field private final mVideoProfile:I

.field private final mVideoType:I

.field private mVolumePercentage:I

.field private final mWidth:I

.field private originalVolume:I


# direct methods
.method private constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/lifevibes/videoeditor/MediaVideoItem;-><init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const/16 v9, 0x64

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v11}, Lcom/lifevibes/videoeditor/MediaVideoItem;-><init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;IJJIZLjava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mThumbnailLock:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method constructor <init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;IJJIZLjava/lang/String;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lifevibes/videoeditor/MediaItem;-><init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V

    instance-of v3, p1, Lcom/lifevibes/videoeditor/VideoEditorImpl;

    if-eqz v3, :cond_14

    move-object v3, p1

    check-cast v3, Lcom/lifevibes/videoeditor/VideoEditorImpl;

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->getNativeContext()Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    check-cast p1, Lcom/lifevibes/videoeditor/VideoEditorImpl;

    iput-object p1, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditorImpl;

    :cond_14
    new-instance v3, Ljava/util/concurrent/Semaphore;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mThumbnailLock:Ljava/util/concurrent/Semaphore;

    :try_start_1d
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v3, p3}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_46

    move-result-object v2

    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget v4, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    invoke-virtual {v3, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getFileType(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_15c

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Input File Type (%d)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_46
    move-exception v1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {p3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_78
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget v4, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoFormat:I

    invoke-virtual {v3, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getVideoCodecType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_16a

    :pswitch_83
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Video Codec Format in Input File (%d)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoFormat:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_9b
    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioFormat:I

    if-eqz v3, :cond_c2

    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget v4, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioFormat:I

    invoke-virtual {v3, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_17a

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Audio Codec Format in Input File (%d)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioFormat:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c2
    :pswitch_c2
    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->profileAndLevel:I

    const/16 v4, 0xff

    if-ne v3, v4, :cond_e0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Video Codec Profile in Input File (%d)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->profileAndLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_e0
    iget-boolean v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->bIsVideo3D:Z

    iput-boolean v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mIsVideo3D:Z

    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mWidth:I

    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mHeight:I

    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget v4, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    iget v5, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    invoke-virtual {v3, v4, v5}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getAspectRatio(II)I

    move-result v3

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAspectRatio:I

    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget v4, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    invoke-virtual {v3, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getFileType(I)I

    move-result v3

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mFileType:I

    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget v4, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoFormat:I

    invoke-virtual {v3, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getVideoCodecType(I)I

    move-result v3

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mVideoType:I

    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->profileAndLevel:I

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mVideoProfile:I

    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mDurationMs:J

    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoBitrate:I

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mVideoBitrate:I

    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioBitrate:I

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAudioBitrate:I

    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->averageFrameRate:F

    float-to-int v3, v3

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mFps:I

    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget v4, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioFormat:I

    invoke-virtual {v3, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v3

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAudioType:I

    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioChannels:I

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAudioChannels:I

    iget v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioSamplingFrequency:I

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAudioSamplingFrequency:I

    iput-wide p5, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    const-wide/16 v3, -0x1

    cmp-long v3, p7, v3

    if-nez v3, :cond_13e

    iget-wide p7, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mDurationMs:J

    :cond_13e
    iput-wide p7, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    move/from16 v0, p9

    iput v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mVolumePercentage:I

    move/from16 v0, p9

    iput v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->originalVolume:I

    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMuted:Z

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExcludeBeginTime:J

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExcludeEndTime:J

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExclude:Z

    return-void

    :sswitch_data_15c
    .sparse-switch
        0x0 -> :sswitch_78
        0x1 -> :sswitch_78
        0xa -> :sswitch_78
    .end sparse-switch

    :pswitch_data_16a
    .packed-switch 0x1
        :pswitch_9b
        :pswitch_9b
        :pswitch_83
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
    .end packed-switch

    :pswitch_data_17a
    .packed-switch 0x1
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
    .end packed-switch
.end method

.method private thumbnailLock()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mThumbnailLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    return-void
.end method

.method private thumbnailUnlock()V
    .registers 2

    iget-object v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mThumbnailLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method


# virtual methods
.method public getAspectRatio()I
    .registers 2

    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAspectRatio:I

    return v0
.end method

.method public getAudioBitrate()I
    .registers 2

    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAudioBitrate:I

    return v0
.end method

.method public getAudioChannels()I
    .registers 2

    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAudioChannels:I

    return v0
.end method

.method public getAudioSamplingFrequency()I
    .registers 2

    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAudioSamplingFrequency:I

    return v0
.end method

.method public getAudioType()I
    .registers 2

    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mAudioType:I

    return v0
.end method

.method public getBoundaryBeginTime()J
    .registers 3

    iget-wide v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    return-wide v0
.end method

.method public getBoundaryEndTime()J
    .registers 3

    iget-wide v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mDurationMs:J

    return-wide v0
.end method

.method getExcludeBeginTime()J
    .registers 3

    iget-wide v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExcludeBeginTime:J

    return-wide v0
.end method

.method getExcludeEndTime()J
    .registers 3

    iget-wide v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExcludeEndTime:J

    return-wide v0
.end method

.method public getFileType()I
    .registers 2

    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mFileType:I

    return v0
.end method

.method public getFps()I
    .registers 2

    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mFps:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mHeight:I

    return v0
.end method

.method public getTimelineDuration()J
    .registers 7

    iget-boolean v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExclude:Z

    if-nez v0, :cond_a

    iget-wide v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    iget-wide v2, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    sub-long/2addr v0, v2

    :goto_9
    return-wide v0

    :cond_a
    iget-wide v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExcludeBeginTime:J

    const-wide/16 v2, 0x0

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getDuration()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExcludeEndTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_9
.end method

.method public getVideoBitrate()I
    .registers 2

    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mVideoBitrate:I

    return v0
.end method

.method public getVideoProfile()I
    .registers 2

    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mVideoProfile:I

    return v0
.end method

.method public getVideoType()I
    .registers 2

    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mVideoType:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mWidth:I

    return v0
.end method

.method isExcludeCalled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mExclude:Z

    return v0
.end method

.method public isMuted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/lifevibes/videoeditor/MediaVideoItem;->mMuted:Z

    return v0
.end method
