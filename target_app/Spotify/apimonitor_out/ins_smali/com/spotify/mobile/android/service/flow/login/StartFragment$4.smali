.class final Lcom/spotify/mobile/android/service/flow/login/StartFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$4;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onPrepared(Landroid/media/MediaPlayer;)V
.registers 3
sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->e:Z
if-eqz v0, :cond_8
const/4 v0, 0x2
:try_start_5
invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V
:cond_8
:try_end_8
.catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_8} :catch_11
const/4 v0, 0x1
invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V
const/4 v0, 0x0
invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V
:goto_10
return-void
:catch_11
move-exception v0
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$4;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V
goto :goto_10
.end method