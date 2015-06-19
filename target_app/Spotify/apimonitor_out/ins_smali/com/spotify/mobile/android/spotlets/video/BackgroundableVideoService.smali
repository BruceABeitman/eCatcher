.class public Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
.super Landroid/app/Service;
.source "SourceFile"
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/spotify/mobile/android/spotlets/video/d;
.field private a:Landroid/media/MediaPlayer;
.field private b:Lcom/spotify/mobile/android/spotlets/video/a;
.field private c:Landroid/os/Handler;
.field private d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
.field private e:Ljava/util/Set;
.field private final f:Ljava/lang/Object;
.field private g:I
.field private h:Z
.field private i:Z
.field private j:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
.field private k:Lcom/spotify/mobile/android/spotlets/video/g;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Service;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/spotlets/video/a;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/video/a;-><init>(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->b:Lcom/spotify/mobile/android/spotlets/video/a;
sget-object v0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->e:Ljava/util/Set;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->f:Ljava/lang/Object;
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
.registers 5
const-string v0, "getIntent : %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v0, Landroid/content/Intent;
invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-class v1, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->f:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;I)V
.registers 5
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->h:Z
if-nez v0, :cond_19
iget v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->g:I
if-ge v0, p1, :cond_19
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->h:Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->j:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->i()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->k:Lcom/spotify/mobile/android/spotlets/video/g;
sget-object v1, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->b:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->j:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/video/g;->a(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
:cond_19
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x1000
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
const-string v1, "com.spotify.mobile.android.spotlets.video.BackgroundableVideoPlayerActivityEXTRA_TITLE"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/4 v1, 0x1
invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v0
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->e:Ljava/util/Set;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)Landroid/media/MediaPlayer;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)Landroid/media/MediaPlayer;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
return-object v0
.end method
.method private k()V
.registers 5
const/4 v3, 0x1
iput-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->i:Z
sget-object v0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
if-ne v0, v1, :cond_2d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->j:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->a()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->k:Lcom/spotify/mobile/android/spotlets/video/g;
sget-object v1, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->a:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->j:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/video/g;->a(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
move-result v0
if-nez v0, :cond_28
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
:cond_28
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->c:Landroid/os/Handler;
invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
:cond_2d
return-void
.end method
.method private l()Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
sget-object v1, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method private m()V
.registers 2
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d()Z
move-result v0
if-eqz v0, :cond_a
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->f()V
:goto_9
return-void
:cond_a
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->g()V
goto :goto_9
.end method
.method public final a()Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
return-object v0
.end method
.method public final a(I)V
.registers 3
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->l()Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
:cond_b
return-void
.end method
.method public final a(Landroid/view/SurfaceView;Landroid/view/Display;)V
.registers 5
const-string v0, "setForegroundSurface called"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
if-eqz p1, :cond_2d
invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;
move-result-object v0
invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;
move-result-object v0
:goto_12
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
if-eqz v1, :cond_1b
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
:cond_1b
if-eqz v0, :cond_22
if-eqz p2, :cond_22
invoke-virtual {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->b(Landroid/view/SurfaceView;Landroid/view/Display;)V
:cond_22
new-instance v0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$2;-><init>(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->c:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
:cond_2d
const/4 v0, 0x0
goto :goto_12
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/video/b;)V
.registers 5
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->f:Ljava/lang/Object;
monitor-enter v1
:try_start_3
const-string v0, "registerListener"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->e:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
monitor-exit v1
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_12
return-void
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->i:Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->j:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->a(Ljava/lang/String;)V
const/16 v0, 0x7530
iput v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->g:I
:try_start_c
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
sget-object v0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->g:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
sget-object v0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
:cond_2a
new-instance v0, Landroid/media/MediaPlayer;
invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
sget-object v0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->b:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
sget-object v0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->c:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->getApplicationContext()Landroid/content/Context;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V
:goto_61
:try_end_61
.catch Ljava/io/IOException; {:try_start_c .. :try_end_61} :catch_62
return-void
:catch_62
move-exception v0
goto :goto_61
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
.registers 8
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->j:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->j:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->b(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->j:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
invoke-virtual {v0, p3, p4}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->a(J)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->j:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
invoke-virtual {v0, p5}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->c(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->j:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
invoke-virtual {v0, p6}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->d(Ljava/lang/String;)V
return-void
.end method
.method public final b()I
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->l()Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
move-result v0
goto :goto_7
.end method
.method public final b(Landroid/view/SurfaceView;Landroid/view/Display;)V
.registers 7
const-string v0, "resetVideoSize"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->l()Z
move-result v0
if-eqz v0, :cond_4b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I
move-result v1
int-to-float v0, v0
int-to-float v1, v1
div-float v1, v0, v1
new-instance v2, Landroid/graphics/Point;
invoke-direct {v2}, Landroid/graphics/Point;-><init>()V
invoke-virtual {p2, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
iget v0, v2, Landroid/graphics/Point;->x:I
int-to-float v0, v0
iget v3, v2, Landroid/graphics/Point;->y:I
int-to-float v3, v3
div-float v3, v0, v3
invoke-virtual {p1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout$LayoutParams;
cmpl-float v3, v1, v3
if-lez v3, :cond_4c
iget v3, v2, Landroid/graphics/Point;->x:I
iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I
iget v2, v2, Landroid/graphics/Point;->x:I
int-to-float v2, v2
div-float v1, v2, v1
float-to-int v1, v1
iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I
:goto_44
const/16 v1, 0x11
iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_4b
return-void
:cond_4c
iget v3, v2, Landroid/graphics/Point;->y:I
int-to-float v3, v3
mul-float/2addr v1, v3
float-to-int v1, v1
iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I
iget v1, v2, Landroid/graphics/Point;->y:I
iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I
goto :goto_44
.end method
.method public final b(Lcom/spotify/mobile/android/spotlets/video/b;)V
.registers 5
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->f:Ljava/lang/Object;
monitor-enter v1
:try_start_3
const-string v0, "unregisterListener"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->e:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
monitor-exit v1
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_12
return-void
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final c()I
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->l()Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
move-result v0
goto :goto_7
.end method
.method public final d()Z
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->l()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
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
.method public final e()I
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->l()Z
move-result v0
if-nez v0, :cond_7
:cond_7
return v1
.end method
.method public final f()V
.registers 4
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->l()Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->j:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->k:Lcom/spotify/mobile/android/spotlets/video/g;
sget-object v1, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->b:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->j:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/video/g;->a(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
:cond_1a
return-void
.end method
.method public final g()V
.registers 4
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->l()Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->j:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->k:Lcom/spotify/mobile/android/spotlets/video/g;
sget-object v1, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->b:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->j:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/video/g;->a(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
:cond_1a
return-void
.end method
.method public final h()V
.registers 3
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->l()Z
move-result v0
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
:cond_c
return-void
.end method
.method public final i()V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->l()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->onCompletion(Landroid/media/MediaPlayer;)V
:cond_10
return-void
.end method
.method public final j()Z
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->l()Z
move-result v0
if-eqz v0, :cond_c
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->h:Z
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 4
const-string v0, "onBind"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->b:Lcom/spotify/mobile/android/spotlets/video/a;
return-object v0
.end method
.method public onCompletion(Landroid/media/MediaPlayer;)V
.registers 6
const/4 v3, 0x0
const-string v0, "onCompletion"
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
sget-object v0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->e:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->k:Lcom/spotify/mobile/android/spotlets/video/g;
sget-object v1, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->c:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->j:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/video/g;->a(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->f:Ljava/lang/Object;
monitor-enter v1
:try_start_18
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->e:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_1e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_31
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/video/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/video/b;->a()V
:try_end_2d
.catchall {:try_start_18 .. :try_end_2d} :catchall_2e
goto :goto_1e
:catchall_2e
move-exception v0
monitor-exit v1
throw v0
:cond_31
:try_start_31
monitor-exit v1
:try_end_32
.catchall {:try_start_31 .. :try_end_32} :catchall_2e
const-string v0, "tearDown called"
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$3;-><init>(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->c:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public onCreate()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onCreate()V
const-string v0, "onCreate"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->j()Z
move-result v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;-><init>(Z)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->j:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
new-instance v0, Lcom/spotify/mobile/android/spotlets/video/g;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/video/g;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->k:Lcom/spotify/mobile/android/spotlets/video/g;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->k:Lcom/spotify/mobile/android/spotlets/video/g;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/video/g;->a()V
new-instance v0, Landroid/os/HandlerThread;
const-string v1, "background"
invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
new-instance v1, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$1;
invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v0
invoke-direct {v1, p0, v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$1;-><init>(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;Landroid/os/Looper;)V
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->c:Landroid/os/Handler;
const-string v1, " - Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "onDestroy"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->k:Lcom/spotify/mobile/android/spotlets/video/g;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/video/g;->close()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
sget-object v0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->g:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
sget-object v0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
:cond_21
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->c:Landroid/os/Handler;
invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Looper;->quit()V
invoke-super {p0}, Landroid/app/Service;->onDestroy()V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onError(Landroid/media/MediaPlayer;II)Z
.registers 5
sget-object v0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->h:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
sget-object v0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->g:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a:Landroid/media/MediaPlayer;
sget-object v0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
:cond_18
const/4 v0, 0x1
return v0
.end method
.method public onInfo(Landroid/media/MediaPlayer;II)Z
.registers 7
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->f:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->e:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/video/b;
invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/spotlets/video/b;->b(I)V
:try_end_18
.catchall {:try_start_3 .. :try_end_18} :catchall_19
goto :goto_9
:catchall_19
move-exception v0
monitor-exit v1
throw v0
:try_start_1c
:cond_1c
monitor-exit v1
:try_end_1d
.catchall {:try_start_1c .. :try_end_1d} :catchall_19
const/4 v0, 0x1
return v0
.end method
.method public onPrepared(Landroid/media/MediaPlayer;)V
.registers 6
const-string v0, "onPrepared"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
sget-object v0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->f:Ljava/lang/Object;
monitor-enter v1
:try_start_f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->e:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_15
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/video/b;
invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I
move-result v3
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/spotlets/video/b;->e(I)V
:try_end_28
.catchall {:try_start_f .. :try_end_28} :catchall_29
goto :goto_15
:catchall_29
move-exception v0
monitor-exit v1
throw v0
:try_start_2c
:cond_2c
monitor-exit v1
:try_end_2d
.catchall {:try_start_2c .. :try_end_2d} :catchall_29
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->i:Z
if-eqz v0, :cond_34
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->k()V
:cond_34
return-void
.end method
.method public onStartCommand(Landroid/content/Intent;II)I
.registers 8
const/4 v2, 0x1
const/4 v3, 0x0
const-string v0, "onStartCommand"
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_26
const-string v1, "com.spotify.music.service.video.action.player.DISPLAY_VIDEO"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_28
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->d()Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->j:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->a()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Ljava/lang/String;)V
:goto_26
:cond_26
const/4 v0, 0x2
return v0
:cond_28
const-string v1, "com.spotify.music.service.video.action.player.START_VIDEO"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_34
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->k()V
goto :goto_26
:cond_34
const-string v1, "com.spotify.music.service.video.action.media_button"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_75
const-string v0, "android.intent.extra.KEY_EVENT"
invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/view/KeyEvent;
if-eqz v0, :cond_26
invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I
move-result v1
if-ne v1, v2, :cond_26
invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v1
sparse-switch v1, :sswitch_data_b2
const-string v1, "Unexpected keycode : %d"
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v2, v3
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_26
:sswitch_65
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->m()V
goto :goto_26
:sswitch_69
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->i()V
goto :goto_26
:sswitch_6d
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->h()V
goto :goto_26
:sswitch_71
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->f()V
goto :goto_26
:cond_75
const-string v1, "com.spotify.music.service.video.action.player.TOGGLE_PAUSED"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_81
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->m()V
goto :goto_26
:cond_81
const-string v1, "com.spotify.music.service.video.action.player.NEXT"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_8d
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->i()V
goto :goto_26
:cond_8d
const-string v1, "com.spotify.music.service.video.action.player.PREVIOUS"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_99
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->h()V
goto :goto_26
:cond_99
const-string v1, "com.spotify.music.service.video.action.player.PAUSE"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_a5
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->f()V
goto :goto_26
:cond_a5
const-string v1, "com.spotify.music.service.video.action.player.PLAY"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->g()V
goto/16 :goto_26
:sswitch_data_b2
.sparse-switch
0x4f -> :sswitch_71
0x55 -> :sswitch_65
0x57 -> :sswitch_69
0x58 -> :sswitch_6d
.end sparse-switch
.end method
.method public onUnbind(Landroid/content/Intent;)Z
.registers 5
const/4 v2, 0x0
const-string v0, "onUnbind"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
return v2
.end method