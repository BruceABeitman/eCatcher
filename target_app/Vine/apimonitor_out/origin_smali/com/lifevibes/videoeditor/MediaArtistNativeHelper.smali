.class Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewSettings;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$AudioSettings;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClips;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EffectSettings;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$AudioEffect;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionBehaviour;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$AudioTransition;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$SlideDirection;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$VideoTransition;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$VideoRendering;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$VideoEffect;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$VideoFrameRate;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$VideoFrameSize;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$VideoProfile;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$VideoFormat;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Result;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$MediaRendering;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$FileType;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Bitrate;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$AudioSamplingFrequency;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$AudioFormat;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Version;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$OnProgressUpdateListener;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$CodecConfig;
    }
.end annotation


# static fields
.field private static final AUDIO_TRACK_PCM_FILE:Ljava/lang/String; = "AudioPcm.pcm"

.field public static final PROCESSING_AUDIO_PCM:I = 0x1

.field public static final PROCESSING_EXPORT:I = 0x14

.field public static final PROCESSING_INTERMEDIATE1:I = 0xb

.field public static final PROCESSING_INTERMEDIATE2:I = 0xc

.field public static final PROCESSING_INTERMEDIATE3:I = 0xd

.field public static final PROCESSING_KENBURNS:I = 0x3

.field public static final PROCESSING_NONE:I = 0x0

.field public static final PROCESSING_TRANSITION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaArtistNativeHelper"

.field public static final TASK_ENCODING:I = 0x2

.field public static final TASK_LOADING_SETTINGS:I = 0x1

.field public static mTNDecConfigAccurateMode:I

.field public static mTNDecConfigFastMode:I

.field private static final sResizePaint:Landroid/graphics/Paint;


# instance fields
.field private final MAX_THUMBNAIL_PERMITTED:I

.field private mAudioSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$AudioSettings;

.field private mAudioTrackPCMFilePath:Ljava/lang/String;

.field private mClipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

.field mEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

.field private mErrorFlagSet:Z

.field private mExportFilename:Ljava/lang/String;

.field private mExportProgressListener:Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;

.field public mInvalidatePreviewArray:Z

.field private mIsAbortGeneratePreviewInBGCalled:Z

.field private mIsFirstProgress:Z

.field private final mLock:Ljava/util/concurrent/Semaphore;

.field private mManualEditContext:I

.field private mOutputFilename:Ljava/lang/String;

.field private mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

.field mPreviewEffectsSize:I

.field private mPreviewProgress:J

.field private mProcessingObject:Ljava/lang/Object;

.field private mProcessingState:I

.field private mProgressToApp:I

.field private final mProjectPath:Ljava/lang/String;

.field private mRegenerateAudio:Z

.field private mRenderPreviewOverlayFile:Ljava/lang/String;

.field private mRenderPreviewRenderingMode:I

.field public mStoryBoardSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

.field private mThumbnailListListener:Lcom/lifevibes/videoeditor/MediaItem$GetThumbnailListCallback;

