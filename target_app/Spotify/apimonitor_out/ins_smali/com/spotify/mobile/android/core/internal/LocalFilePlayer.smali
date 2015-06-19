.class public Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static sLocalFilePlayerListeners:Ljava/util/ArrayList;
.field  mMediaPlayer:Landroid/media/MediaPlayer;
.field private nThis:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->sLocalFilePlayerListeners:Ljava/util/ArrayList;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$000(Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->onPlaybackComplete()V
return-void
.end method
.method public static addListener(Lcom/spotify/mobile/android/core/internal/LocalFilePlayer$LocalFilePlayerListener;)V
.registers 2
sget-object v0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->sLocalFilePlayerListeners:Ljava/util/ArrayList;
invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method private native onPlaybackComplete()V
.end method
.method public static removeListener(Lcom/spotify/mobile/android/core/internal/LocalFilePlayer$LocalFilePlayerListener;)V
.registers 2
sget-object v0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->sLocalFilePlayerListeners:Ljava/util/ArrayList;
invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public close()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
if-eqz v0, :cond_28
sget-object v0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->sLocalFilePlayerListeners:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_20
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer$LocalFilePlayerListener;
iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v2}, Landroid/media/MediaPlayer;->getAudioSessionId()I
move-result v2
invoke-interface {v0, v2}, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer$LocalFilePlayerListener;->onMediaPlayerDestroyed(I)V
goto :goto_a
:cond_20
iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
:cond_28
return-void
.end method
.method public getDuration()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getPosition()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public open(Ljava/lang/String;)Z
.registers 5
new-instance v0, Landroid/media/MediaPlayer;
invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
:try_start_7
iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
new-instance v1, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer$1;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer$1;-><init>(Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;)V
invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
sget-object v0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->sLocalFilePlayerListeners:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_21
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer$LocalFilePlayerListener;
iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v2}, Landroid/media/MediaPlayer;->getAudioSessionId()I
move-result v2
invoke-interface {v0, v2}, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer$LocalFilePlayerListener;->onMediaPlayerCreated(I)V
:try_end_36
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_36} :catch_37
goto :goto_21
:catch_37
move-exception v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->close()V
const/4 v0, 0x0
:goto_3c
return v0
:cond_3d
const/4 v0, 0x1
goto :goto_3c
.end method
.method public pause()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
:cond_9
return-void
.end method
.method public play()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
:cond_9
return-void
.end method
.method public seek(I)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/LocalFilePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
:cond_9
return-void
.end method