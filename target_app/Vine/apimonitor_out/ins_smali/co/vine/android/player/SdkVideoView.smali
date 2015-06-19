.class public Lco/vine/android/player/SdkVideoView;
.super Landroid/view/TextureView;
.source "SdkVideoView.java"
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Lco/vine/android/player/VideoViewInterface;
.implements Lcom/google/android/exoplayer/ExoPlayer$Listener;
.implements Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
.field private static final DISABLE_OPEN_ON_SEPARATE_THREAD:Z = false
.field private static final LOCK:[I = null
.field private static OPEN_ON_MAIN_THREAD:Z = false
.field private static final OPEN_ON_MAIN_THREAD_THRESHOLD:J = 0x28L
.field public static final PREPARE_SUCCESS_LOG:Ljava/lang/String; = "Successfully prepared the new MediaPlayer."
.field public static final RENDERER_COUNT:I = 0x2
.field public static final STATE_BUFFERING:I = 0x3
.field public static final STATE_ERROR:I = -0x1
.field public static final STATE_IDLE:I = 0x1
.field public static final STATE_PAUSED:I = 0x7
.field public static final STATE_PLAYBACK_COMPLETED:I = 0x5
.field public static final STATE_PLAYING:I = 0x6
.field public static final STATE_PREPARED:I = 0x4
.field public static final STATE_PREPARING:I = 0x2
.field private static final TAG:Ljava/lang/String;
.field private static final USE_EXO:Z
.field private static currentState:I
.field private static currentUri:Landroid/net/Uri;
.field private static currentView:Landroid/view/View;
.field private static sTotalVideoViewed:I
.field private static singlePlayer:Landroid/media/MediaPlayer;
.field private final SINGLE_PLAYER:Z
.field private mAttributes:Landroid/util/AttributeSet;
.field private mAudioSession:I
.field private mAutoPlayOnPrepared:Z
.field private mAutoShow:Z
.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
.field private mContext:Landroid/content/Context;
.field private mCurrentBufferPercentage:I
.field public mCurrentState:I
.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
.field private mExoAudioRenderer:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
.field private mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
.field private mExoVideoRenderer:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
.field private final mHandler:Landroid/os/Handler;
.field private mHasNotRetriedBefore:Z
.field private mHeaders:Ljava/util/Map;
.field private mIsPrepared:Z
.field private final mLock:[I
.field private mLooping:Z
.field private mMediaController:Landroid/widget/MediaController;
.field private mMediaPlayer:Landroid/media/MediaPlayer;
.field private mMuted:Z
.field private mOnCompletionListener:Lco/vine/android/player/VideoViewInterface$OnCompletionListener;
.field private mOnErrorListener:Lco/vine/android/player/VideoViewInterface$OnErrorListener;
.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
.field private final mOnOpenErrorListener:Ljava/lang/Runnable;
.field private mOnPreparedListener:Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
.field public final mOpenRunnable:Ljava/lang/Runnable;
.field private mOpenThread:Ljava/lang/Thread;
.field private mPath:Ljava/lang/String;
.field private mPlayingPosition:I
.field  mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
.field private mReportOpenError:Z
.field private mSHCallback:Landroid/view/TextureView$SurfaceTextureListener;
.field private final mSaveVideoClicker:Lco/vine/android/player/SaveVideoClicker;
.field private mSeekWhenPrepared:I
.field final mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.field private mSurfaceHeight:I
.field private mSurfaceHolder:Landroid/view/Surface;
.field private mSurfaceReadyListener:Lco/vine/android/player/SdkVideoView$SurfaceReadyListener;
.field private mSurfaceWidth:I
.field private mTargetState:I
.field private mUri:Landroid/net/Uri;
.field protected mVideoHeight:I
.field protected mVideoWidth:I
.field private mWasMuted:Z
.method static constructor <clinit>()V
.registers 4
const/4 v1, 0x1
const/4 v2, 0x0
const-class v0, Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0x10
if-ne v0, v3, :cond_21
move v0, v1
:goto_11
sput-boolean v0, Lco/vine/android/player/SdkVideoView;->DISABLE_OPEN_ON_SEPARATE_THREAD:Z
sput-boolean v2, Lco/vine/android/player/SdkVideoView;->OPEN_ON_MAIN_THREAD:Z
sput-boolean v2, Lco/vine/android/player/SdkVideoView;->USE_EXO:Z
const/4 v0, 0x0
sput-object v0, Lco/vine/android/player/SdkVideoView;->singlePlayer:Landroid/media/MediaPlayer;
sput v1, Lco/vine/android/player/SdkVideoView;->currentState:I
new-array v0, v2, [I
sput-object v0, Lco/vine/android/player/SdkVideoView;->LOCK:[I
return-void
:cond_21
move v0, v2
goto :goto_11
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
iput v2, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I
iput v2, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I
const/4 v0, -0x1
iput v0, p0, Lco/vine/android/player/SdkVideoView;->mPlayingPosition:I
new-array v0, v1, [I
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mLock:[I
iput-boolean v1, p0, Lco/vine/android/player/SdkVideoView;->mMuted:Z
iput-boolean v1, p0, Lco/vine/android/player/SdkVideoView;->mWasMuted:Z
iput v1, p0, Lco/vine/android/player/SdkVideoView;->mAudioSession:I
new-instance v0, Lco/vine/android/player/SaveVideoClicker;
invoke-direct {v0}, Lco/vine/android/player/SaveVideoClicker;-><init>()V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSaveVideoClicker:Lco/vine/android/player/SaveVideoClicker;
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mHandler:Landroid/os/Handler;
new-instance v0, Lco/vine/android/player/SdkVideoView$1;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$1;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mOnOpenErrorListener:Ljava/lang/Runnable;
new-instance v0, Lco/vine/android/player/SdkVideoView$2;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$2;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mOpenRunnable:Ljava/lang/Runnable;
new-instance v0, Lco/vine/android/player/SdkVideoView$4;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$4;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
new-instance v0, Lco/vine/android/player/SdkVideoView$5;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$5;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
new-instance v0, Lco/vine/android/player/SdkVideoView$6;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$6;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
new-instance v0, Lco/vine/android/player/SdkVideoView$7;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$7;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
new-instance v0, Lco/vine/android/player/SdkVideoView$8;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$8;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
new-instance v0, Lco/vine/android/player/SdkVideoView$9;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$9;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSHCallback:Landroid/view/TextureView$SurfaceTextureListener;
invoke-static {p1}, Lco/vine/android/util/SystemUtil;->isSinglePlayerEnabled(Landroid/content/Context;)Z
move-result v0
iput-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->SINGLE_PLAYER:Z
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->initVideoView()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
iput v2, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I
iput v2, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I
const/4 v0, -0x1
iput v0, p0, Lco/vine/android/player/SdkVideoView;->mPlayingPosition:I
new-array v0, v1, [I
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mLock:[I
iput-boolean v1, p0, Lco/vine/android/player/SdkVideoView;->mMuted:Z
iput-boolean v1, p0, Lco/vine/android/player/SdkVideoView;->mWasMuted:Z
iput v1, p0, Lco/vine/android/player/SdkVideoView;->mAudioSession:I
new-instance v0, Lco/vine/android/player/SaveVideoClicker;
invoke-direct {v0}, Lco/vine/android/player/SaveVideoClicker;-><init>()V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSaveVideoClicker:Lco/vine/android/player/SaveVideoClicker;
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mHandler:Landroid/os/Handler;
new-instance v0, Lco/vine/android/player/SdkVideoView$1;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$1;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mOnOpenErrorListener:Ljava/lang/Runnable;
new-instance v0, Lco/vine/android/player/SdkVideoView$2;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$2;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mOpenRunnable:Ljava/lang/Runnable;
new-instance v0, Lco/vine/android/player/SdkVideoView$4;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$4;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
new-instance v0, Lco/vine/android/player/SdkVideoView$5;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$5;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
new-instance v0, Lco/vine/android/player/SdkVideoView$6;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$6;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
new-instance v0, Lco/vine/android/player/SdkVideoView$7;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$7;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
new-instance v0, Lco/vine/android/player/SdkVideoView$8;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$8;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
new-instance v0, Lco/vine/android/player/SdkVideoView$9;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$9;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSHCallback:Landroid/view/TextureView$SurfaceTextureListener;
invoke-static {p1}, Lco/vine/android/util/SystemUtil;->isSinglePlayerEnabled(Landroid/content/Context;)Z
move-result v0
iput-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->SINGLE_PLAYER:Z
iput-object p2, p0, Lco/vine/android/player/SdkVideoView;->mAttributes:Landroid/util/AttributeSet;
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->initVideoView()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
iput v2, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I
iput v2, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I
const/4 v0, -0x1
iput v0, p0, Lco/vine/android/player/SdkVideoView;->mPlayingPosition:I
new-array v0, v1, [I
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mLock:[I
iput-boolean v1, p0, Lco/vine/android/player/SdkVideoView;->mMuted:Z
iput-boolean v1, p0, Lco/vine/android/player/SdkVideoView;->mWasMuted:Z
iput v1, p0, Lco/vine/android/player/SdkVideoView;->mAudioSession:I
new-instance v0, Lco/vine/android/player/SaveVideoClicker;
invoke-direct {v0}, Lco/vine/android/player/SaveVideoClicker;-><init>()V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSaveVideoClicker:Lco/vine/android/player/SaveVideoClicker;
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mHandler:Landroid/os/Handler;
new-instance v0, Lco/vine/android/player/SdkVideoView$1;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$1;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mOnOpenErrorListener:Ljava/lang/Runnable;
new-instance v0, Lco/vine/android/player/SdkVideoView$2;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$2;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mOpenRunnable:Ljava/lang/Runnable;
new-instance v0, Lco/vine/android/player/SdkVideoView$4;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$4;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
new-instance v0, Lco/vine/android/player/SdkVideoView$5;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$5;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
new-instance v0, Lco/vine/android/player/SdkVideoView$6;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$6;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
new-instance v0, Lco/vine/android/player/SdkVideoView$7;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$7;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
new-instance v0, Lco/vine/android/player/SdkVideoView$8;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$8;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
new-instance v0, Lco/vine/android/player/SdkVideoView$9;
invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$9;-><init>(Lco/vine/android/player/SdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSHCallback:Landroid/view/TextureView$SurfaceTextureListener;
invoke-static {p1}, Lco/vine/android/util/SystemUtil;->isSinglePlayerEnabled(Landroid/content/Context;)Z
move-result v0
iput-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->SINGLE_PLAYER:Z
iput-object p2, p0, Lco/vine/android/player/SdkVideoView;->mAttributes:Landroid/util/AttributeSet;
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->initVideoView()V
return-void
.end method
.method static synthetic access$000(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer;
.registers 2
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v0
return-object v0
.end method
.method static synthetic access$100(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
.registers 2
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
return-object v0
.end method
.method static synthetic access$1000()Z
.registers 1
sget-boolean v0, Lco/vine/android/player/SdkVideoView;->USE_EXO:Z
return v0
.end method
.method static synthetic access$1100(Lco/vine/android/player/SdkVideoView;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->openExoPlayer()V
return-void
.end method
.method static synthetic access$1200(Lco/vine/android/player/SdkVideoView;)Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
.registers 2
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mExoVideoRenderer:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
return-object v0
.end method
.method static synthetic access$1300(Lco/vine/android/player/SdkVideoView;)Lcom/google/android/exoplayer/ExoPlayer;
.registers 2
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
return-object v0
.end method
.method static synthetic access$1400(Lco/vine/android/player/SdkVideoView;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->openMediaPlayer()V
return-void
.end method
.method static synthetic access$1502(Lco/vine/android/player/SdkVideoView;Ljava/lang/Thread;)Ljava/lang/Thread;
.registers 2
iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mOpenThread:Ljava/lang/Thread;
return-object p1
.end method
.method static synthetic access$1601(Lco/vine/android/player/SdkVideoView;Z)V
.registers 2
invoke-super {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V
return-void
.end method
.method static synthetic access$1700(Lco/vine/android/player/SdkVideoView;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mAutoPlayOnPrepared:Z
return v0
.end method
.method static synthetic access$1800(Lco/vine/android/player/SdkVideoView;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->onPlayerPrepared()V
return-void
.end method
.method static synthetic access$1900(Lco/vine/android/player/SdkVideoView;)Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
.registers 2
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mOnPreparedListener:Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
return-object v0
.end method
.method static synthetic access$200()[I
.registers 1
sget-object v0, Lco/vine/android/player/SdkVideoView;->LOCK:[I
return-object v0
.end method
.method static synthetic access$2000(Lco/vine/android/player/SdkVideoView;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->onComplete()V
return-void
.end method
.method static synthetic access$2100(Lco/vine/android/player/SdkVideoView;II)Z
.registers 4
invoke-direct {p0, p1, p2}, Lco/vine/android/player/SdkVideoView;->onError(II)Z
move-result v0
return v0
.end method
.method static synthetic access$2202(Lco/vine/android/player/SdkVideoView;I)I
.registers 2
iput p1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentBufferPercentage:I
return p1
.end method
.method static synthetic access$2300(Lco/vine/android/player/SdkVideoView;)Lco/vine/android/player/SdkVideoView$SurfaceReadyListener;
.registers 2
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceReadyListener:Lco/vine/android/player/SdkVideoView$SurfaceReadyListener;
return-object v0
.end method
.method static synthetic access$2400(Lco/vine/android/player/SdkVideoView;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->openVideo()V
return-void
.end method
.method static synthetic access$2502(Lco/vine/android/player/SdkVideoView;I)I
.registers 2
iput p1, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceWidth:I
return p1
.end method
.method static synthetic access$2602(Lco/vine/android/player/SdkVideoView;I)I
.registers 2
iput p1, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHeight:I
return p1
.end method
.method static synthetic access$2700(Lco/vine/android/player/SdkVideoView;)I
.registers 2
iget v0, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I
return v0
.end method
.method static synthetic access$2800(Lco/vine/android/player/SdkVideoView;)Z
.registers 2
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->hasPlayer()Z
move-result v0
return v0
.end method
.method static synthetic access$2900(Lco/vine/android/player/SdkVideoView;)I
.registers 2
iget v0, p0, Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I
return v0
.end method
.method static synthetic access$3000(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;
.registers 2
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
return-object v0
.end method
.method static synthetic access$302(Landroid/view/View;)Landroid/view/View;
.registers 1
sput-object p0, Lco/vine/android/player/SdkVideoView;->currentView:Landroid/view/View;
return-object p0
.end method
.method static synthetic access$400(Lco/vine/android/player/SdkVideoView;)Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mUri:Landroid/net/Uri;
return-object v0
.end method
.method static synthetic access$500()Ljava/lang/String;
.registers 1
sget-object v0, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$600(Lco/vine/android/player/SdkVideoView;)Landroid/view/Surface;
.registers 2
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHolder:Landroid/view/Surface;
return-object v0
.end method
.method static synthetic access$602(Lco/vine/android/player/SdkVideoView;Landroid/view/Surface;)Landroid/view/Surface;
.registers 2
iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHolder:Landroid/view/Surface;
return-object p1
.end method
.method static synthetic access$700(Lco/vine/android/player/SdkVideoView;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mAutoShow:Z
return v0
.end method
.method static synthetic access$800(Lco/vine/android/player/SdkVideoView;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$900(Lco/vine/android/player/SdkVideoView;Z)V
.registers 2
invoke-direct {p0, p1}, Lco/vine/android/player/SdkVideoView;->release(Z)V
return-void
.end method
.method private attachMediaController()V
.registers 4
iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
if-eqz v1, :cond_2c
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->hasPlayer()Z
move-result v1
if-eqz v1, :cond_2c
iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->getParent()Landroid/view/ViewParent;
move-result-object v1
instance-of v1, v1, Landroid/view/View;
if-eqz v1, :cond_2d
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->getParent()Landroid/view/ViewParent;
move-result-object v1
check-cast v1, Landroid/view/View;
move-object v0, v1
:goto_1e
iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V
iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z
move-result v2
invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V
:cond_2c
return-void
:cond_2d
move-object v0, p0
goto :goto_1e
.end method
.method private getCurrentState()I
.registers 2
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->SINGLE_PLAYER:Z
if-eqz v0, :cond_7
sget v0, Lco/vine/android/player/SdkVideoView;->currentState:I
:goto_6
return v0
:cond_7
iget v0, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I
goto :goto_6
.end method
.method public static getCurrentUri()Landroid/net/Uri;
.registers 1
sget-object v0, Lco/vine/android/player/SdkVideoView;->currentUri:Landroid/net/Uri;
return-object v0
.end method
.method private getPlayer()Landroid/media/MediaPlayer;
.registers 2
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->SINGLE_PLAYER:Z
if-eqz v0, :cond_7
sget-object v0, Lco/vine/android/player/SdkVideoView;->singlePlayer:Landroid/media/MediaPlayer;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
goto :goto_6
.end method
.method public static getViewStateFromExoState(I)I
.registers 2
packed-switch p0, :pswitch_data_10
const/4 v0, -0x1
:goto_4
return v0
:pswitch_5
const/4 v0, 0x1
goto :goto_4
:pswitch_7
const/4 v0, 0x2
goto :goto_4
:pswitch_9
const/4 v0, 0x3
goto :goto_4
:pswitch_b
const/4 v0, 0x5
goto :goto_4
:pswitch_d
const/4 v0, 0x4
goto :goto_4
nop
:pswitch_data_10
.packed-switch 0x1
:pswitch_5
:pswitch_7
:pswitch_9
:pswitch_b
:pswitch_d
.end packed-switch
.end method
.method private hasPlayer()Z
.registers 2
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v0
if-nez v0, :cond_a
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
if-eqz v0, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method private initVideoView()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x1
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->getContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mContext:Landroid/content/Context;
iput v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I
iput v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSHCallback:Landroid/view/TextureView$SurfaceTextureListener;
invoke-virtual {p0, v0}, Lco/vine/android/player/SdkVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
invoke-virtual {p0, v1}, Lco/vine/android/player/SdkVideoView;->setFocusable(Z)V
invoke-virtual {p0, v1}, Lco/vine/android/player/SdkVideoView;->setFocusableInTouchMode(Z)V
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->requestFocus()Z
iput v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I
return-void
.end method
.method private onComplete()V
.registers 2
const/4 v0, 0x5
invoke-direct {p0, v0}, Lco/vine/android/player/SdkVideoView;->setCurrentState(I)V
iput v0, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
if-eqz v0, :cond_f
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V
:cond_f
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mOnCompletionListener:Lco/vine/android/player/VideoViewInterface$OnCompletionListener;
if-eqz v0, :cond_18
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mOnCompletionListener:Lco/vine/android/player/VideoViewInterface$OnCompletionListener;
invoke-interface {v0, p0}, Lco/vine/android/player/VideoViewInterface$OnCompletionListener;->onCompletion(Lco/vine/android/player/VideoViewInterface;)V
:cond_18
return-void
.end method
.method private onError(II)Z
.registers 10
const/4 v0, 0x1
const/4 v1, 0x0
const/4 v6, -0x1
const-string v2, "Error: {}, {}, {}, {}."
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/Object;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v1
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v0
const/4 v4, 0x2
aput-object p0, v3, v4
const/4 v4, 0x3
iget-object v5, p0, Lco/vine/android/player/SdkVideoView;->mPath:Ljava/lang/String;
aput-object v5, v3, v4
invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, v6}, Lco/vine/android/player/SdkVideoView;->setCurrentState(I)V
iput v6, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I
const/4 v2, 0x0
iput-object v2, p0, Lco/vine/android/player/SdkVideoView;->mPath:Ljava/lang/String;
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
if-eqz v2, :cond_30
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V
:cond_30
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mOnErrorListener:Lco/vine/android/player/VideoViewInterface$OnErrorListener;
if-eqz v2, :cond_3d
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mOnErrorListener:Lco/vine/android/player/VideoViewInterface$OnErrorListener;
invoke-interface {v2, p0, p1, p2}, Lco/vine/android/player/VideoViewInterface$OnErrorListener;->onError(Lco/vine/android/player/VideoViewInterface;II)Z
move-result v2
if-eqz v2, :cond_3d
:goto_3c
return v0
:cond_3d
move v0, v1
goto :goto_3c
.end method
.method private onPlayerPrepared()V
.registers 5
const/4 v3, 0x6
const/4 v2, 0x1
const/4 v1, 0x4
invoke-direct {p0, v1}, Lco/vine/android/player/SdkVideoView;->setCurrentState(I)V
iput-boolean v2, p0, Lco/vine/android/player/SdkVideoView;->mIsPrepared:Z
iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
if-eqz v1, :cond_11
iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V
:cond_11
iget v0, p0, Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I
if-eqz v0, :cond_18
invoke-virtual {p0, v0}, Lco/vine/android/player/SdkVideoView;->seekTo(I)V
:cond_18
iget v1, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I
if-eqz v1, :cond_56
iget v1, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I
if-eqz v1, :cond_56
iget v1, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceWidth:I
iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I
if-ne v1, v2, :cond_3c
iget v1, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHeight:I
iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I
if-ne v1, v2, :cond_3c
iget v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I
if-ne v1, v3, :cond_3d
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->start()V
iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
if-eqz v1, :cond_3c
iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v1}, Landroid/widget/MediaController;->show()V
:goto_3c
:cond_3c
return-void
:cond_3d
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isPlaying()Z
move-result v1
if-nez v1, :cond_3c
if-nez v0, :cond_4b
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->getCurrentPosition()I
move-result v1
if-lez v1, :cond_3c
:cond_4b
iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
if-eqz v1, :cond_3c
iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V
goto :goto_3c
:cond_56
iget v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I
if-ne v1, v3, :cond_3c
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->start()V
goto :goto_3c
.end method
.method private openExoPlayer()V
.registers 14
const/4 v12, -0x1
const/4 v11, 0x0
const/4 v10, 0x2
const/4 v9, 0x1
const/4 v2, 0x2
const/16 v3, 0x3e8
const/16 v4, 0x1388
:try_start_9
invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer/ExoPlayer$Factory;->newInstance(III)Lcom/google/android/exoplayer/ExoPlayer;
move-result-object v2
iput-object v2, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
invoke-virtual {v2, p0}, Lcom/google/android/exoplayer/ExoPlayer;->addListener(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->attachMediaController()V
new-instance v1, Lcom/google/android/exoplayer/FrameworkSampleSource;
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mContext:Landroid/content/Context;
iget-object v3, p0, Lco/vine/android/player/SdkVideoView;->mUri:Landroid/net/Uri;
const/4 v4, 0x0
const/4 v5, 0x2
invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/exoplayer/FrameworkSampleSource;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Object;I)V
new-instance v0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
const/4 v2, 0x1
const/4 v3, 0x0
iget-object v4, p0, Lco/vine/android/player/SdkVideoView;->mHandler:Landroid/os/Handler;
const/16 v6, 0x32
move-object v5, p0
invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/FrameworkSampleSource;IILandroid/os/Handler;Lco/vine/android/player/SdkVideoView;I)V
new-instance v7, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
invoke-direct {v7, v1}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/FrameworkSampleSource;)V
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mExoVideoRenderer:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
iput-object v7, p0, Lco/vine/android/player/SdkVideoView;->mExoAudioRenderer:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
const/4 v2, 0x2
invoke-direct {p0, v2}, Lco/vine/android/player/SdkVideoView;->setCurrentState(I)V
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
invoke-virtual {v2, v0, v7}, Lcom/google/android/exoplayer/ExoPlayer;->prepare(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;)V
const-string v2, "videosViewed"
sget v3, Lco/vine/android/player/SdkVideoView;->sTotalVideoViewed:I
add-int/lit8 v3, v3, 0x1
sput v3, Lco/vine/android/player/SdkVideoView;->sTotalVideoViewed:I
invoke-static {v2, v3}, Lco/vine/android/util/CrashUtil;->set(Ljava/lang/String;I)V
sget-object v2, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;
const-string v3, "Successfully prepared the new MediaPlayer."
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget-boolean v2, p0, Lco/vine/android/player/SdkVideoView;->mAutoPlayOnPrepared:Z
if-eqz v2, :cond_5c
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
const/4 v3, 0x1
invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V
:cond_5c
sget-object v2, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;
const-string v3, "This is a exo player success."
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:try_end_63
.catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_63} :catch_64
.catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_63} :catch_64
.catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_63} :catch_64
:goto_63
return-void
:catch_64
move-exception v8
iget-boolean v2, p0, Lco/vine/android/player/SdkVideoView;->mReportOpenError:Z
if-eqz v2, :cond_7a
const-string v2, "Exo Unable to open content {}, {}."
new-array v3, v10, [Ljava/lang/Object;
iget-object v4, p0, Lco/vine/android/player/SdkVideoView;->mUri:Landroid/net/Uri;
aput-object v4, v3, v11
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->getTag()Ljava/lang/Object;
move-result-object v4
aput-object v4, v3, v9
invoke-static {v8, v2, v3}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
:cond_7a
invoke-direct {p0, v12}, Lco/vine/android/player/SdkVideoView;->setCurrentState(I)V
iput v12, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I
invoke-direct {p0, v9, v11}, Lco/vine/android/player/SdkVideoView;->onError(II)Z
goto :goto_63
.end method
.method private openMediaPlayer()V
.registers 14
const/4 v12, 0x2
const/4 v11, -0x1
const/4 v7, 0x0
const/4 v8, 0x1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
iget-boolean v6, p0, Lco/vine/android/player/SdkVideoView;->SINGLE_PLAYER:Z
if-eqz v6, :cond_17
sget-object v6, Lco/vine/android/player/SdkVideoView;->singlePlayer:Landroid/media/MediaPlayer;
if-nez v6, :cond_17
new-instance v6, Landroid/media/MediaPlayer;
invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V
sput-object v6, Lco/vine/android/player/SdkVideoView;->singlePlayer:Landroid/media/MediaPlayer;
:cond_17
:try_start_17
iget-boolean v6, p0, Lco/vine/android/player/SdkVideoView;->SINGLE_PLAYER:Z
if-nez v6, :cond_23
new-instance v6, Landroid/media/MediaPlayer;
invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V
invoke-direct {p0, v6}, Lco/vine/android/player/SdkVideoView;->setPlayer(Landroid/media/MediaPlayer;)V
:cond_23
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v1
iget v6, p0, Lco/vine/android/player/SdkVideoView;->mAudioSession:I
if-eqz v6, :cond_b1
iget v6, p0, Lco/vine/android/player/SdkVideoView;->mAudioSession:I
invoke-virtual {v1, v6}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V
:goto_30
iget-object v6, p0, Lco/vine/android/player/SdkVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
invoke-virtual {v1, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
iget-object v6, p0, Lco/vine/android/player/SdkVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
invoke-virtual {v1, v6}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
iget-object v6, p0, Lco/vine/android/player/SdkVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
invoke-virtual {v1, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
iget-object v6, p0, Lco/vine/android/player/SdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
invoke-virtual {v1, v6}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
iget-object v6, p0, Lco/vine/android/player/SdkVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
invoke-virtual {v1, v6}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
iget-object v6, p0, Lco/vine/android/player/SdkVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
invoke-virtual {v1, v6}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
const/4 v6, 0x0
iput v6, p0, Lco/vine/android/player/SdkVideoView;->mCurrentBufferPercentage:I
iget-object v6, p0, Lco/vine/android/player/SdkVideoView;->mContext:Landroid/content/Context;
iget-object v9, p0, Lco/vine/android/player/SdkVideoView;->mUri:Landroid/net/Uri;
iget-object v10, p0, Lco/vine/android/player/SdkVideoView;->mHeaders:Ljava/util/Map;
invoke-virtual {v1, v6, v9, v10}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
iget-object v6, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHolder:Landroid/view/Surface;
invoke-virtual {v1, v6}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
iget-boolean v6, p0, Lco/vine/android/player/SdkVideoView;->mLooping:Z
if-eqz v6, :cond_67
const/4 v6, 0x1
invoke-virtual {v1, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V
:cond_67
const/4 v6, 0x1
invoke-virtual {p0, v6}, Lco/vine/android/player/SdkVideoView;->setKeepScreenOn(Z)V
const/4 v6, 0x3
invoke-virtual {v1, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
iget-boolean v6, p0, Lco/vine/android/player/SdkVideoView;->mMuted:Z
if-eqz v6, :cond_78
const/4 v6, 0x0
const/4 v9, 0x0
invoke-virtual {v1, v6, v9}, Landroid/media/MediaPlayer;->setVolume(FF)V
:cond_78
invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
const-string v6, "videosViewed"
sget v9, Lco/vine/android/player/SdkVideoView;->sTotalVideoViewed:I
add-int/lit8 v9, v9, 0x1
sput v9, Lco/vine/android/player/SdkVideoView;->sTotalVideoViewed:I
invoke-static {v6, v9}, Lco/vine/android/util/CrashUtil;->set(Ljava/lang/String;I)V
const/4 v6, 0x2
invoke-direct {p0, v6}, Lco/vine/android/player/SdkVideoView;->setCurrentState(I)V
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->attachMediaController()V
sget-object v6, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;
const-string v9, "Successfully prepared the new MediaPlayer."
invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v9
sub-long v2, v9, v4
sget-boolean v6, Lco/vine/android/player/SdkVideoView;->DISABLE_OPEN_ON_SEPARATE_THREAD:Z
if-nez v6, :cond_a4
const-wide/16 v9, 0x28
cmp-long v6, v2, v9
if-gez v6, :cond_e6
:cond_a4
move v6, v8
:goto_a5
sput-boolean v6, Lco/vine/android/player/SdkVideoView;->OPEN_ON_MAIN_THREAD:Z
const-string v6, "Prepare took {}ms"
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v9
invoke-static {v6, v9}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V
:goto_b0
return-void
:cond_b1
invoke-virtual {v1}, Landroid/media/MediaPlayer;->getAudioSessionId()I
move-result v6
iput v6, p0, Lco/vine/android/player/SdkVideoView;->mAudioSession:I
:try_end_b7
.catch Ljava/io/IOException; {:try_start_17 .. :try_end_b7} :catch_b9
.catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_b7} :catch_b9
.catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_b7} :catch_b9
.catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_b7} :catch_b9
goto/16 :goto_30
:catch_b9
move-exception v0
iget-boolean v6, p0, Lco/vine/android/player/SdkVideoView;->mReportOpenError:Z
if-eqz v6, :cond_cf
const-string v6, "Unable to open content {}, {}."
new-array v9, v12, [Ljava/lang/Object;
iget-object v10, p0, Lco/vine/android/player/SdkVideoView;->mUri:Landroid/net/Uri;
aput-object v10, v9, v7
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->getTag()Ljava/lang/Object;
move-result-object v7
aput-object v7, v9, v8
invoke-static {v0, v6, v9}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
:cond_cf
invoke-direct {p0, v11}, Lco/vine/android/player/SdkVideoView;->setCurrentState(I)V
iput v11, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v6
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v7
if-eq v6, v7, :cond_e8
iget-object v6, p0, Lco/vine/android/player/SdkVideoView;->mHandler:Landroid/os/Handler;
iget-object v7, p0, Lco/vine/android/player/SdkVideoView;->mOnOpenErrorListener:Ljava/lang/Runnable;
invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_b0
:cond_e6
move v6, v7
goto :goto_a5
:cond_e8
iget-object v6, p0, Lco/vine/android/player/SdkVideoView;->mOnOpenErrorListener:Ljava/lang/Runnable;
invoke-interface {v6}, Ljava/lang/Runnable;->run()V
goto :goto_b0
.end method
.method private openVideo()V
.registers 5
sget-boolean v2, Lco/vine/android/player/SdkVideoView;->OPEN_ON_MAIN_THREAD:Z
if-eqz v2, :cond_a
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mOpenRunnable:Ljava/lang/Runnable;
invoke-interface {v2}, Ljava/lang/Runnable;->run()V
:goto_9
return-void
:cond_a
iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mOpenThread:Ljava/lang/Thread;
if-eqz v1, :cond_18
const-string v2, "Another open thread was running already."
invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->w(Ljava/lang/String;)V
const-wide/16 v2, 0x64
:try_start_15
invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
:cond_18
:goto_18
:try_end_18
.catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_27
new-instance v2, Ljava/lang/Thread;
iget-object v3, p0, Lco/vine/android/player/SdkVideoView;->mOpenRunnable:Ljava/lang/Runnable;
invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
iput-object v2, p0, Lco/vine/android/player/SdkVideoView;->mOpenThread:Ljava/lang/Thread;
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mOpenThread:Ljava/lang/Thread;
invoke-virtual {v2}, Ljava/lang/Thread;->start()V
goto :goto_9
:catch_27
move-exception v0
const-string v2, "Join was interrupted."
invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
goto :goto_18
.end method
.method private declared-synchronized release(Z)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mLock:[I
monitor-enter v2
:try_start_4
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_4e
sget-boolean v1, Lco/vine/android/player/SdkVideoView;->USE_EXO:Z
if-eqz v1, :cond_1a
iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
if-eqz v1, :cond_14
iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
invoke-virtual {v1}, Lcom/google/android/exoplayer/ExoPlayer;->release()V
const/4 v1, 0x0
iput-object v1, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
:cond_14
const/4 v1, 0x0
iput-object v1, p0, Lco/vine/android/player/SdkVideoView;->mExoVideoRenderer:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
:goto_17
monitor-exit v2
:try_end_18
.catchall {:try_start_4 .. :try_end_18} :catchall_4b
monitor-exit p0
return-void
:try_start_1a
:cond_1a
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
:try_end_1d
.catchall {:try_start_1a .. :try_end_1d} :catchall_4b
move-result-object v0
if-eqz v0, :cond_46
:try_start_20
invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
move-result v1
if-eqz v1, :cond_29
invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
:try_end_29
.catchall {:try_start_20 .. :try_end_29} :catchall_4b
.catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_29} :catch_53
:cond_29
:goto_29
:try_start_29
invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
:try_start_2c
:goto_2c
:try_end_2c
.catchall {:try_start_29 .. :try_end_2c} :catchall_4b
.catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_2c} :catch_51
iget-boolean v1, p0, Lco/vine/android/player/SdkVideoView;->SINGLE_PLAYER:Z
if-nez v1, :cond_37
invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
const/4 v1, 0x0
invoke-direct {p0, v1}, Lco/vine/android/player/SdkVideoView;->setPlayer(Landroid/media/MediaPlayer;)V
:cond_37
const/4 v1, 0x0
iput-boolean v1, p0, Lco/vine/android/player/SdkVideoView;->mIsPrepared:Z
const/4 v1, 0x1
invoke-direct {p0, v1}, Lco/vine/android/player/SdkVideoView;->setCurrentState(I)V
if-eqz p1, :cond_46
const/4 v1, 0x1
iput v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I
const/4 v1, 0x0
iput-object v1, p0, Lco/vine/android/player/SdkVideoView;->mPath:Ljava/lang/String;
:cond_46
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lco/vine/android/player/SdkVideoView;->setKeepScreenOn(Z)V
goto :goto_17
:catchall_4b
move-exception v1
monitor-exit v2
:try_start_4d
:try_end_4d
.catchall {:try_start_2c .. :try_end_4d} :catchall_4b
throw v1
:catchall_4e
:try_end_4e
.catchall {:try_start_4d .. :try_end_4e} :catchall_4e
move-exception v1
monitor-exit p0
throw v1
:catch_51
move-exception v1
goto :goto_2c
:catch_53
move-exception v1
goto :goto_29
.end method
.method public static releaseStaticIfNeeded()V
.registers 3
sget-object v2, Lco/vine/android/player/SdkVideoView;->LOCK:[I
monitor-enter v2
:try_start_3
sget-object v1, Lco/vine/android/player/SdkVideoView;->singlePlayer:Landroid/media/MediaPlayer;
if-eqz v1, :cond_f
sget-object v1, Lco/vine/android/player/SdkVideoView;->singlePlayer:Landroid/media/MediaPlayer;
invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
const/4 v1, 0x0
sput-object v1, Lco/vine/android/player/SdkVideoView;->singlePlayer:Landroid/media/MediaPlayer;
:cond_f
:try_start_f
:goto_f
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_18
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_11
monitor-exit v2
return-void
:catch_11
move-exception v0
const-string v1, "Failed to release static player."
invoke-static {v1, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_f
:catchall_18
move-exception v1
monitor-exit v2
:try_end_1a
.catchall {:try_start_f .. :try_end_1a} :catchall_18
throw v1
.end method
.method private setCurrentState(I)V
.registers 3
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->SINGLE_PLAYER:Z
if-eqz v0, :cond_7
sput p1, Lco/vine/android/player/SdkVideoView;->currentState:I
:goto_6
return-void
:cond_7
iput p1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I
goto :goto_6
.end method
.method private setPlayer(Landroid/media/MediaPlayer;)V
.registers 3
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->SINGLE_PLAYER:Z
if-eqz v0, :cond_7
sput-object p1, Lco/vine/android/player/SdkVideoView;->singlePlayer:Landroid/media/MediaPlayer;
:goto_6
return-void
:cond_7
iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
goto :goto_6
.end method
.method private setVideoURI(Landroid/net/Uri;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lco/vine/android/player/SdkVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
return-void
.end method
.method private setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
.registers 4
iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mUri:Landroid/net/Uri;
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mUri:Landroid/net/Uri;
sput-object v0, Lco/vine/android/player/SdkVideoView;->currentUri:Landroid/net/Uri;
iput-object p2, p0, Lco/vine/android/player/SdkVideoView;->mHeaders:Ljava/util/Map;
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->openVideo()V
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->requestLayout()V
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->postInvalidate()V
return-void
.end method
.method private stopPlaybackInternal()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x1
sget-boolean v0, Lco/vine/android/player/SdkVideoView;->USE_EXO:Z
if-eqz v0, :cond_1c
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
if-eqz v0, :cond_1b
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlayer;->stop()V
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlayer;->release()V
iput-object v2, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
invoke-direct {p0, v1}, Lco/vine/android/player/SdkVideoView;->setCurrentState(I)V
iput v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I
:cond_1b
:goto_1b
return-void
:cond_1c
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v0
if-eqz v0, :cond_1b
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v0
invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v0
invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
invoke-direct {p0, v2}, Lco/vine/android/player/SdkVideoView;->setPlayer(Landroid/media/MediaPlayer;)V
invoke-direct {p0, v1}, Lco/vine/android/player/SdkVideoView;->setCurrentState(I)V
iput v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I
goto :goto_1b
.end method
.method private toggleMediaControlsVisibility()V
.registers 2
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z
move-result v0
if-eqz v0, :cond_e
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V
:goto_d
return-void
:cond_e
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v0}, Landroid/widget/MediaController;->show()V
goto :goto_d
.end method
.method public canPause()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mIsPrepared:Z
return v0
.end method
.method public canSeekBackward()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mIsPrepared:Z
return v0
.end method
.method public canSeekForward()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mIsPrepared:Z
return v0
.end method
.method public getAttributes()Landroid/util/AttributeSet;
.registers 2
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mAttributes:Landroid/util/AttributeSet;
return-object v0
.end method
.method public getAudioSessionId()I
.registers 3
iget v1, p0, Lco/vine/android/player/SdkVideoView;->mAudioSession:I
if-nez v1, :cond_12
new-instance v0, Landroid/media/MediaPlayer;
invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V
invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I
move-result v1
iput v1, p0, Lco/vine/android/player/SdkVideoView;->mAudioSession:I
invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
:cond_12
iget v1, p0, Lco/vine/android/player/SdkVideoView;->mAudioSession:I
return v1
.end method
.method public getBufferPercentage()I
.registers 2
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->hasPlayer()Z
move-result v0
if-eqz v0, :cond_9
iget v0, p0, Lco/vine/android/player/SdkVideoView;->mCurrentBufferPercentage:I
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public getCurrentPosition()I
.registers 3
:try_start_0
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z
move-result v1
if-eqz v1, :cond_23
iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
if-eqz v1, :cond_11
iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
invoke-virtual {v1}, Lcom/google/android/exoplayer/ExoPlayer;->getCurrentPosition()I
move-result v1
:goto_10
return v1
:cond_11
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v1
if-eqz v1, :cond_23
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v1
invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I
:try_end_1e
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20
move-result v1
goto :goto_10
:catch_20
move-exception v0
const/4 v1, -0x1
goto :goto_10
:cond_23
const/4 v1, 0x0
goto :goto_10
.end method
.method public getDuration()I
.registers 6
const/4 v2, -0x1
:try_start_1
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z
move-result v3
if-eqz v3, :cond_11
iget-object v3, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
if-eqz v3, :cond_12
iget-object v3, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
invoke-virtual {v3}, Lcom/google/android/exoplayer/ExoPlayer;->getDuration()I
move-result v2
:cond_11
:goto_11
return v2
:cond_12
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v1
if-eqz v1, :cond_11
invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I
:try_end_1b
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1d
move-result v2
goto :goto_11
:catch_1d
move-exception v0
const-string v3, "It\'s ok. probably a race condition."
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v0, v3, v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_11
.end method
.method public getPath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mPath:Ljava/lang/String;
return-object v0
.end method
.method public getPlayingPosition()I
.registers 2
iget v0, p0, Lco/vine/android/player/SdkVideoView;->mPlayingPosition:I
return v0
.end method
.method public hasControlOfPlayer()Z
.registers 3
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->SINGLE_PLAYER:Z
if-eqz v0, :cond_e
sget-object v0, Lco/vine/android/player/SdkVideoView;->currentView:Landroid/view/View;
if-ne v0, p0, :cond_10
sget-object v0, Lco/vine/android/player/SdkVideoView;->currentUri:Landroid/net/Uri;
iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mUri:Landroid/net/Uri;
if-ne v0, v1, :cond_10
:cond_e
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public hasStarted()Z
.registers 2
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z
move-result v0
return v0
.end method
.method public isInPlaybackState()Z
.registers 4
const/4 v0, 0x1
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->hasPlayer()Z
move-result v1
if-eqz v1, :cond_1c
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getCurrentState()I
move-result v1
const/4 v2, -0x1
if-eq v1, v2, :cond_1c
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getCurrentState()I
move-result v1
if-eq v1, v0, :cond_1c
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getCurrentState()I
move-result v1
const/4 v2, 0x2
if-eq v1, v2, :cond_1c
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method
.method public isPathPlaying(Ljava/lang/String;)Z
.registers 3
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->hasControlOfPlayer()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mPath:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public isPaused()Z
.registers 3
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getCurrentState()I
move-result v0
const/4 v1, 0x7
if-ne v0, v1, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public isPlayerPlaying()Z
.registers 4
const/4 v0, 0x1
const/4 v1, 0x0
sget-boolean v2, Lco/vine/android/player/SdkVideoView;->USE_EXO:Z
if-eqz v2, :cond_15
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
if-eqz v2, :cond_13
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
invoke-virtual {v2}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z
move-result v2
if-eqz v2, :cond_13
:cond_12
:goto_12
return v0
:cond_13
move v0, v1
goto :goto_12
:cond_15
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v2
if-eqz v2, :cond_25
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v2
invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
move-result v2
if-nez v2, :cond_12
:cond_25
move v0, v1
goto :goto_12
.end method
.method public isPlaying()Z
.registers 4
const/4 v1, 0x0
:try_start_1
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z
move-result v2
if-eqz v2, :cond_e
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isPlayerPlaying()Z
:try_end_a
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_f
move-result v2
if-eqz v2, :cond_e
const/4 v1, 0x1
:cond_e
:goto_e
return v1
:catch_f
move-exception v0
goto :goto_e
.end method
.method public isSurfaceReady()Z
.registers 2
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHolder:Landroid/view/Surface;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public onCryptoError(Landroid/media/MediaCodec$CryptoException;)V
.registers 4
sget-object v0, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;
const-string v1, "onCryptoError"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public onDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
.registers 4
sget-object v0, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;
const-string v1, "onDecoderInitializationError"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 10
const/4 v8, 0x1
const/4 v7, 0x0
:try_start_2
invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
const/4 v3, 0x0
const/4 v2, 0x1
:try_start_9
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;
move-result-object v3
if-eqz v3, :cond_12
invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->release()V
:cond_12
:goto_12
:try_end_12
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_23
const-string v4, "Failed to detach from window, but it\'s ok, since we won\'t use this anyways: {}, {}."
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
aput-object v6, v5, v7
aput-object v3, v5, v8
invoke-static {v0, v4, v5}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_5
:catch_23
move-exception v1
const/4 v2, 0x0
const-string v4, "Failed to release: {}."
new-array v5, v8, [Ljava/lang/Object;
aput-object v1, v5, v7
invoke-static {v4, v5}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_12
.end method
.method public onDrawnToSurface(Landroid/view/Surface;)V
.registers 4
sget-object v0, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;
const-string v1, "Rendering has started successfully!"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public onDroppedFrames(IJ)V
.registers 7
sget-object v0, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Dropped frames: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.registers 3
.parameter
.end parameter
invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
const-class v0, Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V
return-void
.end method
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
.registers 3
.parameter
.end parameter
invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
const-class v0, Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 6
.parameter
.end parameter
.parameter
.end parameter
const/4 v1, 0x1
const/4 v2, 0x4
if-eq p1, v2, :cond_42
const/16 v2, 0x18
if-eq p1, v2, :cond_42
const/16 v2, 0x19
if-eq p1, v2, :cond_42
const/16 v2, 0xa4
if-eq p1, v2, :cond_42
const/16 v2, 0x52
if-eq p1, v2, :cond_42
const/4 v2, 0x5
if-eq p1, v2, :cond_42
const/4 v2, 0x6
if-eq p1, v2, :cond_42
move v0, v1
:goto_1b
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z
move-result v2
if-eqz v2, :cond_82
if-eqz v0, :cond_82
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
if-eqz v2, :cond_82
const/16 v2, 0x4f
if-eq p1, v2, :cond_2f
const/16 v2, 0x55
if-ne p1, v2, :cond_4d
:cond_2f
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v2
invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
move-result v2
if-eqz v2, :cond_44
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->pause()V
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v2}, Landroid/widget/MediaController;->show()V
:goto_41
:cond_41
return v1
:cond_42
const/4 v0, 0x0
goto :goto_1b
:cond_44
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->start()V
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V
goto :goto_41
:cond_4d
const/16 v2, 0x7e
if-ne p1, v2, :cond_64
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v2
invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
move-result v2
if-nez v2, :cond_41
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->start()V
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V
goto :goto_41
:cond_64
const/16 v2, 0x56
if-eq p1, v2, :cond_6c
const/16 v2, 0x7f
if-ne p1, v2, :cond_7f
:cond_6c
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v2
invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
move-result v2
if-eqz v2, :cond_41
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->pause()V
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v2}, Landroid/widget/MediaController;->show()V
goto :goto_41
:cond_7f
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->toggleMediaControlsVisibility()V
:cond_82
invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v1
goto :goto_41
.end method
.method protected onMeasure(II)V
.registers 7
iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I
invoke-static {v2, p1}, Lco/vine/android/player/SdkVideoView;->getDefaultSize(II)I
move-result v1
iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I
invoke-static {v2, p2}, Lco/vine/android/player/SdkVideoView;->getDefaultSize(II)I
move-result v0
iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I
if-lez v2, :cond_23
iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I
if-lez v2, :cond_23
iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I
mul-int/2addr v2, v0
iget v3, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I
mul-int/2addr v3, v1
if-le v2, v3, :cond_27
iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I
mul-int/2addr v2, v1
iget v3, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I
div-int v0, v2, v3
:cond_23
:goto_23
invoke-virtual {p0, v1, v0}, Lco/vine/android/player/SdkVideoView;->setMeasuredDimension(II)V
return-void
:cond_27
iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I
mul-int/2addr v2, v0
iget v3, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I
mul-int/2addr v3, v1
if-ge v2, v3, :cond_23
iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I
mul-int/2addr v2, v0
iget v3, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I
div-int v1, v2, v3
goto :goto_23
.end method
.method public onPlayWhenReadyCommitted()V
.registers 1
return-void
.end method
.method public onPlayerError(Lcom/google/android/exoplayer/ExoPlaybackException;)V
.registers 5
const/4 v2, -0x1
sget-object v0, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;
const-string v1, "Player error!"
invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
invoke-direct {p0, v2, v2}, Lco/vine/android/player/SdkVideoView;->onError(II)Z
return-void
.end method
.method public onPlayerStateChanged(ZI)V
.registers 5
invoke-static {p2}, Lco/vine/android/player/SdkVideoView;->getViewStateFromExoState(I)I
move-result v0
invoke-direct {p0, v0}, Lco/vine/android/player/SdkVideoView;->setCurrentState(I)V
iget v0, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I
const/4 v1, 0x4
if-ne v0, v1, :cond_f
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->onPrepared()V
:cond_f
iget v0, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I
const/4 v1, 0x5
if-ne v0, v1, :cond_27
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mLooping:Z
if-eqz v0, :cond_24
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(I)V
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V
:cond_24
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->onComplete()V
:cond_27
return-void
.end method
.method public onPrepared()V
.registers 3
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_1a
iget v0, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I
const/4 v1, 0x4
if-ne v0, v1, :cond_1a
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->hasPlayer()Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mOnPreparedListener:Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
if-eqz v0, :cond_1a
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mOnPreparedListener:Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
invoke-interface {v0, p0}, Lco/vine/android/player/VideoViewInterface$OnPreparedListener;->onPrepared(Lco/vine/android/player/VideoViewInterface;)V
:cond_1a
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
.parameter
.end parameter
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
if-eqz v0, :cond_d
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->toggleMediaControlsVisibility()V
:cond_d
const/4 v0, 0x0
return v0
.end method
.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
.registers 3
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
if-eqz v0, :cond_d
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->toggleMediaControlsVisibility()V
:cond_d
const/4 v0, 0x0
return v0
.end method
.method public onVideoSizeChanged(II)V
.registers 4
iget v0, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I
if-ne v0, p2, :cond_8
iget v0, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I
if-eq v0, p1, :cond_17
:cond_8
iput p1, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I
iput p2, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I
iget v0, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I
if-eqz v0, :cond_17
iget v0, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I
if-eqz v0, :cond_17
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->requestLayout()V
:cond_17
return-void
.end method
.method public onViewClicked()V
.registers 2
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSaveVideoClicker:Lco/vine/android/player/SaveVideoClicker;
invoke-virtual {v0, p0}, Lco/vine/android/player/SaveVideoClicker;->onClick(Lco/vine/android/player/SdkVideoView;)V
return-void
.end method
.method public pause()V
.registers 4
const/4 v2, 0x7
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_18
sget-boolean v0, Lco/vine/android/player/SdkVideoView;->USE_EXO:Z
if-eqz v0, :cond_1b
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V
iget v0, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I
const/4 v1, 0x6
if-ne v0, v1, :cond_18
iput v2, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I
:goto_18
:cond_18
iput v2, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I
return-void
:cond_1b
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v0
invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
move-result v0
if-eqz v0, :cond_18
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v0
invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
invoke-direct {p0, v2}, Lco/vine/android/player/SdkVideoView;->setCurrentState(I)V
goto :goto_18
.end method
.method public releaseSurface()V
.registers 2
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHolder:Landroid/view/Surface;
if-eqz v0, :cond_c
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHolder:Landroid/view/Surface;
invoke-virtual {v0}, Landroid/view/Surface;->release()V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHolder:Landroid/view/Surface;
:cond_c
return-void
.end method
.method public restart()V
.registers 5
sget-object v2, Lco/vine/android/player/SdkVideoView;->LOCK:[I
monitor-enter v2
:try_start_3
sget-boolean v1, Lco/vine/android/player/SdkVideoView;->USE_EXO:Z
if-eqz v1, :cond_16
iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
if-eqz v1, :cond_14
iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
const/4 v3, 0x0
invoke-virtual {v1, v3}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(I)V
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->resume()V
:cond_14
:goto_14
monitor-exit v2
return-void
:cond_16
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v0
if-eqz v0, :cond_14
invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
move-result v1
if-eqz v1, :cond_14
invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
goto :goto_14
:catchall_2d
move-exception v1
monitor-exit v2
:try_end_2f
.catchall {:try_start_3 .. :try_end_2f} :catchall_2d
throw v1
.end method
.method public resume()V
.registers 2
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mMuted:Z
if-nez v0, :cond_10
const/4 v0, 0x1
:goto_5
iput-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mWasMuted:Z
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mMuted:Z
invoke-virtual {p0, v0}, Lco/vine/android/player/SdkVideoView;->setMute(Z)V
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->start()V
return-void
:cond_10
const/4 v0, 0x0
goto :goto_5
.end method
.method public retryOpenVideo(Z)Z
.registers 6
const/4 v2, 0x0
const/4 v1, 0x1
const-string v3, "Retry open video: {}"
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mHasNotRetriedBefore:Z
if-nez v0, :cond_1d
move v0, v1
:goto_9
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-static {v3, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
if-nez p1, :cond_16
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mHasNotRetriedBefore:Z
if-nez v0, :cond_1c
:cond_16
iput-boolean v1, p0, Lco/vine/android/player/SdkVideoView;->mHasNotRetriedBefore:Z
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->openVideo()V
move v2, v1
:cond_1c
return v2
:cond_1d
move v0, v2
goto :goto_9
.end method
.method public seekTo(I)V
.registers 3
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_20
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v0
if-eqz v0, :cond_13
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
:cond_13
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
if-eqz v0, :cond_1c
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(I)V
:cond_1c
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I
:goto_1f
return-void
:cond_20
iput p1, p0, Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I
goto :goto_1f
.end method
.method public setAutoPlayOnPrepared(Z)V
.registers 2
iput-boolean p1, p0, Lco/vine/android/player/SdkVideoView;->mAutoPlayOnPrepared:Z
return-void
.end method
.method public setAutoShow(Z)V
.registers 2
iput-boolean p1, p0, Lco/vine/android/player/SdkVideoView;->mAutoShow:Z
return-void
.end method
.method public setKeepScreenOn(Z)V
.registers 4
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v0
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v1
if-ne v0, v1, :cond_e
invoke-super {p0, p1}, Landroid/view/TextureView;->setKeepScreenOn(Z)V
:goto_d
return-void
:cond_e
new-instance v0, Lco/vine/android/player/SdkVideoView$3;
invoke-direct {v0, p0, p1}, Lco/vine/android/player/SdkVideoView$3;-><init>(Lco/vine/android/player/SdkVideoView;Z)V
invoke-virtual {p0, v0}, Lco/vine/android/player/SdkVideoView;->post(Ljava/lang/Runnable;)Z
goto :goto_d
.end method
.method public setLooping(Z)V
.registers 2
iput-boolean p1, p0, Lco/vine/android/player/SdkVideoView;->mLooping:Z
return-void
.end method
.method public setMediaController(Landroid/widget/MediaController;)V
.registers 3
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V
:cond_9
iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->attachMediaController()V
return-void
.end method
.method public setMute(Z)V
.registers 6
const/high16 v3, 0x3f80
const/4 v2, 0x0
iput-boolean p1, p0, Lco/vine/android/player/SdkVideoView;->mMuted:Z
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_18
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mWasMuted:Z
iget-boolean v1, p0, Lco/vine/android/player/SdkVideoView;->mMuted:Z
if-eq v0, v1, :cond_18
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mMuted:Z
if-eqz v0, :cond_1d
invoke-virtual {p0, v2, v2}, Lco/vine/android/player/SdkVideoView;->setVolume(FF)V
:goto_18
:cond_18
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mMuted:Z
iput-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mWasMuted:Z
return-void
:cond_1d
invoke-virtual {p0, v3, v3}, Lco/vine/android/player/SdkVideoView;->setVolume(FF)V
goto :goto_18
.end method
.method public setOnCompletionListener(Lco/vine/android/player/VideoViewInterface$OnCompletionListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mOnCompletionListener:Lco/vine/android/player/VideoViewInterface$OnCompletionListener;
return-void
.end method
.method public setOnErrorListener(Lco/vine/android/player/VideoViewInterface$OnErrorListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mOnErrorListener:Lco/vine/android/player/VideoViewInterface$OnErrorListener;
return-void
.end method
.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
return-void
.end method
.method public setOnPreparedListener(Lco/vine/android/player/VideoViewInterface$OnPreparedListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mOnPreparedListener:Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
return-void
.end method
.method public setPlayingPosition(I)V
.registers 2
iput p1, p0, Lco/vine/android/player/SdkVideoView;->mPlayingPosition:I
return-void
.end method
.method public setReportOpenError(Z)V
.registers 2
iput-boolean p1, p0, Lco/vine/android/player/SdkVideoView;->mReportOpenError:Z
return-void
.end method
.method public setSurfaceReadyListener(Lco/vine/android/player/SdkVideoView$SurfaceReadyListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceReadyListener:Lco/vine/android/player/SdkVideoView$SurfaceReadyListener;
return-void
.end method
.method public setVideoPath(Ljava/lang/String;)V
.registers 2
invoke-virtual {p0, p1}, Lco/vine/android/player/SdkVideoView;->setVideoPathDirect(Ljava/lang/String;)V
return-void
.end method
.method public setVideoPathDirect(Ljava/lang/String;)V
.registers 3
const-string v0, "mPath={}."
invoke-static {v0, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mPath:Ljava/lang/String;
if-eqz p1, :cond_11
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
:goto_d
invoke-direct {p0, v0}, Lco/vine/android/player/SdkVideoView;->setVideoURI(Landroid/net/Uri;)V
return-void
:cond_11
const/4 v0, 0x0
goto :goto_d
.end method
.method public setVolume(FF)V
.registers 8
sget-object v1, Lco/vine/android/player/SdkVideoView;->LOCK:[I
monitor-enter v1
:try_start_3
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_2f
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mWasMuted:Z
iget-boolean v2, p0, Lco/vine/android/player/SdkVideoView;->mMuted:Z
if-eq v0, v2, :cond_2f
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
if-eqz v0, :cond_31
cmpl-float v0, p1, p2
if-eqz v0, :cond_22
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v2, "Currently AudioTrackRenderer only take 1 item and it will be set for both left and right."
invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_1f
move-exception v0
monitor-exit v1
:try_end_21
.catchall {:try_start_3 .. :try_end_21} :catchall_1f
throw v0
:cond_22
:try_start_22
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mExoAudioRenderer:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
sget-object v3, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->MSG_SET_VOLUME:Ljava/lang/Object;
invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v4
invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
:goto_2f
:cond_2f
monitor-exit v1
return-void
:cond_31
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v0
if-eqz v0, :cond_2f
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v0
invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V
:try_end_3e
.catchall {:try_start_22 .. :try_end_3e} :catchall_1f
goto :goto_2f
.end method
.method public start()V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lco/vine/android/player/SdkVideoView;->start(Z)V
return-void
.end method
.method public start(Z)V
.registers 6
const/4 v3, 0x6
if-eqz p1, :cond_d
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->getVisibility()I
move-result v0
if-eqz v0, :cond_d
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V
:cond_d
sget-object v1, Lco/vine/android/player/SdkVideoView;->LOCK:[I
monitor-enter v1
:try_start_10
invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_24
sget-boolean v0, Lco/vine/android/player/SdkVideoView;->USE_EXO:Z
if-eqz v0, :cond_28
iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
const/4 v2, 0x1
invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V
:goto_20
const/4 v0, 0x6
invoke-direct {p0, v0}, Lco/vine/android/player/SdkVideoView;->setCurrentState(I)V
:cond_24
monitor-exit v1
:try_end_25
.catchall {:try_start_10 .. :try_end_25} :catchall_30
iput v3, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I
return-void
:cond_28
:try_start_28
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
move-result-object v0
invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
goto :goto_20
:catchall_30
move-exception v0
monitor-exit v1
:try_end_32
.catchall {:try_start_28 .. :try_end_32} :catchall_30
throw v0
.end method
.method public startOpenVideo()V
.registers 1
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->openVideo()V
return-void
.end method
.method public stopPlayback()V
.registers 3
iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->SINGLE_PLAYER:Z
if-eqz v0, :cond_f
sget-object v1, Lco/vine/android/player/SdkVideoView;->LOCK:[I
monitor-enter v1
:try_start_7
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->stopPlaybackInternal()V
monitor-exit v1
:goto_b
return-void
:catchall_c
move-exception v0
monitor-exit v1
:try_end_e
.catchall {:try_start_7 .. :try_end_e} :catchall_c
throw v0
:cond_f
invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->stopPlaybackInternal()V
goto :goto_b
.end method
.method public suspend()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lco/vine/android/player/SdkVideoView;->release(Z)V
return-void
.end method