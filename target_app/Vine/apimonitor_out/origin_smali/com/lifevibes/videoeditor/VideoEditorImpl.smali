.class public Lcom/lifevibes/videoeditor/VideoEditorImpl;
.super Ljava/lang/Object;
.source "VideoEditorImpl.java"

# interfaces
.implements Lcom/lifevibes/videoeditor/VideoEditor;


# static fields
.field private static final CODECCONFIG_FILENAME:Ljava/lang/String; = "CodecConfig.xml"

.field private static final TAG:Ljava/lang/String; = "VideoEditorImpl"

.field private static final TAG_DEC_CONFIG_TN_ACCURATE_MODE:Ljava/lang/String; = "ThubmnailAccurateMode"

.field private static final TAG_DEC_CONFIG_TN_FAST_MODE:Ljava/lang/String; = "ThubmnailFastMode"

.field private static final TAG_TN:Ljava/lang/String; = "ThumbNailcodecConfig"


# instance fields
.field private mAspectRatio:I

.field private mClipsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDurationMs:J

.field private mIsFirstVideoItemAdded:Z

.field private mIsList3D:Z

.field private final mLock:Ljava/util/concurrent/Semaphore;

.field private mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

.field private final mMediaItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lifevibes/videoeditor/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mProjectPath:Ljava/lang/String;

