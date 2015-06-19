.class public Lcom/spotify/mobile/android/core/internal/SoundDriver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# static fields
.field private static final BYTES_PER_SAMPLE:I = 0x2

.field private static final DELAY_IN_WRITES_BEFORE_ENABLING_EQUALIZER:I = 0x20

.field private static final LOGGING_ENABLED:Z = false

.field private static final SPOTIFY_MAX_VOLUME:I = 0xffff

.field private static sSessionToAudioTrackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/media/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private static sSoundDriverListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spotify/mobile/android/core/internal/SoundDriver$SoundDriverListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mBufferSizeInBytes:I

.field private mBytesPerFrame:I

.field private mChannelConfig:I

.field private mCreateFailed:Z

.field private final mDestructionMutex:Ljava/lang/Object;

.field private mEqualizerEnableCountdown:Lcom/spotify/mobile/android/util/ag;

.field private mEqualizerEnableNotifier:Ljava/lang/Runnable;

.field private mFramesBufferedBeforePlay:I

.field private mNativeWrapper:Lcom/spotify/mobile/android/core/internal/SoundDriver$NativeWrapper;

.field private mNotificationHandler:Landroid/os/Handler;

.field private mNotificationHandlerThread:Landroid/os/HandlerThread;

.field private mOpen:Z

.field private mPaused:Z

.field private mPlaying:Z

.field private final mPositionMutex:Ljava/lang/Object;

.field private mSampleRate:I

