.class final Lcom/bbm/ui/activities/o;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"
.implements Lcom/bbm/ui/k;
.field final synthetic a:Lcom/bbm/ui/activities/AudioPlayerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/AudioPlayerActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/o;->a:Lcom/bbm/ui/activities/AudioPlayerActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(F)V
.registers 6
iget-object v0, p0, Lcom/bbm/ui/activities/o;->a:Lcom/bbm/ui/activities/AudioPlayerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AudioPlayerActivity;->a(Lcom/bbm/ui/activities/AudioPlayerActivity;)Landroid/media/MediaPlayer;
move-result-object v0
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/bbm/ui/activities/o;->a:Lcom/bbm/ui/activities/AudioPlayerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AudioPlayerActivity;->a(Lcom/bbm/ui/activities/AudioPlayerActivity;)Landroid/media/MediaPlayer;
move-result-object v0
invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
move-result v0
int-to-float v0, v0
mul-float/2addr v0, p1
float-to-int v0, v0
iget-object v1, p0, Lcom/bbm/ui/activities/o;->a:Lcom/bbm/ui/activities/AudioPlayerActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/AudioPlayerActivity;->b(Lcom/bbm/ui/activities/AudioPlayerActivity;)Lcom/bbm/ui/AudioProgressBar;
move-result-object v1
int-to-long v2, v0
invoke-virtual {v1, v2, v3}, Lcom/bbm/ui/AudioProgressBar;->setCurrentTime(J)V
iget-object v1, p0, Lcom/bbm/ui/activities/o;->a:Lcom/bbm/ui/activities/AudioPlayerActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/AudioPlayerActivity;->a(Lcom/bbm/ui/activities/AudioPlayerActivity;)Landroid/media/MediaPlayer;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V
:cond_28
return-void
.end method