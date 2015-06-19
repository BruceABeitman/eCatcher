.class final Lcom/bbm/ui/activities/q;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.field final synthetic a:Lcom/bbm/ui/activities/AudioPlayerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/AudioPlayerActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/q;->a:Lcom/bbm/ui/activities/AudioPlayerActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCompletion(Landroid/media/MediaPlayer;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/q;->a:Lcom/bbm/ui/activities/AudioPlayerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AudioPlayerActivity;->e(Lcom/bbm/ui/activities/AudioPlayerActivity;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/bbm/ui/activities/r;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/r;-><init>(Lcom/bbm/ui/activities/q;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method