.field private nThis:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->sSoundDriverListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->sSessionToAudioTrackMap:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mSampleRate:I

    iput v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mChannelConfig:I

    iput v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mBufferSizeInBytes:I

    iput-object v2, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    iput-boolean v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mOpen:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPlaying:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPaused:Z

    iput v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mFramesBufferedBeforePlay:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPositionMutex:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mDestructionMutex:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mCreateFailed:Z

    new-instance v0, Lcom/spotify/mobile/android/core/internal/SoundDriver$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/core/internal/SoundDriver$1;-><init>(Lcom/spotify/mobile/android/core/internal/SoundDriver;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mEqualizerEnableNotifier:Ljava/lang/Runnable;

    new-instance v0, Lcom/spotify/mobile/android/util/ag;

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mEqualizerEnableNotifier:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/ag;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mEqualizerEnableCountdown:Lcom/spotify/mobile/android/util/ag;

    new-instance v0, Lcom/spotify/mobile/android/core/internal/SoundDriver$DefaultNativeWrapper;

    invoke-direct {v0, p0, v2}, Lcom/spotify/mobile/android/core/internal/SoundDriver$DefaultNativeWrapper;-><init>(Lcom/spotify/mobile/android/core/internal/SoundDriver;Lcom/spotify/mobile/android/core/internal/SoundDriver$1;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mNativeWrapper:Lcom/spotify/mobile/android/core/internal/SoundDriver$NativeWrapper;

    return-void
.end method

.method constructor <init>(Lcom/spotify/mobile/android/core/internal/SoundDriver$NativeWrapper;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mSampleRate:I

    iput v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mChannelConfig:I

    iput v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mBufferSizeInBytes:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    iput-boolean v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mOpen:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPlaying:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPaused:Z

    iput v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mFramesBufferedBeforePlay:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPositionMutex:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mDestructionMutex:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mCreateFailed:Z

    new-instance v0, Lcom/spotify/mobile/android/core/internal/SoundDriver$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/core/internal/SoundDriver$1;-><init>(Lcom/spotify/mobile/android/core/internal/SoundDriver;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mEqualizerEnableNotifier:Ljava/lang/Runnable;

    new-instance v0, Lcom/spotify/mobile/android/util/ag;

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mEqualizerEnableNotifier:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/ag;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mEqualizerEnableCountdown:Lcom/spotify/mobile/android/util/ag;

    iput-object p1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mNativeWrapper:Lcom/spotify/mobile/android/core/internal/SoundDriver$NativeWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/spotify/mobile/android/core/internal/SoundDriver;)Landroid/media/AudioTrack;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->sSoundDriverListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/spotify/mobile/android/core/internal/SoundDriver;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->onBufferUnderrun()V

    return-void
.end method

.method static synthetic access$300(Lcom/spotify/mobile/android/core/internal/SoundDriver;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->onDestroy()V

    return-void
.end method

.method static synthetic access$400(Lcom/spotify/mobile/android/core/internal/SoundDriver;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->onFlush()V

    return-void
.end method

.method public static addListener(Lcom/spotify/mobile/android/core/internal/SoundDriver$SoundDriverListener;)V
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->sSoundDriverListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createAudioTrack()V
    .registers 8

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mOpen:Z

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    iget v2, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mSampleRate:I

    iget v3, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mChannelConfig:I

    const/4 v4, 0x2

    iget v5, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mBufferSizeInBytes:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-nez v1, :cond_1c

    iput-boolean v6, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mCreateFailed:Z

    goto :goto_5

    :cond_1c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mCreateFailed:Z

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0, v0}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    sget-object v0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->sSessionToAudioTrackMap:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->sSoundDriverListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/core/internal/SoundDriver$SoundDriverListener;

    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/spotify/mobile/android/core/internal/SoundDriver$SoundDriverListener;->onAudioTrackCreated(I)V

    goto :goto_44

    :cond_5a
    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mEqualizerEnableCountdown:Lcom/spotify/mobile/android/util/ag;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ag;->b()V

    goto :goto_5
.end method

.method private destroyAudioTrack()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mDestructionMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    sget-object v0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->sSoundDriverListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/core/internal/SoundDriver$SoundDriverListener;

    iget-object v3, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/spotify/mobile/android/core/internal/SoundDriver$SoundDriverListener;->onAudioTrackDestroyed(I)V
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_24

    goto :goto_e

    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_27
    :try_start_27
    sget-object v0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->sSessionToAudioTrackMap:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->delete(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPlaying:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_27 .. :try_end_50} :catchall_24

    goto :goto_4
.end method

.method private native onBufferUnderrun()V
.end method

.method private native onDestroy()V
.end method

.method private native onFlush()V
.end method

.method public static removeListener(Lcom/spotify/mobile/android/core/internal/SoundDriver$SoundDriverListener;)V
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->sSoundDriverListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static startDuckingAudio(I)V
    .registers 4

    sget-object v0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->sSessionToAudioTrackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :cond_14
    return-void
.end method

.method public static stopDuckingAudio(I)V
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->sSessionToAudioTrackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :cond_11
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iput-boolean v3, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPlaying:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPaused:Z

    iput-boolean v3, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mOpen:Z

    invoke-direct {p0}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->destroyAudioTrack()V

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mNativeWrapper:Lcom/spotify/mobile/android/core/internal/SoundDriver$NativeWrapper;

    invoke-interface {v0}, Lcom/spotify/mobile/android/core/internal/SoundDriver$NativeWrapper;->onDestroy()V

    :try_start_16
    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mNotificationHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mNotificationHandlerThread:Landroid/os/HandlerThread;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_22} :catch_27

    :goto_22
    iput-object v4, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mNotificationHandlerThread:Landroid/os/HandlerThread;

    iput-object v4, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mNotificationHandler:Landroid/os/Handler;

    goto :goto_6

    :catch_27
    move-exception v0

    const-string v1, "Interrupted while waiting for notification thread to join"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_22
.end method

.method public flush()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPlaying:Z

    iput v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mFramesBufferedBeforePlay:I

    iget-boolean v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mCreateFailed:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->createAudioTrack()V

    :goto_c
    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mNativeWrapper:Lcom/spotify/mobile/android/core/internal/SoundDriver$NativeWrapper;

    invoke-interface {v0}, Lcom/spotify/mobile/android/core/internal/SoundDriver$NativeWrapper;->onFlush()V

    :cond_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->destroyAudioTrack()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->createAudioTrack()V

    goto :goto_c
.end method

.method getAudioTrack()Landroid/media/AudioTrack;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method public getFreeSize()I
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mBufferSizeInBytes:I

    iget v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mBytesPerFrame:I

    invoke-virtual {p0}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->getQueuedSize()I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_5
.end method

.method public getPosition()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5
.end method

.method public getQueuedSize()I
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPositionMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-boolean v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPlaying:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getNotificationMarkerPosition()I

    move-result v0

    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    sub-int/2addr v0, v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1c

    goto :goto_5

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1f
    :try_start_1f
    iget v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mFramesBufferedBeforePlay:I

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_1c

    goto :goto_5
.end method

.method public getVolume()I
    .registers 2

    const v0, 0xffff

    return v0
.end method

.method public isPlaying()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-boolean v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPlaying:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->getQueuedSize()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .registers 6

    iget-boolean v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mOpen:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPositionMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-boolean v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mOpen:Z

    if-nez v0, :cond_11

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_4

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mDestructionMutex:Ljava/lang/Object;

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_e

    :try_start_14
    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/dv;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_31

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_e

    goto :goto_4

    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getNotificationMarkerPosition()I

    move-result v3

    if-lt v0, v3, :cond_2e

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mNativeWrapper:Lcom/spotify/mobile/android/core/internal/SoundDriver$NativeWrapper;

    invoke-interface {v0}, Lcom/spotify/mobile/android/core/internal/SoundDriver$NativeWrapper;->onBufferUnderrun()V

    :cond_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_31

    :try_start_2f
    monitor-exit v1

    goto :goto_4

    :catchall_31
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_e
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .registers 2

    return-void
.end method

.method public open(II)V
    .registers 7

    const/4 v3, 0x1

    const/16 v0, -0x10

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iput p1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mSampleRate:I

    if-ne p2, v3, :cond_52

    const/4 v0, 0x4

    :goto_b
    iput v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mChannelConfig:I

    mul-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mBytesPerFrame:I

    iget v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mBytesPerFrame:I

    mul-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mBufferSizeInBytes:I

    iget v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mBufferSizeInBytes:I

    iget v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mChannelConfig:I

    const/4 v2, 0x2

    invoke-static {p1, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mBufferSizeInBytes:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SoundDriverNotificationThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mNotificationHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mNotificationHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mNotificationHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mNotificationHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mOpen:Z

    invoke-direct {p0}, Lcom/spotify/mobile/android/core/internal/SoundDriver;->createAudioTrack()V

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPositionMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4a
    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_55

    return-void

    :cond_52
    const/16 v0, 0xc

    goto :goto_b

    :catchall_55
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setPaused(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPaused:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPaused:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    goto :goto_6

    :cond_11
    iget-boolean v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPlaying:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    goto :goto_6
.end method

.method public setVolume(I)V
    .registers 2

    return-void
.end method

.method public startPlayback()V
    .registers 4

    iget-boolean v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPlaying:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPlaying:Z

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-boolean v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPaused:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPositionMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    iget v2, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mFramesBufferedBeforePlay:I

    invoke-virtual {v0, v2}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mFramesBufferedBeforePlay:I

    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_24

    goto :goto_9

    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stopPlayback()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    goto :goto_4
.end method

.method public write([BI)I
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1, v0, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    if-lez v1, :cond_5

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mEqualizerEnableCountdown:Lcom/spotify/mobile/android/util/ag;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ag;->a()V

    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPositionMutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_16
    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getNotificationMarkerPosition()I

    move-result v3

    iget v4, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mBytesPerFrame:I

    div-int v4, v1, v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    iget-boolean v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mPlaying:Z

    if-nez v0, :cond_33

    iget v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mFramesBufferedBeforePlay:I

    iget v3, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mBytesPerFrame:I

    div-int v3, v1, v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/spotify/mobile/android/core/internal/SoundDriver;->mFramesBufferedBeforePlay:I

    :cond_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_36

    move v0, v1

    goto :goto_5

    :catchall_36
    move-exception v0

    monitor-exit v2

    throw v0
.end method
