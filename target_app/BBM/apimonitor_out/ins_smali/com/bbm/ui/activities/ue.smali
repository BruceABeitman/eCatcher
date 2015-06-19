.class final Lcom/bbm/ui/activities/ue;
.super Ljava/util/TimerTask;
.source "ImageViewerActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ImageViewerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ImageViewerActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ue;->a:Lcom/bbm/ui/activities/ImageViewerActivity;
invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/ue;->a:Lcom/bbm/ui/activities/ImageViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->h(Lcom/bbm/ui/activities/ImageViewerActivity;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/bbm/ui/activities/uf;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/uf;-><init>(Lcom/bbm/ui/activities/ue;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method