.field mThumbnailTime:[I

.field private mTotalClips:I

.field mTotalKenBurnClips:I

.field mTotalTransitions:I

.field private final mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->sResizePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    sput v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTNDecConfigAccurateMode:I

    const/4 v0, 0x1

    sput v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTNDecConfigFastMode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Semaphore;Lcom/lifevibes/videoeditor/VideoEditor;)V
    .registers 10

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipList:Ljava/util/List;

    const/16 v1, 0x8

    iput v1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->MAX_THUMBNAIL_PERMITTED:I

    iput-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iput-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput-boolean v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    iput-boolean v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    iput-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewProgress:J

    iput-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    iput v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    iput v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEffectsSize:I

    iput v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalTransitions:I

    iput v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalKenBurnClips:I

    iput-boolean v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    iput v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mManualEditContext:I

    iput-boolean v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mIsAbortGeneratePreviewInBGCalled:Z

    iput-object p1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    if-eqz p3, :cond_89

    iput-object p3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditor;

    iget-object v1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mStoryBoardSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    if-nez v1, :cond_42

    new-instance v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {v1}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    iput-object v1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mStoryBoardSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    :cond_42
    iput-object p2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    iget-object v1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    const-string v2, "null"

    invoke-direct {p0, v1, v2}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->_init(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getVersion()Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Version;

    move-result-object v0

    const-string v1, "MediaArtistNativeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoEditor Version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Version;->major:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Version;->minor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Version;->revision:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;

    invoke-direct {p0, v4, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->onProgressUpdate(II)V

    return-void

    :cond_89
    iput-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditor;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "video editor object is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private native _init(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private findVideoBitrate(I)I
    .registers 5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_20

    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "bitrate for frame size not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return v0

    :pswitch_c
    const v0, 0x7d000

    goto :goto_b

    :pswitch_10
    const v0, 0x16e360

    goto :goto_b

    :pswitch_14
    const v0, 0x1e8480

    goto :goto_b

    :pswitch_18
    const v0, 0x4c4b40

    goto :goto_b

    :pswitch_1c
    const v0, 0x7a1200

    goto :goto_b

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_10
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_18
        :pswitch_14
        :pswitch_18
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method private findVideoFrameDimensions(I)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/16 v5, 0x438

    const/16 v1, 0x280

    const/4 v4, 0x0

    const/16 v3, 0x2d0

    const/16 v2, 0x1e0

    packed-switch p1, :pswitch_data_114

    new-instance v0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_19
    return-object v0

    :pswitch_1a
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_2c
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x78

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_3e
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0xb0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x90

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_50
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x140

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_62
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x120

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_74
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_82
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_92
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    :pswitch_a1
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x168

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    :pswitch_b2
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x356

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    :pswitch_c3
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    :pswitch_d4
    new-instance v0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    :pswitch_e3
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x3c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    :pswitch_f4
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x780

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    :pswitch_105
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_2c
        :pswitch_3e
        :pswitch_50
        :pswitch_62
        :pswitch_105
        :pswitch_74
        :pswitch_82
        :pswitch_92
        :pswitch_a1
        :pswitch_b2
        :pswitch_c3
        :pswitch_d4
        :pswitch_e3
        :pswitch_f4
    .end packed-switch
.end method

.method private findVideoResolution(II)I
    .registers 9

    const/16 v5, 0x2d0

    const/16 v4, 0x1e0

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_7e

    :cond_8
    :goto_8
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2c

    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditor;

    invoke-interface {v3}, Lcom/lifevibes/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-static {v3}, Lcom/lifevibes/videoeditor/MediaProperties;->getSupportedResolutions(I)[Landroid/util/Pair;

    move-result-object v1

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v1, v3

    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditor;

    invoke-interface {v3}, Lcom/lifevibes/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v4

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v3}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    :cond_2c
    return v2

    :pswitch_2d
    if-ne p2, v4, :cond_32

    const/16 v2, 0x8

    goto :goto_8

    :cond_32
    if-ne p2, v5, :cond_8

    const/16 v2, 0xc

    goto :goto_8

    :pswitch_37
    if-ne p2, v4, :cond_3c

    const/16 v2, 0xa

    goto :goto_8

    :cond_3c
    if-ne p2, v5, :cond_41

    const/16 v2, 0xb

    goto :goto_8

    :cond_41
    const/16 v3, 0x438

    if-ne p2, v3, :cond_48

    const/16 v2, 0xe

    goto :goto_8

    :cond_48
    const/16 v3, 0x168

    if-ne p2, v3, :cond_8

    const/16 v2, 0x9

    goto :goto_8

    :pswitch_4f
    const/16 v3, 0x60

    if-ne p2, v3, :cond_55

    const/4 v2, 0x0

    goto :goto_8

    :cond_55
    const/16 v3, 0x78

    if-ne p2, v3, :cond_5b

    const/4 v2, 0x1

    goto :goto_8

    :cond_5b
    const/16 v3, 0xf0

    if-ne p2, v3, :cond_61

    const/4 v2, 0x3

    goto :goto_8

    :cond_61
    if-ne p2, v4, :cond_65

    const/4 v2, 0x6

    goto :goto_8

    :cond_65
    if-ne p2, v5, :cond_8

    const/16 v2, 0xd

    goto :goto_8

    :pswitch_6a
    if-ne p2, v4, :cond_8

    const/4 v2, 0x7

    goto :goto_8

    :pswitch_6e
    const/16 v3, 0x90

    if-ne p2, v3, :cond_74

    const/4 v2, 0x2

    goto :goto_8

    :cond_74
    const/16 v3, 0x120

    if-ne p2, v3, :cond_8

    const/4 v2, 0x4

    goto :goto_8

    :pswitch_7a
    if-ne p2, v4, :cond_8

    const/4 v2, 0x5

    goto :goto_8

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_37
        :pswitch_4f
        :pswitch_6a
        :pswitch_6e
        :pswitch_7a
    .end packed-switch
.end method

.method private getMediaItemProperties(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lifevibes/videoeditor/MediaItem;",
            ">;)V"
        }
    .end annotation

    const/16 v12, 0x64

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iput v9, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    new-instance v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    iput-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    new-instance v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    invoke-direct {v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;-><init>()V

    iput-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    new-array v1, v11, [Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;

    new-instance v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    const/4 v3, 0x0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/lifevibes/videoeditor/MediaVideoItem;

    if-nez v4, :cond_2d

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Not a media video item"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2d
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    new-array v5, v5, [Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;

    iput-object v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;

    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    new-array v5, v9, [Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iput-object v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    iput-object v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v12, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->primaryTrackVolume:I

    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    new-array v5, v5, [Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    iput-object v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    invoke-virtual {p0, v0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->initClipSettings(Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;)V

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getFilename()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getFileType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getMediaItemFileType(I)I

    move-result v4

    iput v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    :try_start_75
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_84} :catch_129

    new-array v4, v11, [I

    iput-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayBeginCutTime:[I

    new-array v4, v11, [I

    iput-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayEndCutTime:[I

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->isExcludeCalled()Z

    move-result v4

    if-eqz v4, :cond_132

    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getDuration()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getExcludeEndTime()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getExcludeBeginTime()J

    move-result-wide v7

    long-to-int v7, v7

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    iget-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayBeginCutTime:[I

    aput v9, v4, v9

    iget-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayEndCutTime:[I

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getExcludeBeginTime()J

    move-result-wide v5

    long-to-int v5, v5

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v9

    iget-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayBeginCutTime:[I

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getExcludeEndTime()J

    move-result-wide v5

    long-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v10

    iget-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayEndCutTime:[I

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getDuration()J

    move-result-wide v5

    long-to-int v5, v5

    aput v5, v4, v10

    iput v11, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->mNumCuts:I

    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    iget v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    if-eqz v4, :cond_ea

    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    iget-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v5, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v9

    iget v5, v5, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    iput v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    :cond_ea
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    iget v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    if-eqz v4, :cond_104

    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    iget-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v5, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v9

    iget v5, v5, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    iput v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    :cond_104
    :goto_104
    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getRenderingMode()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getMediaItemRenderingMode(I)I

    move-result v4

    iput v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    iput v12, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipVolumePercentage:I

    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aput-object v0, v4, v9

    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditor;

    invoke-interface {v5}, Lcom/lifevibes/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v5

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v5

    iput v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    return-void

    :catch_129
    move-exception v2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported file or file not found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_132
    iget-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayBeginCutTime:[I

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v5

    long-to-int v5, v5

    aput v5, v4, v9

    iget-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayBeginCutTime:[I

    aput v9, v4, v10

    iget-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayEndCutTime:[I

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v5

    long-to-int v5, v5

    aput v5, v4, v9

    iget-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayEndCutTime:[I

    aput v9, v4, v10

    iput v10, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->mNumCuts:I

    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    iget-object v5, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayEndCutTime:[I

    aget v5, v5, v9

    iget-object v6, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayBeginCutTime:[I

    aget v6, v6, v9

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    iget v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    if-eqz v4, :cond_179

    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    iget-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v5, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v9

    iget v5, v5, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    iput v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    :cond_179
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    iget v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    if-eqz v4, :cond_104

    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    iget-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v5, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v9

    iget v5, v5, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    iput v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    goto/16 :goto_104
.end method

.method private native getVersion()Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Version;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private lock()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v3, 0x3

    const-string v0, "MediaArtistNativeHelper"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "lock: grabbing semaphore"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    iget-object v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    const-string v0, "MediaArtistNativeHelper"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "lock: grabbed semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method

.method private native nativeClearSurface(Landroid/view/Surface;)V
.end method

.method private native nativeGenerateAudioGraph(Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method private native nativeGenerateClip(Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeGenerateRawAudio(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeGenerateRawAudioMedia(Ljava/lang/String;Ljava/lang/String;JJ)I
.end method

.method private native nativeGetPixels(Ljava/lang/String;IIJI)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetPixelsList(Ljava/lang/String;IIIIII[IILcom/lifevibes/videoeditor/MediaItem$GetThumbnailListCallback;)I
.end method

.method private native nativeGetPixelsList(Ljava/lang/String;IIIIII[II)[Landroid/graphics/Bitmap;
.end method

.method private native nativePopulateSettings(Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$AudioSettings;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeRenderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;IIIIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeRenderPreviewFrame(Landroid/view/Surface;JII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeStartPreview(Landroid/view/Surface;JJIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeStopPreview()I
.end method

.method private onAudioGraphExtractProgressUpdate(IZ)V
    .registers 3

    return-void
.end method

.method private onProgressUpdate(II)V
    .registers 7

    iget v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_21

    iget v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-gt v0, p2, :cond_22

    iput p2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    :goto_16
    iget-object v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;

    iget-object v1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditor;

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mOutputFilename:Ljava/lang/String;

    iget v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    invoke-interface {v0, v1, v2, v3}, Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;->onProgress(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;I)V

    :cond_21
    return-void

    :cond_22
    rem-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_21

    iget v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    goto :goto_16
.end method

.method private native release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native stopEncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native stopExtraction()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native stopThumbnail()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private unlock()V
    .registers 3

    const-string v0, "MediaArtistNativeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "unlock: releasing semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method


# virtual methods
.method GetClosestVideoFrameRate(I)I
    .registers 7

    const/4 v0, 0x5

    const/16 v1, 0x19

    if-le p1, v1, :cond_7

    const/4 v0, 0x7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/16 v1, 0x14

    if-le p1, v1, :cond_d

    const/4 v0, 0x6

    goto :goto_6

    :cond_d
    const/16 v1, 0xf

    if-gt p1, v1, :cond_6

    int-to-double v1, p1

    const-wide/high16 v3, 0x4029

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1a

    const/4 v0, 0x4

    goto :goto_6

    :cond_1a
    const/16 v1, 0xa

    if-le p1, v1, :cond_20

    const/4 v0, 0x3

    goto :goto_6

    :cond_20
    int-to-double v1, p1

    const-wide/high16 v3, 0x401e

    cmpl-double v1, v1, v3

    if-lez v1, :cond_29

    const/4 v0, 0x2

    goto :goto_6

    :cond_29
    if-le p1, v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_6

    :cond_2d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public export(Ljava/lang/String;Ljava/lang/String;IIIIJLjava/util/List;Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIJ",
            "Ljava/util/List",
            "<",
            "Lcom/lifevibes/videoeditor/MediaItem;",
            ">;",
            "Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;",
            ")V"
        }
    .end annotation

    const/4 v13, 0x0

    move-object/from16 v12, p9

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz p10, :cond_19

    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;

    :cond_19
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getMediaItemProperties(Ljava/util/List;)V

    sparse-switch p4, :sswitch_data_4c2

    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Argument Bitrate incorrect"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    :sswitch_29
    const/16 v13, 0x7d00

    :goto_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mOutputFilename:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoRenderingType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditor;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/lifevibes/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    move/from16 v16, v0

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b5

    const v16, 0xc3500

    move/from16 v0, v16

    if-ne v13, v0, :cond_a0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    :cond_a0
    const v16, 0x7d000

    move/from16 v0, v16

    if-ne v13, v0, :cond_b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    :cond_b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_fb

    const v16, 0x5dc00

    move/from16 v0, v16

    if-ne v13, v0, :cond_e6

    const/16 v16, 0x1

    move/from16 v0, p6

    move/from16 v1, v16

    if-eq v0, v1, :cond_195

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x6

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    :cond_e6
    :goto_e6
    const v16, 0x3e800

    move/from16 v0, v16

    if-ne v13, v0, :cond_fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    :cond_fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_12c

    const v16, 0x2ee00

    move/from16 v0, v16

    if-ne v13, v0, :cond_1b5

    const/16 v16, 0x1

    move/from16 v0, p6

    move/from16 v1, v16

    if-eq v0, v1, :cond_1a5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    :cond_12c
    :goto_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->findVideoBitrate(I)I

    move-result v14

    if-ge v14, v13, :cond_1fa

    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Argument Bitrate NOT Supported for supplied resolution"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    :sswitch_14a
    const v13, 0xbb80

    goto/16 :goto_2b

    :sswitch_14f
    const v13, 0xfa00

    goto/16 :goto_2b

    :sswitch_154
    const v13, 0x17700

    goto/16 :goto_2b

    :sswitch_159
    const v13, 0x1f400

    goto/16 :goto_2b

    :sswitch_15e
    const v13, 0x2ee00

    goto/16 :goto_2b

    :sswitch_163
    const v13, 0x3e800

    goto/16 :goto_2b

    :sswitch_168
    const v13, 0x5dc00

    goto/16 :goto_2b

    :sswitch_16d
    const v13, 0x7d000

    goto/16 :goto_2b

    :sswitch_172
    const v13, 0xc3500

    goto/16 :goto_2b

    :sswitch_177
    const v13, 0xf4240

    goto/16 :goto_2b

    :sswitch_17c
    const v13, 0x124f80

    goto/16 :goto_2b

    :sswitch_181
    const v13, 0x16e360

    goto/16 :goto_2b

    :sswitch_186
    const v13, 0x1e8480

    goto/16 :goto_2b

    :sswitch_18b
    const v13, 0x4c4b40

    goto/16 :goto_2b

    :sswitch_190
    const v13, 0x7a1200

    goto/16 :goto_2b

    :cond_195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    goto/16 :goto_e6

    :cond_1a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    goto/16 :goto_12c

    :cond_1b5
    const v16, 0x1f400

    move/from16 v0, v16

    if-ne v13, v0, :cond_1cc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    goto/16 :goto_12c

    :cond_1cc
    const v16, 0x17700

    move/from16 v0, v16

    if-ne v13, v0, :cond_1e3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    goto/16 :goto_12c

    :cond_1e3
    const v16, 0xfa00

    move/from16 v0, v16

    if-ne v13, v0, :cond_12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    goto/16 :goto_12c

    :cond_1fa
    packed-switch p5, :pswitch_data_504

    :goto_1fd
    packed-switch p6, :pswitch_data_50c

    :pswitch_200
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Argument Video codec NOT Supported"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    :pswitch_208
    const/16 v16, 0x0

    move-object/from16 v0, p9

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lifevibes/videoeditor/MediaVideoItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0xfe

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    invoke-virtual {v11}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioBitrate()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    invoke-virtual {v11}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioSamplingFrequency()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    invoke-virtual {v11}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioChannels()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    goto :goto_1fd

    :pswitch_253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x2fa8

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x1f40

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    goto/16 :goto_1fd

    :pswitch_28d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    :goto_29b
    const-wide/16 v16, 0x0

    cmp-long v16, p7, v16

    if-eqz v16, :cond_48d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    move-wide/from16 v0, p7

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->maxFileSize:I

    :goto_2b2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3de

    const/16 v16, 0x0

    move-object/from16 v0, p9

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lifevibes/videoeditor/MediaItem;

    invoke-virtual {v10}, Lcom/lifevibes/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v4

    const-wide v16, 0x3ff0a3d70a3d70a4L

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoBitrate:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    long-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    const-wide v18, 0x40bf400000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-long v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->findVideoFrameDimensions(I)Landroid/util/Pair;

    move-result-object v15

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->maxFileSize:I

    move/from16 v16, v0

    if-eqz v16, :cond_347

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->maxFileSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v16, v8, v16

    if-lez v16, :cond_355

    :cond_347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->maxFileSize:I

    move/from16 v16, v0

    if-nez v16, :cond_356

    :cond_355
    const/4 v2, 0x1

    :cond_356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoFormat:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3de

    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3de

    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3de

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_3de

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0xfe

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    :cond_3de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput v13, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    new-array v0, v0, [Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    const/4 v6, 0x0

    const/16 v16, 0x14

    :try_start_405
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->generateClip(Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v6

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProcessingState:I
    :try_end_429
    .catch Ljava/lang/IllegalArgumentException; {:try_start_405 .. :try_end_429} :catch_49d
    .catch Ljava/lang/IllegalStateException; {:try_start_405 .. :try_end_429} :catch_4a6
    .catch Ljava/lang/RuntimeException; {:try_start_405 .. :try_end_429} :catch_4af

    if-eqz v6, :cond_4b8

    const-string v16, "MediaArtistNativeHelper"

    const-string v17, "RuntimeException for generateClip"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Ljava/lang/RuntimeException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "generateClip failed with error="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16

    :pswitch_44d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    goto/16 :goto_29b

    :pswitch_45d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    goto/16 :goto_29b

    :pswitch_46d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x6

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    goto/16 :goto_29b

    :pswitch_47d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    goto/16 :goto_29b

    :cond_48d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->maxFileSize:I

    goto/16 :goto_2b2

    :catch_49d
    move-exception v7

    const-string v16, "MediaArtistNativeHelper"

    const-string v17, "IllegalArgument for generateClip"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v7

    :catch_4a6
    move-exception v7

    const-string v16, "MediaArtistNativeHelper"

    const-string v17, "IllegalStateExceptiont for generateClip"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v7

    :catch_4af
    move-exception v7

    const-string v16, "MediaArtistNativeHelper"

    const-string v17, "RuntimeException for generateClip"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v7

    :cond_4b8
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;

    return-void

    nop

    :sswitch_data_4c2
    .sparse-switch
        0x6d60 -> :sswitch_29
        0x9c40 -> :sswitch_14a
        0xfa00 -> :sswitch_14f
        0x17700 -> :sswitch_154
        0x1f400 -> :sswitch_159
        0x2ee00 -> :sswitch_15e
        0x3e800 -> :sswitch_163
        0x5dc00 -> :sswitch_168
        0x7d000 -> :sswitch_16d
        0xc3500 -> :sswitch_172
        0xf4240 -> :sswitch_177
        0x124f80 -> :sswitch_17c
        0x16e360 -> :sswitch_181
        0x1e8480 -> :sswitch_186
        0x4c4b40 -> :sswitch_18b
        0x7a1200 -> :sswitch_190
    .end sparse-switch

    :pswitch_data_504
    .packed-switch 0x1
        :pswitch_253
        :pswitch_208
    .end packed-switch

    :pswitch_data_50c
    .packed-switch 0x1
        :pswitch_28d
        :pswitch_47d
        :pswitch_200
        :pswitch_44d
        :pswitch_45d
        :pswitch_46d
    .end packed-switch
.end method

.method export(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/lifevibes/videoeditor/MediaItem;",
            ">;",
            "Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/lifevibes/videoeditor/MediaVideoItem;

    if-nez v8, :cond_13

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Not a media video item"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_13
    const/4 v5, 0x0

    iput-object p1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    const/4 v8, 0x0

    iput v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz p6, :cond_1f

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;

    :cond_1f
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getMediaItemProperties(Ljava/util/List;)V

    sparse-switch p4, :sswitch_data_1f4

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Argument Bitrate incorrect"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :sswitch_2f
    const/16 v5, 0x7d00

    :goto_31
    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v9, 0x7

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput-object p1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mOutputFilename:Ljava/lang/String;

    iput-object p1, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v9, 0x0

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoRenderingType:I

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditor;

    invoke-interface {v8}, Lcom/lifevibes/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v1

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {p0, v1, p3}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v9

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v8, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    invoke-direct {p0, v8}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->findVideoBitrate(I)I

    move-result v6

    if-ge v6, v5, :cond_9d

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Argument Bitrate NOT Supported for supplied resolution"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :sswitch_61
    const v5, 0xbb80

    goto :goto_31

    :sswitch_65
    const v5, 0xfa00

    goto :goto_31

    :sswitch_69
    const v5, 0x17700

    goto :goto_31

    :sswitch_6d
    const v5, 0x1f400

    goto :goto_31

    :sswitch_71
    const v5, 0x2ee00

    goto :goto_31

    :sswitch_75
    const v5, 0x3e800

    goto :goto_31

    :sswitch_79
    const v5, 0x5dc00

    goto :goto_31

    :sswitch_7d
    const v5, 0x7d000

    goto :goto_31

    :sswitch_81
    const v5, 0xc3500

    goto :goto_31

    :sswitch_85
    const v5, 0xf4240

    goto :goto_31

    :sswitch_89
    const v5, 0x124f80

    goto :goto_31

    :sswitch_8d
    const v5, 0x16e360

    goto :goto_31

    :sswitch_91
    const v5, 0x1e8480

    goto :goto_31

    :sswitch_95
    const v5, 0x4c4b40

    goto :goto_31

    :sswitch_99
    const v5, 0x7a1200

    goto :goto_31

    :cond_9d
    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v9, 0x4

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v9, 0x2

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const v9, 0x17700

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v9, 0x7d00

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v9, 0x2

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v9, 0x0

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->maxFileSize:I

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v5, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    const/4 v8, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v4}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getVideoType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e0

    invoke-virtual {v4}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getVideoType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_125

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v8, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    const/4 v9, 0x4

    if-gt v8, v9, :cond_125

    :cond_e0
    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v9, 0xfe

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    invoke-virtual {v4}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioType()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_105

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-virtual {v4}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioBitrate()I

    move-result v9

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-virtual {v4}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioSamplingFrequency()I

    move-result v9

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-virtual {v4}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioChannels()I

    move-result v9

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    :cond_105
    invoke-virtual {v4}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getVideoType()I

    move-result v8

    packed-switch v8, :pswitch_data_236

    :pswitch_10c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Argument Video codec NOT Supported"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_114
    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v9, 0x1

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    :goto_119
    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v8, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1c6

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v9, 0x4

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    :cond_125
    :goto_125
    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v9, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    add-int/lit8 v9, v9, -0x1

    new-array v9, v9, [Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    iput-object v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    iget v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_177

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v8, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    invoke-direct {p0, v8}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->findVideoFrameDimensions(I)Landroid/util/Pair;

    move-result-object v7

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v8, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    iget-object v9, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v9, v9, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoFormat:I

    if-ne v8, v9, :cond_177

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v9, v9, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    if-ne v8, v9, :cond_177

    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v9, v9, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    if-ne v8, v9, :cond_177

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v9, 0xfe

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    :cond_177
    const/4 v2, 0x0

    const/16 v8, 0x14

    :try_start_17a
    iput v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-virtual {p0, v8}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->generateClip(Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v2

    const/4 v8, 0x0

    iput v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProcessingState:I
    :try_end_188
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17a .. :try_end_188} :catch_1d4
    .catch Ljava/lang/IllegalStateException; {:try_start_17a .. :try_end_188} :catch_1dd
    .catch Ljava/lang/RuntimeException; {:try_start_17a .. :try_end_188} :catch_1e6

    if-eqz v2, :cond_1ef

    const-string v8, "MediaArtistNativeHelper"

    const-string v9, "RuntimeException for generateClip"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateClip failed with error="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_1aa
    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v9, 0x4

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    goto/16 :goto_119

    :pswitch_1b1
    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v9, 0x5

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    goto/16 :goto_119

    :pswitch_1b8
    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v9, 0x6

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    goto/16 :goto_119

    :pswitch_1bf
    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v9, 0x2

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    goto/16 :goto_119

    :cond_1c6
    iget-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-virtual {v4}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getFps()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->GetClosestVideoFrameRate(I)I

    move-result v9

    iput v9, v8, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    goto/16 :goto_125

    :catch_1d4
    move-exception v3

    const-string v8, "MediaArtistNativeHelper"

    const-string v9, "IllegalArgument for generateClip"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v3

    :catch_1dd
    move-exception v3

    const-string v8, "MediaArtistNativeHelper"

    const-string v9, "IllegalStateExceptiont for generateClip"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v3

    :catch_1e6
    move-exception v3

    const-string v8, "MediaArtistNativeHelper"

    const-string v9, "RuntimeException for generateClip"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v3

    :cond_1ef
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;

    return-void

    nop

    :sswitch_data_1f4
    .sparse-switch
        0x6d60 -> :sswitch_2f
        0x9c40 -> :sswitch_61
        0xfa00 -> :sswitch_65
        0x17700 -> :sswitch_69
        0x1f400 -> :sswitch_6d
        0x2ee00 -> :sswitch_71
        0x3e800 -> :sswitch_75
        0x5dc00 -> :sswitch_79
        0x7d000 -> :sswitch_7d
        0xc3500 -> :sswitch_81
        0xf4240 -> :sswitch_85
        0x124f80 -> :sswitch_89
        0x16e360 -> :sswitch_8d
        0x1e8480 -> :sswitch_91
        0x4c4b40 -> :sswitch_95
        0x7a1200 -> :sswitch_99
    .end sparse-switch

    :pswitch_data_236
    .packed-switch 0x1
        :pswitch_114
        :pswitch_1bf
        :pswitch_10c
        :pswitch_1aa
        :pswitch_1b1
        :pswitch_1b8
    .end packed-switch
.end method

.method exportAs2D(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lifevibes/videoeditor/MediaItem;",
            ">;",
            "Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;",
            ")V"
        }
    .end annotation

    const v9, 0x5dc00

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/lifevibes/videoeditor/MediaVideoItem;

    if-nez v2, :cond_17

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not a media video item"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_17
    invoke-direct {p0, p3}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getMediaItemProperties(Ljava/util/List;)V

    if-eqz p4, :cond_1e

    iput-object p4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;

    :cond_1e
    iput-object p1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v2}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getFps()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->GetClosestVideoFrameRate(I)I

    move-result v2

    iput v2, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput-object p1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mOutputFilename:Ljava/lang/String;

    iput-object p1, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lifevibes/videoeditor/MediaItem;

    invoke-virtual {v2}, Lcom/lifevibes/videoeditor/MediaItem;->getWidth()I

    move-result v4

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lifevibes/videoeditor/MediaItem;

    invoke-virtual {v2}, Lcom/lifevibes/videoeditor/MediaItem;->getHeight()I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getAspectRatio(II)I

    move-result v4

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lifevibes/videoeditor/MediaItem;

    invoke-virtual {v2}, Lcom/lifevibes/videoeditor/MediaItem;->getHeight()I

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    iput v2, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v2}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getVideoBitrate()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getClosestVideoBitrate(I)I

    move-result v2

    iput v2, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v6, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoRenderingType:I

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v2}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getVideoType()I

    move-result v2

    packed-switch v2, :pswitch_data_19e

    :pswitch_85
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument Video codec NOT Supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_8d
    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v6, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    :goto_91
    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v2, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    if-ne v2, v6, :cond_a5

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v7, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v2, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    if-le v2, v9, :cond_a5

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v9, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    :cond_a5
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v2}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioType()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_bf

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v2}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioType()I

    move-result v2

    packed-switch v2, :pswitch_data_1ae

    :cond_bf
    :goto_bf
    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v5, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->maxFileSize:I

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    iput-object v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v2, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    if-ne v2, v6, :cond_e8

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v7, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const v3, 0x3e800

    iput v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v2, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    if-le v2, v7, :cond_e8

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v7, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    :cond_e8
    const/4 v0, 0x0

    const/16 v2, 0x14

    :try_start_eb
    iput v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-virtual {p0, v2}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->generateClip(Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v0

    const/4 v2, 0x0

    iput v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProcessingState:I
    :try_end_f9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_eb .. :try_end_f9} :catch_17f
    .catch Ljava/lang/IllegalStateException; {:try_start_eb .. :try_end_f9} :catch_188
    .catch Ljava/lang/RuntimeException; {:try_start_eb .. :try_end_f9} :catch_191

    if-eqz v0, :cond_19a

    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "RuntimeException for generateClip"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateClip failed with error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_11b
    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v7, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    goto/16 :goto_91

    :pswitch_121
    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v3, 0x5

    iput v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    goto/16 :goto_91

    :pswitch_128
    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v3, 0x6

    iput v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    goto/16 :goto_91

    :pswitch_12f
    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v8, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    goto/16 :goto_91

    :pswitch_135
    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v8, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v2}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioBitrate()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getClosestAudioBitrate(I)I

    move-result v2

    iput v2, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v2}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioSamplingFrequency()I

    move-result v2

    iput v2, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v2}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioChannels()I

    move-result v2

    iput v2, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    goto/16 :goto_bf

    :pswitch_169
    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v6, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v3, 0x2fa8

    iput v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v3, 0x1f40

    iput v3, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v6, v2, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    goto/16 :goto_bf

    :catch_17f
    move-exception v1

    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "IllegalArgument for generateClip"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :catch_188
    move-exception v1

    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "IllegalStateExceptiont for generateClip"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :catch_191
    move-exception v1

    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "RuntimeException for generateClip"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :cond_19a
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;

    return-void

    :pswitch_data_19e
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_12f
        :pswitch_85
        :pswitch_11b
        :pswitch_121
        :pswitch_128
    .end packed-switch

    :pswitch_data_1ae
    .packed-switch 0x1
        :pswitch_169
        :pswitch_135
    .end packed-switch
.end method

.method findThumbnailMode(Ljava/lang/String;IJJ)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual/range {p0 .. p6}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->nativeFindThumbnailMode(Ljava/lang/String;IJJ)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_6

    move-result v1

    :goto_5
    return v1

    :catch_6
    move-exception v0

    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "Runtime exception in nativeFindThumbnailMode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_5
.end method

.method public generateClip(Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;)I
    .registers 7

    const/4 v2, -0x1

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->nativeGenerateClip(Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;)I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_5} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_20

    move-result v0

    move v2, v0

    :cond_7
    :goto_7
    return v2

    :catch_8
    move-exception v1

    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "Illegal Argument exception in load settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    move v2, v0

    goto :goto_7

    :catch_14
    move-exception v1

    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "Illegal state exception in load settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    move v2, v0

    goto :goto_7

    :catch_20
    move-exception v1

    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "Runtime exception in load settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    move v2, v0

    goto :goto_7
.end method

.method getAspectRatio(II)I
    .registers 11

    int-to-double v4, p1

    int-to-double v6, p2

    div-double v0, v4, v6

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v4, 0x3

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    const/4 v3, 0x2

    const-wide v4, 0x3ffb333333333333L

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1f

    const/4 v3, 0x2

    :cond_1e
    :goto_1e
    return v3

    :cond_1f
    const-wide v4, 0x3ff999999999999aL

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_2a

    const/4 v3, 0x4

    goto :goto_1e

    :cond_2a
    const-wide/high16 v4, 0x3ff8

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_32

    const/4 v3, 0x1

    goto :goto_1e

    :cond_32
    const-wide v4, 0x3ff4cccccccccccdL

    cmpl-double v4, v0, v4

    if-lez v4, :cond_3d

    const/4 v3, 0x3

    goto :goto_1e

    :cond_3d
    const-wide v4, 0x3ff3333333333333L

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_48

    const/4 v3, 0x5

    goto :goto_1e

    :cond_48
    const-wide/high16 v4, 0x3ff0

    cmpl-double v4, v0, v4

    if-nez v4, :cond_1e

    const/4 v3, 0x6

    goto :goto_1e
.end method

.method getAudioCodecType(I)I
    .registers 3

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_10

    const/4 v0, -0x1

    :goto_5
    return v0

    :pswitch_6
    const/4 v0, 0x1

    goto :goto_5

    :pswitch_8
    const/4 v0, 0x2

    goto :goto_5

    :pswitch_a
    const/4 v0, 0x3

    goto :goto_5

    :pswitch_c
    const/4 v0, 0x4

    goto :goto_5

    :pswitch_e
    const/4 v0, 0x5

    goto :goto_5

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method getAudioflag()Z
    .registers 2

    iget-boolean v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    return v0
.end method

.method getClosestAudioBitrate(I)I
    .registers 7

    const v4, 0xfa00

    const v3, 0xbb80

    const/16 v2, 0x7d00

    const/16 v1, 0x5dc0

    const/16 v0, 0x3e80

    if-lez p1, :cond_11

    if-gt p1, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    if-le p1, v0, :cond_17

    if-gt p1, v1, :cond_17

    move v0, v1

    goto :goto_10

    :cond_17
    if-le p1, v1, :cond_1d

    if-gt p1, v2, :cond_1d

    move v0, v2

    goto :goto_10

    :cond_1d
    if-le p1, v2, :cond_23

    if-gt p1, v3, :cond_23

    move v0, v3

    goto :goto_10

    :cond_23
    if-le p1, v3, :cond_29

    if-gt p1, v4, :cond_29

    move v0, v4

    goto :goto_10

    :cond_29
    if-le p1, v4, :cond_34

    const v0, 0x17700

    if-gt p1, v0, :cond_34

    const v0, 0x17700

    goto :goto_10

    :cond_34
    const v0, 0x17700

    if-le p1, v0, :cond_42

    const v0, 0x1f400

    if-gt p1, v0, :cond_42

    const v0, 0x1f400

    goto :goto_10

    :cond_42
    const v0, 0x1f400

    if-le p1, v0, :cond_50

    const v0, 0x2ee00

    if-gt p1, v0, :cond_50

    const v0, 0x2ee00

    goto :goto_10

    :cond_50
    const v0, 0x2ee00

    if-le p1, v0, :cond_5e

    const v0, 0x3e800

    if-gt p1, v0, :cond_5e

    const v0, 0x3e800

    goto :goto_10

    :cond_5e
    const/4 v0, -0x1

    goto :goto_10
.end method

.method getClosestVideoBitrate(I)I
    .registers 7

    const v3, 0x2ee00

    const v2, 0x1f400

    const v1, 0x17700

    const v0, 0xfa00

    const v4, 0x7a1200

    if-lez p1, :cond_14

    if-gt p1, v0, :cond_14

    :goto_13
    return v0

    :cond_14
    if-le p1, v0, :cond_1a

    if-gt p1, v1, :cond_1a

    move v0, v1

    goto :goto_13

    :cond_1a
    if-le p1, v1, :cond_20

    if-gt p1, v2, :cond_20

    move v0, v2

    goto :goto_13

    :cond_20
    if-le p1, v2, :cond_26

    if-gt p1, v3, :cond_26

    move v0, v3

    goto :goto_13

    :cond_26
    if-le p1, v3, :cond_31

    const v0, 0x3e800

    if-gt p1, v0, :cond_31

    const v0, 0x3e800

    goto :goto_13

    :cond_31
    const v0, 0x3e800

    if-le p1, v0, :cond_3f

    const v0, 0x46500

    if-gt p1, v0, :cond_3f

    const v0, 0x46500

    goto :goto_13

    :cond_3f
    const v0, 0x46500

    if-le p1, v0, :cond_4d

    const v0, 0x5dc00

    if-gt p1, v0, :cond_4d

    const v0, 0x5dc00

    goto :goto_13

    :cond_4d
    const v0, 0x5dc00

    if-le p1, v0, :cond_5b

    const v0, 0x7d000

    if-gt p1, v0, :cond_5b

    const v0, 0x7d000

    goto :goto_13

    :cond_5b
    const v0, 0x7d000

    if-le p1, v0, :cond_69

    const v0, 0xc3500

    if-gt p1, v0, :cond_69

    const v0, 0xc3500

    goto :goto_13

    :cond_69
    const v0, 0xc3500

    if-le p1, v0, :cond_77

    const v0, 0xf4240

    if-gt p1, v0, :cond_77

    const v0, 0xf4240

    goto :goto_13

    :cond_77
    const v0, 0xf4240

    if-le p1, v0, :cond_85

    const v0, 0x124f80

    if-gt p1, v0, :cond_85

    const v0, 0x124f80

    goto :goto_13

    :cond_85
    const v0, 0x124f80

    if-le p1, v0, :cond_93

    const v0, 0x16e360

    if-gt p1, v0, :cond_93

    const v0, 0x16e360

    goto :goto_13

    :cond_93
    const v0, 0x16e360

    if-le p1, v0, :cond_a2

    const v0, 0x1e8480

    if-gt p1, v0, :cond_a2

    const v0, 0x1e8480

    goto/16 :goto_13

    :cond_a2
    const v0, 0x1e8480

    if-le p1, v0, :cond_b1

    const v0, 0x4c4b40

    if-gt p1, v0, :cond_b1

    const v0, 0x4c4b40

    goto/16 :goto_13

    :cond_b1
    const v0, 0x4c4b40

    if-le p1, v0, :cond_bb

    if-gt p1, v4, :cond_bb

    move v0, v4

    goto/16 :goto_13

    :cond_bb
    if-le p1, v4, :cond_c0

    move v0, v4

    goto/16 :goto_13

    :cond_c0
    const/4 v0, -0x1

    goto/16 :goto_13
.end method

.method getFileType(I)I
    .registers 3

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_1a

    const/4 v0, -0x1

    :goto_5
    return v0

    :sswitch_6
    const/16 v0, 0xff

    goto :goto_5

    :sswitch_9
    const/4 v0, 0x0

    goto :goto_5

    :sswitch_b
    const/4 v0, 0x1

    goto :goto_5

    :sswitch_d
    const/4 v0, 0x5

    goto :goto_5

    :sswitch_f
    const/16 v0, 0x8

    goto :goto_5

    :sswitch_12
    const/4 v0, 0x3

    goto :goto_5

    :sswitch_14
    const/16 v0, 0xa

    goto :goto_5

    :sswitch_17
    const/4 v0, 0x2

    goto :goto_5

    nop

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_b
        0x2 -> :sswitch_17
        0x3 -> :sswitch_12
        0x5 -> :sswitch_d
        0x8 -> :sswitch_f
        0xa -> :sswitch_14
        0xff -> :sswitch_6
    .end sparse-switch
.end method

.method getFrameRate(I)I
    .registers 3

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_1e

    const/4 v0, -0x1

    :goto_5
    return v0

    :pswitch_6
    const/4 v0, 0x5

    goto :goto_5

    :pswitch_8
    const/16 v0, 0x8

    goto :goto_5

    :pswitch_b
    const/16 v0, 0xa

    goto :goto_5

    :pswitch_e
    const/16 v0, 0xd

    goto :goto_5

    :pswitch_11
    const/16 v0, 0xf

    goto :goto_5

    :pswitch_14
    const/16 v0, 0x14

    goto :goto_5

    :pswitch_17
    const/16 v0, 0x19

    goto :goto_5

    :pswitch_1a
    const/16 v0, 0x1e

    goto :goto_5

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method getGeneratePreview()Z
    .registers 2

    iget-boolean v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    return v0
.end method

.method getMediaItemFileType(I)I
    .registers 3

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_18

    const/4 v0, -0x1

    :goto_5
    return v0

    :sswitch_6
    const/16 v0, 0xff

    goto :goto_5

    :sswitch_9
    const/4 v0, 0x0

    goto :goto_5

    :sswitch_b
    const/4 v0, 0x1

    goto :goto_5

    :sswitch_d
    const/4 v0, 0x5

    goto :goto_5

    :sswitch_f
    const/16 v0, 0x8

    goto :goto_5

    :sswitch_12
    const/16 v0, 0xa

    goto :goto_5

    :sswitch_15
    const/4 v0, 0x2

    goto :goto_5

    nop

    :sswitch_data_18
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_b
        0x2 -> :sswitch_15
        0x5 -> :sswitch_d
        0x8 -> :sswitch_f
        0xa -> :sswitch_12
        0xff -> :sswitch_6
    .end sparse-switch
.end method

.method getMediaItemRenderingMode(I)I
    .registers 3

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_c

    const/4 v0, -0x1

    :goto_5
    return v0

    :pswitch_6
    const/4 v0, 0x2

    goto :goto_5

    :pswitch_8
    const/4 v0, 0x0

    goto :goto_5

    :pswitch_a
    const/4 v0, 0x1

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method native getMediaProperties(Ljava/lang/String;)Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method getPixels(Ljava/lang/String;IIJ)Landroid/graphics/Bitmap;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid input file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getTNAccurateCodecConfig()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->nativeGetPixels(Ljava/lang/String;IIJI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getPixelsFast(Ljava/lang/String;IIJ)Landroid/graphics/Bitmap;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v7, 0x0

    if-nez p1, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getTNFastCodecConfig()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->nativeGetPixelsFast(Ljava/lang/String;IIJI)Landroid/graphics/Bitmap;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_17

    move-result-object v0

    :goto_16
    return-object v0

    :catch_17
    move-exception v8

    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "Runtime exception in getPixelsFast call "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    const/4 v0, 0x1

    if-ne v7, v0, :cond_3a

    :try_start_23
    invoke-virtual {p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getTNAccurateCodecConfig()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->nativeGetPixelsFast(Ljava/lang/String;IIJI)Landroid/graphics/Bitmap;
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_2f} :catch_31

    move-result-object v0

    goto :goto_16

    :catch_31
    move-exception v8

    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "Runtime exception in getPixelsFast call with fallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v8

    :cond_3a
    const/4 v0, 0x0

    goto :goto_16
.end method

.method getPixelsList(Ljava/lang/String;IIJJILcom/lifevibes/videoeditor/MediaItem$GetThumbnailListCallback;)V
    .registers 23

    move/from16 v0, p8

    new-array v10, v0, [I

    sub-long v2, p6, p4

    long-to-int v2, v2

    div-int v6, v2, p8

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mThumbnailListListener:Lcom/lifevibes/videoeditor/MediaItem$GetThumbnailListCallback;

    move-wide/from16 v0, p4

    long-to-int v8, v0

    move-wide/from16 v0, p6

    long-to-int v9, v0

    invoke-virtual {p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getTNAccurateCodecConfig()I

    move-result v11

    iget-object v12, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mThumbnailListListener:Lcom/lifevibes/videoeditor/MediaItem$GetThumbnailListCallback;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    invoke-direct/range {v2 .. v12}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->nativeGetPixelsList(Ljava/lang/String;IIIIII[IILcom/lifevibes/videoeditor/MediaItem$GetThumbnailListCallback;)I

    return-void
.end method

.method getPixelsList(Ljava/lang/String;IIJJI)[Landroid/graphics/Bitmap;
    .registers 22

    move/from16 v0, p8

    new-array v10, v0, [I

    sub-long v2, p6, p4

    long-to-int v2, v2

    div-int v6, v2, p8

    const/4 v12, 0x0

    move-wide/from16 v0, p4

    long-to-int v8, v0

    move-wide/from16 v0, p6

    long-to-int v9, v0

    invoke-virtual {p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getTNAccurateCodecConfig()I

    move-result v11

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    invoke-direct/range {v2 .. v11}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->nativeGetPixelsList(Ljava/lang/String;IIIIII[II)[Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v10, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mThumbnailTime:[I

    return-object v12
.end method

.method getPixelsListFast(Ljava/lang/String;IIJJILcom/lifevibes/videoeditor/MediaItem$GetThumbnailListCallback;)V
    .registers 27

    const/4 v13, 0x0

    add-int/lit8 v2, p2, 0x1

    and-int/lit8 v15, v2, -0x2

    add-int/lit8 v2, p3, 0x1

    and-int/lit8 v14, v2, -0x2

    move/from16 v0, p8

    new-array v10, v0, [I

    sub-long v2, p6, p4

    long-to-int v2, v2

    div-int v6, v2, p8

    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mThumbnailListListener:Lcom/lifevibes/videoeditor/MediaItem$GetThumbnailListCallback;

    move-wide/from16 v0, p4

    long-to-int v8, v0

    move-wide/from16 v0, p6

    long-to-int v9, v0

    :try_start_1e
    invoke-virtual/range {p0 .. p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getTNFastCodecConfig()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mThumbnailListListener:Lcom/lifevibes/videoeditor/MediaItem$GetThumbnailListCallback;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    invoke-virtual/range {v2 .. v12}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->nativeGetPixelsListFastCB(Ljava/lang/String;IIIIII[IILcom/lifevibes/videoeditor/MediaItem$GetThumbnailListCallback;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_33} :catch_52

    :goto_33
    const/4 v2, 0x1

    if-ne v13, v2, :cond_51

    move-wide/from16 v0, p4

    long-to-int v8, v0

    move-wide/from16 v0, p6

    long-to-int v9, v0

    :try_start_3c
    invoke-virtual/range {p0 .. p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getTNAccurateCodecConfig()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mThumbnailListListener:Lcom/lifevibes/videoeditor/MediaItem$GetThumbnailListCallback;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    invoke-virtual/range {v2 .. v12}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->nativeGetPixelsListFastCB(Ljava/lang/String;IIIIII[IILcom/lifevibes/videoeditor/MediaItem$GetThumbnailListCallback;)I
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_51} :catch_5c

    :cond_51
    return-void

    :catch_52
    move-exception v16

    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "Runtime exception in getPixelsListFast call "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    goto :goto_33

    :catch_5c
    move-exception v16

    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "Runtime exception in getPixelsListFast call with fallback"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v16
.end method

.method getPixelsListFast(Ljava/lang/String;IIJJI)[Landroid/util/Pair;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJJI)[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/4 v13, 0x0

    add-int/lit8 v2, p2, 0x1

    and-int/lit8 v17, v2, -0x2

    add-int/lit8 v2, p3, 0x1

    and-int/lit8 v16, v2, -0x2

    mul-int v2, v17, v16

    mul-int/lit8 v20, v2, 0x4

    const/4 v15, 0x0

    const/4 v14, 0x0

    move/from16 v0, p8

    new-array v10, v0, [I

    move/from16 v0, p8

    new-array v12, v0, [Landroid/util/Pair;

    sub-long v2, p6, p4

    long-to-int v2, v2

    div-int v6, v2, p8

    move-wide/from16 v0, p4

    long-to-int v8, v0

    move-wide/from16 v0, p6

    long-to-int v9, v0

    :try_start_28
    invoke-virtual/range {p0 .. p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getTNFastCodecConfig()I

    move-result v11

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    invoke-virtual/range {v2 .. v11}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->nativeGetPixelsListFast(Ljava/lang/String;IIIIII[II)[Landroid/graphics/Bitmap;

    move-result-object v14

    :goto_3a
    move/from16 v0, p8

    if-ge v15, v0, :cond_59

    new-instance v2, Landroid/util/Pair;

    aget v3, v10, v15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v4, v14, v15

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v12, v15
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4d} :catch_50

    add-int/lit8 v15, v15, 0x1

    goto :goto_3a

    :catch_50
    move-exception v21

    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "Runtime exception in getPixelsListFast call "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    :cond_59
    const/4 v2, 0x1

    if-ne v13, v2, :cond_93

    move-wide/from16 v0, p4

    long-to-int v8, v0

    move-wide/from16 v0, p6

    long-to-int v9, v0

    :try_start_62
    invoke-virtual/range {p0 .. p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getTNAccurateCodecConfig()I

    move-result v11

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    invoke-virtual/range {v2 .. v11}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->nativeGetPixelsListFast(Ljava/lang/String;IIIIII[II)[Landroid/graphics/Bitmap;

    move-result-object v14

    :goto_74
    move/from16 v0, p8

    if-ge v15, v0, :cond_93

    new-instance v2, Landroid/util/Pair;

    aget v3, v10, v15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v4, v14, v15

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v12, v15
    :try_end_87
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_87} :catch_8a

    add-int/lit8 v15, v15, 0x1

    goto :goto_74

    :catch_8a
    move-exception v21

    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "Runtime exception in getPixelsListFast call with fallback"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v21

    :cond_93
    return-object v12
.end method

.method getProjectAudioTrackPCMFilePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    return-object v0
.end method

.method getProjectPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTNAccurateCodecConfig()I
    .registers 2

    sget v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTNDecConfigAccurateMode:I

    return v0
.end method

.method public getTNFastCodecConfig()I
    .registers 2

    sget v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTNDecConfigFastMode:I

    return v0
.end method

.method public getVideoCodecType(I)I
    .registers 3

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_12

    :pswitch_4
    const/4 v0, -0x1

    :goto_5
    return v0

    :pswitch_6
    const/4 v0, 0x1

    goto :goto_5

    :pswitch_8
    const/4 v0, 0x4

    goto :goto_5

    :pswitch_a
    const/4 v0, 0x5

    goto :goto_5

    :pswitch_c
    const/4 v0, 0x6

    goto :goto_5

    :pswitch_e
    const/4 v0, 0x2

    goto :goto_5

    :pswitch_10
    const/4 v0, 0x0

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_10
        :pswitch_6
        :pswitch_e
        :pswitch_4
        :pswitch_8
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method initClipSettings(Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    iput-object v1, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    iput-object v1, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutPercent:I

    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutPercent:I

    iput-boolean v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomEnabled:Z

    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentStart:I

    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXStart:I

    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYStart:I

    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentEnd:I

    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXEnd:I

    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYEnd:I

    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbWidth:I

    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbHeight:I

    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipVolumePercentage:I

    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->mNumCuts:I

    return-void
.end method

.method invalidatePcmFile()V
    .registers 3

    iget-object v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    if-eqz v0, :cond_11

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    :cond_11
    return-void
.end method

.method public native nativeFindThumbnailMode(Ljava/lang/String;IJJ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public native nativeGetPixelsFast(Ljava/lang/String;IIJI)Landroid/graphics/Bitmap;
.end method

.method public native nativeGetPixelsListFast(Ljava/lang/String;IIIIII[II)[Landroid/graphics/Bitmap;
.end method

.method public native nativeGetPixelsListFastCB(Ljava/lang/String;IIIIII[IILcom/lifevibes/videoeditor/MediaItem$GetThumbnailListCallback;)I
.end method

.method nativeHelperGetAspectRatio()I
    .registers 2

    iget-object v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditor;

    invoke-interface {v0}, Lcom/lifevibes/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v0

    return v0
.end method

.method public releaseNativeHelper()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->release()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_d

    return-void

    :catch_4
    move-exception v0

    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Illegal State exeption caught in releaseNativeHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_d
    move-exception v0

    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Runtime exeption caught in releaseNativeHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method setAudioflag(Z)V
    .registers 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AudioPcm.pcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 p1, 0x1

    :cond_2e
    iput-boolean p1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    return-void
.end method

.method setFit2ShareFile(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    return-void
.end method

.method stop(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->stopEncoding()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_17

    return-void

    :catch_e
    move-exception v0

    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Illegal state exception in unload settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_17
    move-exception v0

    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Runtime exception in unload settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method stopAudioWaveformExtraction()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->stopExtraction()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_d

    return-void

    :catch_4
    move-exception v0

    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Illegal state exception in unload settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_d
    move-exception v0

    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Runtime exception in unload settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method stopThumbnailList()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->stopThumbnail()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Illegal state exception in stopThumbnail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method
