.class public Lco/vine/android/player/OldSdkVideoView;
.super Landroid/view/SurfaceView;
.source "OldSdkVideoView.java"
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Lco/vine/android/player/VideoViewInterface;
.field private static final STATE_ERROR:I = -0x1
.field private static final STATE_IDLE:I = 0x0
.field private static final STATE_PAUSED:I = 0x4
.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5
.field private static final STATE_PLAYING:I = 0x3
.field private static final STATE_PREPARED:I = 0x2
.field private static final STATE_PREPARING:I = 0x1
.field private mAudioSession:I
.field private mAutoPlay:Z
.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.field private mCanPause:Z
.field private mCanSeekBack:Z
.field private mCanSeekForward:Z
.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
.field private mCurrentBufferPercentage:I
.field private mCurrentState:I
.field private mCustomOnPreParedListener:Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
.field private mLooping:Z
.field private mMediaController:Landroid/widget/MediaController;
.field private mMediaPlayer:Landroid/media/MediaPlayer;
.field private mMuted:Z
.field private mOnCompletionListener:Lco/vine/android/player/VideoViewInterface$OnCompletionListener;
.field private mOnErrorListener:Lco/vine/android/player/VideoViewInterface$OnErrorListener;
.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
.field private final mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
.field  mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
.field private mReportVideoError:Z
.field  mSHCallback:Landroid/view/SurfaceHolder$Callback;
.field private mSeekWhenPrepared:I
.field  mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.field private mSurfaceHeight:I
.field private mSurfaceHolder:Landroid/view/SurfaceHolder;
.field private mSurfaceWidth:I
.field private mTargetState:I
.field private mUri:Landroid/net/Uri;
.field private mVideoHeight:I
.field private mVideoWidth:I
.field private mWasMuted:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V
new-instance v0, Lco/vine/android/player/OldSdkVideoView$1;
invoke-direct {v0, p0}, Lco/vine/android/player/OldSdkVideoView$1;-><init>(Lco/vine/android/player/OldSdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
iput v1, p0, Lco/vine/android/player/OldSdkVideoView;->mCurrentState:I
iput v1, p0, Lco/vine/android/player/OldSdkVideoView;->mTargetState:I
iput-object v2, p0, Lco/vine/android/player/OldSdkVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
iput-object v2, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
iput-boolean v1, p0, Lco/vine/android/player/OldSdkVideoView;->mMuted:Z
iput-boolean v1, p0, Lco/vine/android/player/OldSdkVideoView;->mWasMuted:Z
new-instance v0, Lco/vine/android/player/OldSdkVideoView$2;
invoke-direct {v0, p0}, Lco/vine/android/player/OldSdkVideoView$2;-><init>(Lco/vine/android/player/OldSdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
new-instance v0, Lco/vine/android/player/OldSdkVideoView$3;
invoke-direct {v0, p0}, Lco/vine/android/player/OldSdkVideoView$3;-><init>(Lco/vine/android/player/OldSdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
new-instance v0, Lco/vine/android/player/OldSdkVideoView$4;
invoke-direct {v0, p0}, Lco/vine/android/player/OldSdkVideoView$4;-><init>(Lco/vine/android/player/OldSdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
new-instance v0, Lco/vine/android/player/OldSdkVideoView$5;
invoke-direct {v0, p0}, Lco/vine/android/player/OldSdkVideoView$5;-><init>(Lco/vine/android/player/OldSdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
new-instance v0, Lco/vine/android/player/OldSdkVideoView$6;
invoke-direct {v0, p0}, Lco/vine/android/player/OldSdkVideoView$6;-><init>(Lco/vine/android/player/OldSdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
new-instance v0, Lco/vine/android/player/OldSdkVideoView$7;
invoke-direct {v0, p0}, Lco/vine/android/player/OldSdkVideoView$7;-><init>(Lco/vine/android/player/OldSdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
new-instance v0, Lco/vine/android/player/OldSdkVideoView$8;
invoke-direct {v0, p0}, Lco/vine/android/player/OldSdkVideoView$8;-><init>(Lco/vine/android/player/OldSdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;
invoke-direct {p0}, Lco/vine/android/player/OldSdkVideoView;->initVideoView()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lco/vine/android/player/OldSdkVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-direct {p0}, Lco/vine/android/player/OldSdkVideoView;->initVideoView()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 7
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Lco/vine/android/player/OldSdkVideoView$1;
invoke-direct {v0, p0}, Lco/vine/android/player/OldSdkVideoView$1;-><init>(Lco/vine/android/player/OldSdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
iput v1, p0, Lco/vine/android/player/OldSdkVideoView;->mCurrentState:I
iput v1, p0, Lco/vine/android/player/OldSdkVideoView;->mTargetState:I
iput-object v2, p0, Lco/vine/android/player/OldSdkVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
iput-object v2, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
iput-boolean v1, p0, Lco/vine/android/player/OldSdkVideoView;->mMuted:Z
iput-boolean v1, p0, Lco/vine/android/player/OldSdkVideoView;->mWasMuted:Z
new-instance v0, Lco/vine/android/player/OldSdkVideoView$2;
invoke-direct {v0, p0}, Lco/vine/android/player/OldSdkVideoView$2;-><init>(Lco/vine/android/player/OldSdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
new-instance v0, Lco/vine/android/player/OldSdkVideoView$3;
invoke-direct {v0, p0}, Lco/vine/android/player/OldSdkVideoView$3;-><init>(Lco/vine/android/player/OldSdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
new-instance v0, Lco/vine/android/player/OldSdkVideoView$4;
invoke-direct {v0, p0}, Lco/vine/android/player/OldSdkVideoView$4;-><init>(Lco/vine/android/player/OldSdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
new-instance v0, Lco/vine/android/player/OldSdkVideoView$5;
invoke-direct {v0, p0}, Lco/vine/android/player/OldSdkVideoView$5;-><init>(Lco/vine/android/player/OldSdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
new-instance v0, Lco/vine/android/player/OldSdkVideoView$6;
invoke-direct {v0, p0}, Lco/vine/android/player/OldSdkVideoView$6;-><init>(Lco/vine/android/player/OldSdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
new-instance v0, Lco/vine/android/player/OldSdkVideoView$7;
invoke-direct {v0, p0}, Lco/vine/android/player/OldSdkVideoView$7;-><init>(Lco/vine/android/player/OldSdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
new-instance v0, Lco/vine/android/player/OldSdkVideoView$8;
invoke-direct {v0, p0}, Lco/vine/android/player/OldSdkVideoView$8;-><init>(Lco/vine/android/player/OldSdkVideoView;)V
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;
invoke-direct {p0}, Lco/vine/android/player/OldSdkVideoView;->initVideoView()V
return-void
.end method
.method static synthetic access$000(Lco/vine/android/player/OldSdkVideoView;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/player/OldSdkVideoView;->mAutoPlay:Z
return v0
.end method
.method static synthetic access$100(Lco/vine/android/player/OldSdkVideoView;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/player/OldSdkVideoView;->mLooping:Z
return v0
.end method
.method static synthetic access$1000(Lco/vine/android/player/OldSdkVideoView;)Landroid/media/MediaPlayer;
.registers 2
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
return-object v0
.end method
.method static synthetic access$1100(Lco/vine/android/player/OldSdkVideoView;)Landroid/widget/MediaController;
.registers 2
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
return-object v0
.end method
.method static synthetic access$1200(Lco/vine/android/player/OldSdkVideoView;)I
.registers 2
iget v0, p0, Lco/vine/android/player/OldSdkVideoView;->mSeekWhenPrepared:I
return v0
.end method
.method static synthetic access$1300(Lco/vine/android/player/OldSdkVideoView;)I
.registers 2
iget v0, p0, Lco/vine/android/player/OldSdkVideoView;->mSurfaceWidth:I
return v0
.end method
.method static synthetic access$1302(Lco/vine/android/player/OldSdkVideoView;I)I
.registers 2
iput p1, p0, Lco/vine/android/player/OldSdkVideoView;->mSurfaceWidth:I
return p1
.end method
.method static synthetic access$1400(Lco/vine/android/player/OldSdkVideoView;)I
.registers 2
iget v0, p0, Lco/vine/android/player/OldSdkVideoView;->mSurfaceHeight:I
return v0
.end method
.method static synthetic access$1402(Lco/vine/android/player/OldSdkVideoView;I)I
.registers 2
iput p1, p0, Lco/vine/android/player/OldSdkVideoView;->mSurfaceHeight:I
return p1
.end method
.method static synthetic access$1500(Lco/vine/android/player/OldSdkVideoView;)I
.registers 2
iget v0, p0, Lco/vine/android/player/OldSdkVideoView;->mTargetState:I
return v0
.end method
.method static synthetic access$1502(Lco/vine/android/player/OldSdkVideoView;I)I
.registers 2
iput p1, p0, Lco/vine/android/player/OldSdkVideoView;->mTargetState:I
return p1
.end method
.method static synthetic access$1600(Lco/vine/android/player/OldSdkVideoView;)Lco/vine/android/player/VideoViewInterface$OnCompletionListener;
.registers 2
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mOnCompletionListener:Lco/vine/android/player/VideoViewInterface$OnCompletionListener;
return-object v0
.end method
.method static synthetic access$1700(Lco/vine/android/player/OldSdkVideoView;)Landroid/media/MediaPlayer$OnInfoListener;
.registers 2
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
return-object v0
.end method
.method static synthetic access$1800(Lco/vine/android/player/OldSdkVideoView;)Lco/vine/android/player/VideoViewInterface$OnErrorListener;
.registers 2
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mOnErrorListener:Lco/vine/android/player/VideoViewInterface$OnErrorListener;
return-object v0
.end method
.method static synthetic access$1902(Lco/vine/android/player/OldSdkVideoView;I)I
.registers 2
iput p1, p0, Lco/vine/android/player/OldSdkVideoView;->mCurrentBufferPercentage:I
return p1
.end method
.method static synthetic access$200(Lco/vine/android/player/OldSdkVideoView;)Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
.registers 2
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mCustomOnPreParedListener:Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
return-object v0
.end method
.method static synthetic access$2002(Lco/vine/android/player/OldSdkVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
.registers 2
iput-object p1, p0, Lco/vine/android/player/OldSdkVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
return-object p1
.end method
.method static synthetic access$2100(Lco/vine/android/player/OldSdkVideoView;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/player/OldSdkVideoView;->openVideo()V
return-void
.end method
.method static synthetic access$2200(Lco/vine/android/player/OldSdkVideoView;Z)V
.registers 2
invoke-direct {p0, p1}, Lco/vine/android/player/OldSdkVideoView;->release(Z)V
return-void
.end method
.method static synthetic access$300(Lco/vine/android/player/OldSdkVideoView;)I
.registers 2
iget v0, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
return v0
.end method
.method static synthetic access$302(Lco/vine/android/player/OldSdkVideoView;I)I
.registers 2
iput p1, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
return p1
.end method
.method static synthetic access$400(Lco/vine/android/player/OldSdkVideoView;)I
.registers 2
iget v0, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
return v0
.end method
.method static synthetic access$402(Lco/vine/android/player/OldSdkVideoView;I)I
.registers 2
iput p1, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
return p1
.end method
.method static synthetic access$502(Lco/vine/android/player/OldSdkVideoView;I)I
.registers 2
iput p1, p0, Lco/vine/android/player/OldSdkVideoView;->mCurrentState:I
return p1
.end method
.method static synthetic access$602(Lco/vine/android/player/OldSdkVideoView;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/player/OldSdkVideoView;->mCanPause:Z
return p1
.end method
.method static synthetic access$702(Lco/vine/android/player/OldSdkVideoView;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/player/OldSdkVideoView;->mCanSeekBack:Z
return p1
.end method
.method static synthetic access$802(Lco/vine/android/player/OldSdkVideoView;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/player/OldSdkVideoView;->mCanSeekForward:Z
return p1
.end method
.method static synthetic access$900(Lco/vine/android/player/OldSdkVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
.registers 2
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
return-object v0
.end method
.method private attachMediaController()V
.registers 4
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
if-eqz v1, :cond_2a
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
if-eqz v1, :cond_2a
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->getParent()Landroid/view/ViewParent;
move-result-object v1
instance-of v1, v1, Landroid/view/View;
if-eqz v1, :cond_2b
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->getParent()Landroid/view/ViewParent;
move-result-object v1
check-cast v1, Landroid/view/View;
move-object v0, v1
:goto_1c
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->isInPlaybackState()Z
move-result v2
invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V
:cond_2a
return-void
:cond_2b
move-object v0, p0
goto :goto_1c
.end method
.method private initVideoView()V
.registers 5
const/4 v3, 0x1
const/4 v2, 0x0
iput v2, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
iput v2, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->getHolder()Landroid/view/SurfaceHolder;
move-result-object v0
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;
invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->getHolder()Landroid/view/SurfaceHolder;
move-result-object v0
const/4 v1, 0x3
invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V
invoke-virtual {p0, v3}, Lco/vine/android/player/OldSdkVideoView;->setFocusable(Z)V
invoke-virtual {p0, v3}, Lco/vine/android/player/OldSdkVideoView;->setFocusableInTouchMode(Z)V
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->requestFocus()Z
iput v2, p0, Lco/vine/android/player/OldSdkVideoView;->mCurrentState:I
iput v2, p0, Lco/vine/android/player/OldSdkVideoView;->mTargetState:I
return-void
.end method
.method private openVideo()V
.registers 10
const/4 v8, -0x1
const/4 v7, 0x1
const/4 v6, 0x0
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView;->mUri:Landroid/net/Uri;
if-eqz v3, :cond_b
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
if-nez v3, :cond_c
:cond_b
:goto_b
return-void
:cond_c
new-instance v2, Landroid/content/Intent;
const-string v3, "com.android.music.musicservicecommand"
invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v3, "command"
const-string v4, "pause"
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
invoke-direct {p0, v6}, Lco/vine/android/player/OldSdkVideoView;->release(Z)V
:try_start_24
new-instance v3, Landroid/media/MediaPlayer;
invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V
iput-object v3, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->getContext()Landroid/content/Context;
move-result-object v0
iget v3, p0, Lco/vine/android/player/OldSdkVideoView;->mAudioSession:I
if-eqz v3, :cond_b6
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
iget v4, p0, Lco/vine/android/player/OldSdkVideoView;->mAudioSession:I
invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V
:goto_3a
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
iget-object v4, p0, Lco/vine/android/player/OldSdkVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
iget-object v4, p0, Lco/vine/android/player/OldSdkVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
iget-object v4, p0, Lco/vine/android/player/OldSdkVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
iget-object v4, p0, Lco/vine/android/player/OldSdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
iget-object v4, p0, Lco/vine/android/player/OldSdkVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
iget-object v4, p0, Lco/vine/android/player/OldSdkVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
const/4 v3, 0x0
iput v3, p0, Lco/vine/android/player/OldSdkVideoView;->mCurrentBufferPercentage:I
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
iget-object v4, p0, Lco/vine/android/player/OldSdkVideoView;->mUri:Landroid/net/Uri;
invoke-virtual {v3, v0, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
iget-object v4, p0, Lco/vine/android/player/OldSdkVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
const/4 v4, 0x3
invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
const/4 v4, 0x1
invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V
iget-boolean v3, p0, Lco/vine/android/player/OldSdkVideoView;->mMuted:Z
if-eqz v3, :cond_91
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V
:cond_91
const/4 v3, 0x1
iput v3, p0, Lco/vine/android/player/OldSdkVideoView;->mCurrentState:I
invoke-direct {p0}, Lco/vine/android/player/OldSdkVideoView;->attachMediaController()V
:try_end_97
.catch Ljava/io/IOException; {:try_start_24 .. :try_end_97} :catch_99
.catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_97} :catch_99
.catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_97} :catch_c0
goto/16 :goto_b
:catch_99
move-exception v1
iget-boolean v3, p0, Lco/vine/android/player/OldSdkVideoView;->mReportVideoError:Z
if-eqz v3, :cond_a9
const-string v3, "Unable to open content {}, {}."
new-array v4, v7, [Ljava/lang/Object;
iget-object v5, p0, Lco/vine/android/player/OldSdkVideoView;->mUri:Landroid/net/Uri;
aput-object v5, v4, v6
invoke-static {v1, v3, v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
:cond_a9
iput v8, p0, Lco/vine/android/player/OldSdkVideoView;->mCurrentState:I
iput v8, p0, Lco/vine/android/player/OldSdkVideoView;->mTargetState:I
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
iget-object v4, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-interface {v3, v4, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
goto/16 :goto_b
:try_start_b6
:cond_b6
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v3}, Landroid/media/MediaPlayer;->getAudioSessionId()I
move-result v3
iput v3, p0, Lco/vine/android/player/OldSdkVideoView;->mAudioSession:I
:try_end_be
.catch Ljava/io/IOException; {:try_start_b6 .. :try_end_be} :catch_99
.catch Ljava/lang/IllegalArgumentException; {:try_start_b6 .. :try_end_be} :catch_99
.catch Ljava/lang/IllegalStateException; {:try_start_b6 .. :try_end_be} :catch_c0
goto/16 :goto_3a
:catch_c0
move-exception v1
iput v8, p0, Lco/vine/android/player/OldSdkVideoView;->mCurrentState:I
iput v8, p0, Lco/vine/android/player/OldSdkVideoView;->mTargetState:I
const-string v3, "IllegalState error {}, {}."
new-array v4, v7, [Ljava/lang/Object;
iget-object v5, p0, Lco/vine/android/player/OldSdkVideoView;->mUri:Landroid/net/Uri;
aput-object v5, v4, v6
invoke-static {v1, v3, v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto/16 :goto_b
.end method
.method private release(Z)V
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
if-eqz v0, :cond_18
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
iput v1, p0, Lco/vine/android/player/OldSdkVideoView;->mCurrentState:I
if-eqz p1, :cond_18
iput v1, p0, Lco/vine/android/player/OldSdkVideoView;->mTargetState:I
:cond_18
return-void
.end method
.method private toggleMediaControlsVisiblity()V
.registers 2
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z
move-result v0
if-eqz v0, :cond_e
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V
:goto_d
return-void
:cond_e
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v0}, Landroid/widget/MediaController;->show()V
goto :goto_d
.end method
.method public canPause()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/player/OldSdkVideoView;->mCanPause:Z
return v0
.end method
.method public canSeekBackward()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/player/OldSdkVideoView;->mCanSeekBack:Z
return v0
.end method
.method public canSeekForward()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/player/OldSdkVideoView;->mCanSeekForward:Z
return v0
.end method
.method public getAudioSessionId()I
.registers 3
iget v1, p0, Lco/vine/android/player/OldSdkVideoView;->mAudioSession:I
if-nez v1, :cond_12
new-instance v0, Landroid/media/MediaPlayer;
invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V
invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I
move-result v1
iput v1, p0, Lco/vine/android/player/OldSdkVideoView;->mAudioSession:I
invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
:cond_12
iget v1, p0, Lco/vine/android/player/OldSdkVideoView;->mAudioSession:I
return v1
.end method
.method public getBufferPercentage()I
.registers 2
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
if-eqz v0, :cond_7
iget v0, p0, Lco/vine/android/player/OldSdkVideoView;->mCurrentBufferPercentage:I
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public getCurrentPosition()I
.registers 2
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
move-result v0
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public getDuration()I
.registers 2
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
move-result v0
:goto_c
return v0
:cond_d
const/4 v0, -0x1
goto :goto_c
.end method
.method public getPlayingPosition()I
.registers 2
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
if-eqz v0, :cond_11
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
move-result v0
:goto_10
return v0
:cond_11
const/4 v0, -0x1
goto :goto_10
.end method
.method public hasStarted()Z
.registers 2
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->isInPlaybackState()Z
move-result v0
return v0
.end method
.method public isInPlaybackState()Z
.registers 4
const/4 v0, 0x1
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
if-eqz v1, :cond_13
iget v1, p0, Lco/vine/android/player/OldSdkVideoView;->mCurrentState:I
const/4 v2, -0x1
if-eq v1, v2, :cond_13
iget v1, p0, Lco/vine/android/player/OldSdkVideoView;->mCurrentState:I
if-eqz v1, :cond_13
iget v1, p0, Lco/vine/android/player/OldSdkVideoView;->mCurrentState:I
if-eq v1, v0, :cond_13
:goto_12
return v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method public isPaused()Z
.registers 2
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
move-result v0
if-nez v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public isPlaying()Z
.registers 2
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public isReportErrorOn()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/player/OldSdkVideoView;->mReportVideoError:Z
return v0
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 6
const/4 v1, 0x1
const/4 v2, 0x4
if-eq p1, v2, :cond_40
const/16 v2, 0x18
if-eq p1, v2, :cond_40
const/16 v2, 0x19
if-eq p1, v2, :cond_40
const/16 v2, 0xa4
if-eq p1, v2, :cond_40
const/16 v2, 0x52
if-eq p1, v2, :cond_40
const/4 v2, 0x5
if-eq p1, v2, :cond_40
const/4 v2, 0x6
if-eq p1, v2, :cond_40
move v0, v1
:goto_1b
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->isInPlaybackState()Z
move-result v2
if-eqz v2, :cond_7c
if-eqz v0, :cond_7c
iget-object v2, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
if-eqz v2, :cond_7c
const/16 v2, 0x4f
if-eq p1, v2, :cond_2f
const/16 v2, 0x55
if-ne p1, v2, :cond_4b
:cond_2f
iget-object v2, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
move-result v2
if-eqz v2, :cond_42
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->pause()V
iget-object v2, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v2}, Landroid/widget/MediaController;->show()V
:goto_3f
:cond_3f
return v1
:cond_40
const/4 v0, 0x0
goto :goto_1b
:cond_42
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->start()V
iget-object v2, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V
goto :goto_3f
:cond_4b
const/16 v2, 0x7e
if-ne p1, v2, :cond_60
iget-object v2, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
move-result v2
if-nez v2, :cond_3f
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->start()V
iget-object v2, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V
goto :goto_3f
:cond_60
const/16 v2, 0x56
if-eq p1, v2, :cond_68
const/16 v2, 0x7f
if-ne p1, v2, :cond_79
:cond_68
iget-object v2, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
move-result v2
if-eqz v2, :cond_3f
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->pause()V
iget-object v2, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v2}, Landroid/widget/MediaController;->show()V
goto :goto_3f
:cond_79
invoke-direct {p0}, Lco/vine/android/player/OldSdkVideoView;->toggleMediaControlsVisiblity()V
:cond_7c
invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v1
goto :goto_3f
.end method
.method protected onMeasure(II)V
.registers 12
const/high16 v7, 0x4000
const/high16 v8, -0x8000
iget v6, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
invoke-static {v6, p1}, Lco/vine/android/player/OldSdkVideoView;->getDefaultSize(II)I
move-result v3
iget v6, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
invoke-static {v6, p2}, Lco/vine/android/player/OldSdkVideoView;->getDefaultSize(II)I
move-result v0
iget v6, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
if-lez v6, :cond_3d
iget v6, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
if-lez v6, :cond_3d
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v4
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v5
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v1
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v2
if-ne v4, v7, :cond_51
if-ne v1, v7, :cond_51
move v3, v5
move v0, v2
iget v6, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
mul-int/2addr v6, v0
iget v7, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
mul-int/2addr v7, v3
if-ge v6, v7, :cond_41
iget v6, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
mul-int/2addr v6, v0
iget v7, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
div-int v3, v6, v7
:goto_3d
:cond_3d
invoke-virtual {p0, v3, v0}, Lco/vine/android/player/OldSdkVideoView;->setMeasuredDimension(II)V
return-void
:cond_41
iget v6, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
mul-int/2addr v6, v0
iget v7, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
mul-int/2addr v7, v3
if-le v6, v7, :cond_3d
iget v6, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
mul-int/2addr v6, v3
iget v7, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
div-int v0, v6, v7
goto :goto_3d
:cond_51
if-ne v4, v7, :cond_61
move v3, v5
iget v6, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
mul-int/2addr v6, v3
iget v7, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
div-int v0, v6, v7
if-ne v1, v8, :cond_3d
if-le v0, v2, :cond_3d
move v0, v2
goto :goto_3d
:cond_61
if-ne v1, v7, :cond_71
move v0, v2
iget v6, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
mul-int/2addr v6, v0
iget v7, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
div-int v3, v6, v7
if-ne v4, v8, :cond_3d
if-le v3, v5, :cond_3d
move v3, v5
goto :goto_3d
:cond_71
iget v3, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
iget v0, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
if-ne v1, v8, :cond_81
if-le v0, v2, :cond_81
move v0, v2
iget v6, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
mul-int/2addr v6, v0
iget v7, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
div-int v3, v6, v7
:cond_81
if-ne v4, v8, :cond_3d
if-le v3, v5, :cond_3d
move v3, v5
iget v6, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
mul-int/2addr v6, v3
iget v7, p0, Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
div-int v0, v6, v7
goto :goto_3d
.end method
.method public onPrepared()V
.registers 3
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_16
iget v0, p0, Lco/vine/android/player/OldSdkVideoView;->mCurrentState:I
const/4 v1, 0x2
if-ne v0, v1, :cond_16
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
if-eqz v0, :cond_16
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V
:cond_16
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
if-eqz v0, :cond_d
invoke-direct {p0}, Lco/vine/android/player/OldSdkVideoView;->toggleMediaControlsVisiblity()V
:cond_d
const/4 v0, 0x0
return v0
.end method
.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
.registers 3
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
if-eqz v0, :cond_d
invoke-direct {p0}, Lco/vine/android/player/OldSdkVideoView;->toggleMediaControlsVisiblity()V
:cond_d
const/4 v0, 0x0
return v0
.end method
.method public pause()V
.registers 3
const/4 v1, 0x4
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
iput v1, p0, Lco/vine/android/player/OldSdkVideoView;->mCurrentState:I
:cond_16
iput v1, p0, Lco/vine/android/player/OldSdkVideoView;->mTargetState:I
return-void
.end method
.method public removeVideoUri()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mUri:Landroid/net/Uri;
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/player/OldSdkVideoView;->mSeekWhenPrepared:I
return-void
.end method
.method public resolveAdjustedSize(II)I
.registers 4
invoke-static {p1, p2}, Lco/vine/android/player/OldSdkVideoView;->getDefaultSize(II)I
move-result v0
return v0
.end method
.method public resume()V
.registers 2
iget-boolean v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMuted:Z
if-nez v0, :cond_18
const/4 v0, 0x1
:goto_5
iput-boolean v0, p0, Lco/vine/android/player/OldSdkVideoView;->mWasMuted:Z
iget-boolean v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMuted:Z
invoke-virtual {p0, v0}, Lco/vine/android/player/OldSdkVideoView;->setMute(Z)V
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
:goto_17
return-void
:cond_18
const/4 v0, 0x0
goto :goto_5
:cond_1a
invoke-direct {p0}, Lco/vine/android/player/OldSdkVideoView;->openVideo()V
goto :goto_17
.end method
.method public seekTo(I)V
.registers 3
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/player/OldSdkVideoView;->mSeekWhenPrepared:I
:goto_e
return-void
:cond_f
iput p1, p0, Lco/vine/android/player/OldSdkVideoView;->mSeekWhenPrepared:I
goto :goto_e
.end method
.method public setAutoPlayOnPrepared(Z)V
.registers 2
iput-boolean p1, p0, Lco/vine/android/player/OldSdkVideoView;->mAutoPlay:Z
return-void
.end method
.method public setLooping(Z)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/player/OldSdkVideoView;->mLooping:Z
return-void
.end method
.method public setMediaController(Landroid/widget/MediaController;)V
.registers 3
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V
:cond_9
iput-object p1, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-direct {p0}, Lco/vine/android/player/OldSdkVideoView;->attachMediaController()V
return-void
.end method
.method public setMute(Z)V
.registers 6
const/high16 v3, 0x3f80
const/4 v2, 0x0
iput-boolean p1, p0, Lco/vine/android/player/OldSdkVideoView;->mMuted:Z
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_1a
iget-boolean v0, p0, Lco/vine/android/player/OldSdkVideoView;->mWasMuted:Z
iget-boolean v1, p0, Lco/vine/android/player/OldSdkVideoView;->mMuted:Z
if-eq v0, v1, :cond_1a
iget-boolean v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMuted:Z
if-eqz v0, :cond_1f
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
:goto_1a
:cond_1a
iget-boolean v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMuted:Z
iput-boolean v0, p0, Lco/vine/android/player/OldSdkVideoView;->mWasMuted:Z
return-void
:cond_1f
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V
goto :goto_1a
.end method
.method public setOnCompletionListener(Lco/vine/android/player/VideoViewInterface$OnCompletionListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/player/OldSdkVideoView;->mOnCompletionListener:Lco/vine/android/player/VideoViewInterface$OnCompletionListener;
return-void
.end method
.method public setOnErrorListener(Lco/vine/android/player/VideoViewInterface$OnErrorListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/player/OldSdkVideoView;->mOnErrorListener:Lco/vine/android/player/VideoViewInterface$OnErrorListener;
return-void
.end method
.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/player/OldSdkVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
return-void
.end method
.method public setOnPreparedListener(Lco/vine/android/player/VideoViewInterface$OnPreparedListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/player/OldSdkVideoView;->mCustomOnPreParedListener:Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
return-void
.end method
.method public setReportOpenVideoError(Z)V
.registers 2
iput-boolean p1, p0, Lco/vine/android/player/OldSdkVideoView;->mReportVideoError:Z
return-void
.end method
.method public setVideoPath(Ljava/lang/String;)V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lco/vine/android/provider/VineVideoProvider;->CONTENT_AUTHORITY:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {p0, v0}, Lco/vine/android/player/OldSdkVideoView;->setVideoURI(Landroid/net/Uri;)V
return-void
.end method
.method public setVideoPathDirect(Ljava/lang/String;)V
.registers 3
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {p0, v0}, Lco/vine/android/player/OldSdkVideoView;->setVideoURI(Landroid/net/Uri;)V
return-void
.end method
.method public setVideoURI(Landroid/net/Uri;)V
.registers 3
iput-object p1, p0, Lco/vine/android/player/OldSdkVideoView;->mUri:Landroid/net/Uri;
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/player/OldSdkVideoView;->mSeekWhenPrepared:I
invoke-direct {p0}, Lco/vine/android/player/OldSdkVideoView;->openVideo()V
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->requestLayout()V
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->invalidate()V
return-void
.end method
.method public start()V
.registers 3
const/4 v1, 0x3
invoke-virtual {p0}, Lco/vine/android/player/OldSdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_e
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
iput v1, p0, Lco/vine/android/player/OldSdkVideoView;->mCurrentState:I
:cond_e
iput v1, p0, Lco/vine/android/player/OldSdkVideoView;->mTargetState:I
return-void
.end method
.method public stopPlayback()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
if-eqz v0, :cond_20
const-string v0, "Playback stopped."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:try_start_a
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
:try_start_f
:goto_f
:try_end_f
.catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_f} :catch_25
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_14} :catch_23
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
:try_end_19
.catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_19} :catch_21
:goto_19
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
iput v1, p0, Lco/vine/android/player/OldSdkVideoView;->mCurrentState:I
iput v1, p0, Lco/vine/android/player/OldSdkVideoView;->mTargetState:I
:cond_20
return-void
:catch_21
move-exception v0
goto :goto_19
:catch_23
move-exception v0
goto :goto_14
:catch_25
move-exception v0
goto :goto_f
.end method
.method public suspend()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lco/vine/android/player/OldSdkVideoView;->release(Z)V
return-void
.end method