.field private modifiedBitrate:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mClipsList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    new-instance v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget-object v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, p1, v1, p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;-><init>(Ljava/lang/String;Ljava/util/concurrent/Semaphore;Lcom/lifevibes/videoeditor/VideoEditor;)V

    iput-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iput-object p1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mDurationMs:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mClipsList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    new-instance v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget-object v2, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, p1, v2, p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;-><init>(Ljava/lang/String;Ljava/util/concurrent/Semaphore;Lcom/lifevibes/videoeditor/VideoEditor;)V

    iput-object v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iput-object p1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mDurationMs:J

    new-instance v0, Ljava/io/File;

    const-string v1, "CodecConfig.xml"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3b

    :try_start_38
    invoke-direct {p0, p2}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->readCodecConfigFile(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    :cond_3b
    :goto_3b
    return-void

    :catch_3c
    move-exception v1

    goto :goto_3b
.end method

.method private computeTimelineDuration()V
    .registers 8

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mDurationMs:J

    iget-object v3, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_21

    iget-object v3, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lifevibes/videoeditor/MediaItem;

    iget-wide v3, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mDurationMs:J

    invoke-virtual {v1}, Lcom/lifevibes/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mDurationMs:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_21
    return-void
.end method

.method private lock()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v3, 0x3

    const-string v0, "VideoEditorImpl"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "VideoEditorImpl"

    const-string v1, "lock: grabbing semaphore"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    const-string v0, "VideoEditorImpl"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "VideoEditorImpl"

    const-string v1, "lock: grabbed semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method

.method private lock(J)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v4, 0x3

    const-string v1, "VideoEditorImpl"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "VideoEditorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock: grabbing semaphore with timeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_26
    iget-object v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    const-string v1, "VideoEditorImpl"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4e

    const-string v1, "VideoEditorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock: grabbed semaphore status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    return v0
.end method

.method private readCodecConfigFile(Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v10, 0x1

    new-instance v4, Ljava/io/File;

    const-string v8, "CodecConfig.xml"

    invoke-direct {v4, p1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v7, 0x0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_25
    if-eq v1, v10, :cond_91

    packed-switch v1, :pswitch_data_96

    :cond_2a
    :goto_2a
    :pswitch_2a
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_25

    :pswitch_2f
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "ThumbNailcodecConfig"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2a

    const-string v8, "ThubmnailFastMode"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    const/4 v3, 0x1

    goto :goto_2a

    :cond_45
    const-string v8, "ThubmnailAccurateMode"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/4 v0, 0x1

    goto :goto_2a

    :pswitch_4f
    if-eqz v3, :cond_70

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    const-string v9, "NXPSWVDEC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_61

    sput v10, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTNDecConfigFastMode:I

    :cond_5f
    :goto_5f
    const/4 v3, 0x0

    goto :goto_2a

    :cond_61
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SFHWVDEC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5f

    sput v11, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTNDecConfigFastMode:I

    goto :goto_5f

    :cond_70
    if-eqz v0, :cond_2a

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    const-string v9, "NXPSWVDEC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_82

    sput v10, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTNDecConfigAccurateMode:I

    :cond_80
    :goto_80
    const/4 v0, 0x0

    goto :goto_2a

    :cond_82
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SFHWVDEC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_80

    sput v11, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTNDecConfigAccurateMode:I

    goto :goto_80

    :cond_91
    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    return-void

    :pswitch_data_96
    .packed-switch 0x2
        :pswitch_2f
        :pswitch_2a
        :pswitch_4f
    .end packed-switch
.end method

.method private setOptimalConfiguration(I)I
    .registers 7

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x5

    const/4 v0, 0x0

    const v1, 0x7a1200

    if-lt p1, v1, :cond_14

    const p1, 0x7a1200

    const/16 v0, 0x438

    const/4 v1, 0x2

    iput v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    :goto_11
    iput p1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->modifiedBitrate:I

    return v0

    :cond_14
    const v1, 0x4c4b40

    if-lt p1, v1, :cond_21

    const p1, 0x4c4b40

    const/16 v0, 0x2d0

    iput v3, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    goto :goto_11

    :cond_21
    const v1, 0x1e8480

    if-lt p1, v1, :cond_2e

    const p1, 0x1e8480

    const/16 v0, 0x1e0

    iput v3, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    goto :goto_11

    :cond_2e
    const v1, 0xf4240

    if-lt p1, v1, :cond_3b

    const p1, 0xf4240

    const/16 v0, 0x1e0

    iput v3, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    goto :goto_11

    :cond_3b
    const v1, 0xc3500

    if-lt p1, v1, :cond_48

    const p1, 0xc3500

    const/16 v0, 0x1e0

    iput v4, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    goto :goto_11

    :cond_48
    const v1, 0x7d000

    if-lt p1, v1, :cond_55

    const p1, 0x7d000

    const/16 v0, 0x1e0

    iput v4, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    goto :goto_11

    :cond_55
    const v1, 0x5dc00

    if-lt p1, v1, :cond_62

    const p1, 0x5dc00

    const/16 v0, 0x120

    iput v2, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    goto :goto_11

    :cond_62
    const v1, 0x3e800

    if-lt p1, v1, :cond_6f

    const p1, 0x3e800

    const/16 v0, 0x120

    iput v2, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    goto :goto_11

    :cond_6f
    const v1, 0x2ee00

    if-lt p1, v1, :cond_7c

    const p1, 0x2ee00

    const/16 v0, 0x90

    iput v2, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    goto :goto_11

    :cond_7c
    const v1, 0x1f400

    if-lt p1, v1, :cond_89

    const p1, 0x1f400

    const/16 v0, 0x90

    iput v2, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    goto :goto_11

    :cond_89
    const v1, 0x17700

    if-lt p1, v1, :cond_97

    const p1, 0x17700

    const/16 v0, 0x90

    iput v2, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    goto/16 :goto_11

    :cond_97
    const p1, 0xfa00

    const/16 v0, 0x90

    iput v2, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    goto/16 :goto_11
.end method

.method private unlock()V
    .registers 3

    const-string v0, "VideoEditorImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "VideoEditorImpl"

    const-string v1, "unlock: releasing semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addMediaItem(Lcom/lifevibes/videoeditor/MediaItem;)V
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Media item is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media item already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lifevibes/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "More than one media item cannot be added for MediaShare configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->computeTimelineDuration()V
    :try_end_4c
    .catchall {:try_start_e .. :try_end_4c} :catchall_b

    monitor-exit p0

    return-void
.end method

.method public cancelExport(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0, p1}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->stop(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public cancelFit2Share(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0, p1}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->stop(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public export(Ljava/lang/String;JLcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)J
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    if-nez p1, :cond_f

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "export: filename is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v19, :cond_35

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "can not be created"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_47

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No MediaItems added"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_47
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_55

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Size is Zero"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_55
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mDurationMs:J

    const-wide/16 v9, 0x3e8

    div-long/2addr v2, v9

    long-to-int v0, v2

    move/from16 v16, v0

    move-wide/from16 v0, p2

    long-to-double v2, v0

    move-wide/from16 v0, p2

    long-to-double v9, v0

    const-wide v11, 0x3fa47ae147ae147bL

    mul-double/2addr v9, v11

    sub-double/2addr v2, v9

    move/from16 v0, v16

    int-to-double v9, v0

    div-double/2addr v2, v9

    const-wide/high16 v9, 0x4020

    mul-double/2addr v2, v9

    double-to-int v14, v2

    add-int/lit16 v14, v14, -0x2fa8

    const v2, 0xfa00

    if-gt v14, v2, :cond_b7

    move-wide/from16 v0, p2

    long-to-double v2, v0

    move-wide/from16 v0, p2

    long-to-double v9, v0

    const-wide v11, 0x3fa47ae147ae147bL

    mul-double/2addr v9, v11

    sub-double/2addr v2, v9

    const-wide v9, 0x40ef400000000000L

    div-double/2addr v2, v9

    const-wide/high16 v9, 0x4020

    mul-double/2addr v2, v9

    const-wide v9, 0x408f400000000000L

    mul-double/2addr v2, v9

    double-to-float v15, v2

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "export: limit file duration to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b7
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->setOptimalConfiguration(I)I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    const/16 v18, 0x0

    :try_start_c5
    invoke-direct/range {p0 .. p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->lock()V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    if-nez v2, :cond_fc

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The video editor is not initialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d8
    .catchall {:try_start_c5 .. :try_end_d8} :catchall_11b
    .catch Ljava/lang/InterruptedException; {:try_start_c5 .. :try_end_d8} :catch_d8

    :catch_d8
    move-exception v17

    :try_start_d9
    const-string v2, "VideoEditorImpl"

    const-string v3, "Sem acquire NOT successful in export"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catchall {:try_start_d9 .. :try_end_e0} :catchall_11b

    if-eqz v18, :cond_e5

    invoke-direct/range {p0 .. p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    :cond_e5
    :goto_e5
    move-object/from16 v0, p0

    iput v13, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-lez v2, :cond_122

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Generated File size > outputsize; reduce Input file duration and retry"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_fc
    :try_start_fc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->modifiedBitrate:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    move-object/from16 v3, p1

    move-wide/from16 v9, p2

    move-object/from16 v12, p4

    invoke-virtual/range {v2 .. v12}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->export(Ljava/lang/String;Ljava/lang/String;IIIIJLjava/util/List;Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)V
    :try_end_115
    .catchall {:try_start_fc .. :try_end_115} :catchall_11b
    .catch Ljava/lang/InterruptedException; {:try_start_fc .. :try_end_115} :catch_d8

    if-eqz v18, :cond_e5

    invoke-direct/range {p0 .. p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    goto :goto_e5

    :catchall_11b
    move-exception v2

    if-eqz v18, :cond_121

    invoke-direct/range {p0 .. p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    :cond_121
    throw v2

    :cond_122
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v2

    return-wide v2
.end method

.method public export(Ljava/lang/String;IIIILcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "export: filename is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    iget-object v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1a

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No MediaItems added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    packed-switch p4, :pswitch_data_de

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported audio codec type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_38
    packed-switch p5, :pswitch_data_e4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported video codec type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_56
    packed-switch p2, :pswitch_data_ea

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument Height incorrect"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_61
    sparse-switch p3, :sswitch_data_f0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument Bitrate incorrect"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_6c
    const/4 v1, 0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_9a

    sparse-switch p2, :sswitch_data_132

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument Height incorrect for H263 output codec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_7c
    invoke-virtual {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->getAspectRatio()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_9a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Aspect ratio not correct for H263 output codec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_8b
    invoke-virtual {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->getAspectRatio()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_9a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Aspect ratio not correct for H263 output codec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9a
    const/4 v14, 0x0

    :try_start_9b
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->lock()V

    const/4 v14, 0x1

    iget-object v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    if-nez v1, :cond_b9

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The video editor is not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_ab
    .catchall {:try_start_9b .. :try_end_ab} :catchall_d6
    .catch Ljava/lang/InterruptedException; {:try_start_9b .. :try_end_ab} :catch_ab

    :catch_ab
    move-exception v12

    :try_start_ac
    const-string v1, "VideoEditorImpl"

    const-string v2, "Sem acquire NOT successful in export"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catchall {:try_start_ac .. :try_end_b3} :catchall_d6

    if-eqz v14, :cond_b8

    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    :cond_b8
    :goto_b8
    return-void

    :cond_b9
    :try_start_b9
    iget-object v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget-object v3, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    const-wide/16 v8, 0x0

    iget-object v10, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v1 .. v11}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->export(Ljava/lang/String;Ljava/lang/String;IIIIJLjava/util/List;Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)V
    :try_end_d0
    .catchall {:try_start_b9 .. :try_end_d0} :catchall_d6
    .catch Ljava/lang/InterruptedException; {:try_start_b9 .. :try_end_d0} :catch_ab

    if-eqz v14, :cond_b8

    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    goto :goto_b8

    :catchall_d6
    move-exception v1

    if-eqz v14, :cond_dc

    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    :cond_dc
    throw v1

    nop

    :pswitch_data_de
    .packed-switch 0x2
        :pswitch_38
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x4
        :pswitch_56
    .end packed-switch

    :pswitch_data_ea
    .packed-switch 0x1e0
        :pswitch_61
    .end packed-switch

    :sswitch_data_f0
    .sparse-switch
        0x6d60 -> :sswitch_6c
        0x9c40 -> :sswitch_6c
        0xfa00 -> :sswitch_6c
        0x17700 -> :sswitch_6c
        0x1f400 -> :sswitch_6c
        0x2ee00 -> :sswitch_6c
        0x3e800 -> :sswitch_6c
        0x5dc00 -> :sswitch_6c
        0x7d000 -> :sswitch_6c
        0xc3500 -> :sswitch_6c
        0xf4240 -> :sswitch_6c
        0x124f80 -> :sswitch_6c
        0x16e360 -> :sswitch_6c
        0x1e8480 -> :sswitch_6c
        0x4c4b40 -> :sswitch_6c
        0x7a1200 -> :sswitch_6c
    .end sparse-switch

    :sswitch_data_132
    .sparse-switch
        0x60 -> :sswitch_7c
        0x90 -> :sswitch_8b
        0x120 -> :sswitch_8b
    .end sparse-switch
.end method

.method public export(Ljava/lang/String;Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_c

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "export: filename is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_c
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v5, :cond_2c

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "can not be created"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2c
    iget-object v6, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3c

    iget-object v6, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lifevibes/videoeditor/MediaItem;

    :cond_3c
    const-wide/16 v2, 0x0

    iget-object v6, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_64

    instance-of v6, v1, Lcom/lifevibes/videoeditor/MediaVideoItem;

    if-eqz v6, :cond_64

    iget-object v6, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lifevibes/videoeditor/MediaItem;

    iget-object v6, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v1}, Lcom/lifevibes/videoeditor/MediaItem;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Lcom/lifevibes/videoeditor/MediaItem;->getHeight()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getAspectRatio(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->setAspectRatio(I)V

    :cond_64
    const/4 v4, 0x0

    :try_start_65
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->lock()V

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    if-nez v6, :cond_83

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "The video editor is not initialized"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_75
    .catchall {:try_start_65 .. :try_end_75} :catchall_89
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_75} :catch_75

    :catch_75
    move-exception v0

    :try_start_76
    const-string v6, "VideoEditorImpl"

    const-string v7, "Sem acquire NOT successful in export"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_89

    if-eqz v4, :cond_82

    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    :cond_82
    :goto_82
    return-void

    :cond_83
    if-eqz v4, :cond_82

    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    goto :goto_82

    :catchall_89
    move-exception v6

    if-eqz v4, :cond_8f

    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    :cond_8f
    throw v6
.end method

.method public exportAs2D(Ljava/lang/String;Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_a

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "export: filename is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_2a

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "can not be created"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2a
    const/4 v1, 0x0

    :try_start_2b
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->lock()V

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    if-nez v3, :cond_49

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The video editor is not initialized"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_58
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception v0

    :try_start_3c
    const-string v3, "VideoEditorImpl"

    const-string v4, "Sem acquire NOT successful in export"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_58

    if-eqz v1, :cond_48

    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    :cond_48
    :goto_48
    return-void

    :cond_49
    :try_start_49
    iget-object v3, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget-object v4, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-virtual {v3, p1, v4, v5, p2}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->exportAs2D(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)V
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_58
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_52} :catch_3b

    if-eqz v1, :cond_48

    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    goto :goto_48

    :catchall_58
    move-exception v3

    if-eqz v1, :cond_5e

    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    :cond_5e
    throw v3
.end method

.method public fit2Share(Ljava/lang/String;Ljava/lang/String;JLcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)J
    .registers 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    if-eqz p1, :cond_9

    if-nez p2, :cond_11

    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "fit2Share: filename is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_11
    new-instance v31, Ljava/io/File;

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v31, :cond_37

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "can not be created"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_37
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v25, :cond_5d

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "can not be created"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5d
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-gtz v3, :cond_6b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "fit2Share: File Size is Zero"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6b
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/16 v27, 0x0

    :try_start_72
    new-instance v27, Lcom/lifevibes/videoeditor/MediaVideoItem;

    const-string v3, "mediaVidItem"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/lifevibes/videoeditor/MediaVideoItem;-><init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_80
    .catch Ljava/lang/IllegalArgumentException; {:try_start_72 .. :try_end_80} :catch_f8

    move-object/from16 v0, v27

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_132

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-gtz v3, :cond_132

    const-string v3, "FIT2SHARE"

    const-string v4, "Copying inputfile to output"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->setFit2ShareFile(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v0, v3, [B

    move-object/from16 v18, v0

    const-wide/16 v28, 0x0

    const-wide/16 v32, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v23

    move-object/from16 v34, p0

    :cond_c1
    :goto_c1
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v26

    if-lez v26, :cond_116

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p5, :cond_c1

    move/from16 v0, v26

    int-to-long v3, v0

    add-long v32, v32, v3

    const-wide/16 v3, 0x64

    mul-long v3, v3, v32

    div-long v3, v3, v23

    cmp-long v3, v3, v28

    if-eqz v3, :cond_f1

    const-wide/16 v3, 0x0

    cmp-long v3, v28, v3

    if-eqz v3, :cond_f1

    move-wide/from16 v0, v28

    long-to-int v3, v0

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;->onProgress(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;I)V

    :cond_f1
    const-wide/16 v3, 0x64

    mul-long v3, v3, v32

    div-long v28, v3, v23

    goto :goto_c1

    :catch_f8
    move-exception v21

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not create an Media Video Item of fileIn  Issue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_116
    if-eqz p5, :cond_124

    move-wide/from16 v0, v28

    long-to-int v3, v0

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;->onProgress(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;I)V

    :cond_124
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v3

    :goto_131
    return-wide v3

    :cond_132
    invoke-virtual/range {v27 .. v27}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getTimelineDuration()J

    move-result-wide v3

    const-wide/16 v10, 0x3e8

    div-long/2addr v3, v10

    long-to-int v0, v3

    move/from16 v20, v0

    move-wide/from16 v0, p3

    long-to-double v3, v0

    move-wide/from16 v0, p3

    long-to-double v10, v0

    const-wide v35, 0x3fa47ae147ae147bL

    mul-double v10, v10, v35

    sub-double/2addr v3, v10

    move/from16 v0, v20

    int-to-double v10, v0

    div-double/2addr v3, v10

    const-wide/high16 v10, 0x4020

    mul-double/2addr v3, v10

    double-to-int v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0x2fa8

    move/from16 v17, v0

    const v3, 0xfa00

    move/from16 v0, v17

    if-gt v0, v3, :cond_1a2

    move-wide/from16 v0, p3

    long-to-double v3, v0

    move-wide/from16 v0, p3

    long-to-double v10, v0

    const-wide v35, 0x3fa47ae147ae147bL

    mul-double v10, v10, v35

    sub-double/2addr v3, v10

    const-wide v10, 0x40ef400000000000L

    div-double/2addr v3, v10

    const-wide/high16 v10, 0x4020

    mul-double/2addr v3, v10

    const-wide v10, 0x408f400000000000L

    mul-double/2addr v3, v10

    double-to-float v0, v3

    move/from16 v19, v0

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fit2share: limit file duration to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1a2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->setOptimalConfiguration(I)I

    move-result v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    move/from16 v0, v16

    if-ne v0, v3, :cond_1be

    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->setRenderingMode(I)V

    :cond_1be
    const/4 v8, 0x1

    const/4 v9, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    move/from16 v16, v0

    const/16 v30, 0x0

    :try_start_1c8
    invoke-direct/range {p0 .. p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->lock()V

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    if-nez v3, :cond_201

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The video editor is not initialized"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1db
    .catchall {:try_start_1c8 .. :try_end_1db} :catchall_21c
    .catch Ljava/lang/InterruptedException; {:try_start_1c8 .. :try_end_1db} :catch_1db

    :catch_1db
    move-exception v22

    :try_start_1dc
    const-string v3, "VideoEditorImpl"

    const-string v4, "Sem acquire NOT successful in export"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e3
    .catchall {:try_start_1dc .. :try_end_1e3} :catchall_21c

    if-eqz v30, :cond_1e8

    invoke-direct/range {p0 .. p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    :cond_1e8
    :goto_1e8
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-lez v3, :cond_223

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Generated File size > outputsize; reduce Input file duration and retry"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_201
    :try_start_201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->modifiedBitrate:I

    move-object/from16 v4, p2

    move-wide/from16 v10, p3

    move-object/from16 v13, p5

    invoke-virtual/range {v3 .. v13}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->export(Ljava/lang/String;Ljava/lang/String;IIIIJLjava/util/List;Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)V
    :try_end_216
    .catchall {:try_start_201 .. :try_end_216} :catchall_21c
    .catch Ljava/lang/InterruptedException; {:try_start_201 .. :try_end_216} :catch_1db

    if-eqz v30, :cond_1e8

    invoke-direct/range {p0 .. p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    goto :goto_1e8

    :catchall_21c
    move-exception v3

    if-eqz v30, :cond_222

    invoke-direct/range {p0 .. p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    :cond_222
    throw v3

    :cond_223
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->length()J

    move-result-wide v3

    goto/16 :goto_131
.end method

.method public fit2ShareMMS(Ljava/lang/String;Ljava/lang/String;Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)J
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "fit2ShareMMS: filename is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v29, :cond_32

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "can not be created"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    if-nez v3, :cond_40

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The video editor is not initialized"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_40
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_52

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    :cond_52
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/16 v25, 0x0

    :try_start_59
    new-instance v25, Lcom/lifevibes/videoeditor/MediaVideoItem;

    const-string v3, "mmsMediaItem"

    const/4 v4, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/lifevibes/videoeditor/MediaVideoItem;-><init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_67
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_67} :catch_fa

    move-object/from16 v0, v25

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v14, :cond_134

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v10, 0x4b000

    cmp-long v3, v3, v10

    if-gtz v3, :cond_134

    invoke-virtual/range {v25 .. v25}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getVideoType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_134

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    invoke-virtual/range {v25 .. v25}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getFps()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->GetClosestVideoFrameRate(I)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_134

    invoke-virtual/range {v25 .. v25}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getVideoProfile()I

    move-result v3

    const/4 v4, 0x4

    if-gt v3, v4, :cond_134

    invoke-virtual/range {v25 .. v25}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioType()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_134

    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v0, v3, [B

    move-object/from16 v18, v0

    const-wide/16 v26, 0x0

    const-wide/16 v30, 0x0

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v22

    :cond_c1
    :goto_c1
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v24

    if-lez v24, :cond_118

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p3, :cond_c1

    move/from16 v0, v24

    int-to-long v3, v0

    add-long v30, v30, v3

    const-wide/16 v3, 0x64

    mul-long v3, v3, v30

    div-long v3, v3, v22

    cmp-long v3, v3, v26

    if-eqz v3, :cond_f3

    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-eqz v3, :cond_f3

    move-wide/from16 v0, v26

    long-to-int v3, v0

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;->onProgress(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;I)V

    :cond_f3
    const-wide/16 v3, 0x64

    mul-long v3, v3, v30

    div-long v26, v3, v22

    goto :goto_c1

    :catch_fa
    move-exception v20

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not create an Media Video Item of fileIn file for MMS  Issue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_118
    if-eqz p3, :cond_126

    move-wide/from16 v0, v26

    long-to-int v3, v0

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;->onProgress(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;I)V

    :cond_126
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->length()J

    move-result-wide v3

    :goto_133
    return-wide v3

    :cond_134
    const/16 v6, 0x90

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v25 .. v25}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAspectRatio()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_145

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->setRenderingMode(I)V

    :cond_145
    const-wide/32 v3, 0x47400

    invoke-virtual/range {v25 .. v25}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getDuration()J

    move-result-wide v10

    const-wide/16 v32, 0x3e8

    div-long v10, v10, v32

    div-long/2addr v3, v10

    const-wide/16 v10, 0x8

    mul-long/2addr v3, v10

    long-to-int v7, v3

    add-int/lit16 v7, v7, -0x2fa8

    const v3, 0x7a1200

    if-ge v7, v3, :cond_19e

    const v3, 0x4c4b40

    if-lt v7, v3, :cond_19e

    const v7, 0x4c4b40

    :goto_164
    const/16 v28, 0x0

    :try_start_166
    invoke-direct/range {p0 .. p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->lock()V

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    const-wide/32 v10, 0x4b000

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    invoke-virtual/range {v3 .. v13}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->export(Ljava/lang/String;Ljava/lang/String;IIIIJLjava/util/List;Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)V
    :try_end_17d
    .catchall {:try_start_166 .. :try_end_17d} :catchall_27f
    .catch Ljava/lang/InterruptedException; {:try_start_166 .. :try_end_17d} :catch_270

    if-eqz v28, :cond_182

    invoke-direct/range {p0 .. p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    :cond_182
    :goto_182
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v10, 0x4b000

    cmp-long v3, v3, v10

    if-lez v3, :cond_286

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Generated File size > MAX_MMS_CLIP_SIZE; reduce Input file duration and retry"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_19e
    const v3, 0x4c4b40

    if-ge v7, v3, :cond_1ac

    const v3, 0x1e8480

    if-lt v7, v3, :cond_1ac

    const v7, 0x1e8480

    goto :goto_164

    :cond_1ac
    const v3, 0x1e8480

    if-ge v7, v3, :cond_1ba

    const v3, 0x16e360

    if-lt v7, v3, :cond_1ba

    const v7, 0x16e360

    goto :goto_164

    :cond_1ba
    const v3, 0x16e360

    if-ge v7, v3, :cond_1c8

    const v3, 0x124f80

    if-lt v7, v3, :cond_1c8

    const v7, 0x124f80

    goto :goto_164

    :cond_1c8
    const v3, 0x124f80

    if-ge v7, v3, :cond_1d6

    const v3, 0xf4240

    if-lt v7, v3, :cond_1d6

    const v7, 0xf4240

    goto :goto_164

    :cond_1d6
    const v3, 0xf4240

    if-ge v7, v3, :cond_1e4

    const v3, 0xc3500

    if-lt v7, v3, :cond_1e4

    const v7, 0xc3500

    goto :goto_164

    :cond_1e4
    const v3, 0xc3500

    if-ge v7, v3, :cond_1f3

    const v3, 0x7d000

    if-lt v7, v3, :cond_1f3

    const v7, 0x7d000

    goto/16 :goto_164

    :cond_1f3
    const v3, 0x7d000

    if-ge v7, v3, :cond_202

    const v3, 0x5dc00

    if-lt v7, v3, :cond_202

    const v7, 0x5dc00

    goto/16 :goto_164

    :cond_202
    const v3, 0x5dc00

    if-ge v7, v3, :cond_211

    const v3, 0x3e800

    if-lt v7, v3, :cond_211

    const v7, 0x3e800

    goto/16 :goto_164

    :cond_211
    const v3, 0x3e800

    if-ge v7, v3, :cond_220

    const v3, 0x2ee00

    if-lt v7, v3, :cond_220

    const v7, 0x2ee00

    goto/16 :goto_164

    :cond_220
    const v3, 0x2ee00

    if-ge v7, v3, :cond_22f

    const v3, 0x1f400

    if-lt v7, v3, :cond_22f

    const v7, 0x1f400

    goto/16 :goto_164

    :cond_22f
    const v3, 0x1f400

    if-ge v7, v3, :cond_23e

    const v3, 0x17700

    if-lt v7, v3, :cond_23e

    const v7, 0x17700

    goto/16 :goto_164

    :cond_23e
    const v3, 0x17700

    if-ge v7, v3, :cond_24d

    const v3, 0xfa00

    if-lt v7, v3, :cond_24d

    const v7, 0xfa00

    goto/16 :goto_164

    :cond_24d
    const/16 v19, 0x7d00

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fit2ShareMMS: limit file duration to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_270
    move-exception v21

    :try_start_271
    const-string v3, "VideoEditorImpl"

    const-string v4, "Sem acquire NOT successful in export"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_278
    .catchall {:try_start_271 .. :try_end_278} :catchall_27f

    if-eqz v28, :cond_182

    invoke-direct/range {p0 .. p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    goto/16 :goto_182

    :catchall_27f
    move-exception v3

    if-eqz v28, :cond_285

    invoke-direct/range {p0 .. p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    :cond_285
    throw v3

    :cond_286
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->length()J

    move-result-wide v3

    goto/16 :goto_133
.end method

.method public getAspectRatio()I
    .registers 2

    iget v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    return v0
.end method

.method public getDuration()J
    .registers 3

    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    iget-wide v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mDurationMs:J

    return-wide v0
.end method

.method getNativeContext()Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;
    .registers 2

    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    return-object v0
.end method

.method public release()V
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->lock()V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->releaseNativeHelper()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_1c

    :cond_16
    if-eqz v1, :cond_1b

    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    :try_start_1d
    const-string v2, "VideoEditorImpl"

    const-string v3, "Sem acquire NOT successful in export"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_2a

    if-eqz v1, :cond_1b

    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    goto :goto_1b

    :catchall_2a
    move-exception v2

    if-eqz v1, :cond_30

    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    :cond_30
    throw v2
.end method

.method public declared-synchronized removeMediaItem(Ljava/lang/String;)Lcom/lifevibes/videoeditor/MediaItem;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_29

    iget-object v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lifevibes/videoeditor/MediaItem;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_19
    iget-object v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_27

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mIsList3D:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mIsFirstVideoItemAdded:Z
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2b

    :cond_27
    :goto_27
    monitor-exit p0

    return-object v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_27

    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAspectRatio(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateTimelineDuration()V
    .registers 1

    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    return-void
.end method
