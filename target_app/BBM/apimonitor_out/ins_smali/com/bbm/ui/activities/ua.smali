.class final Lcom/bbm/ui/activities/ua;
.super Lcom/bbm/j/k;
.source "ImageViewerActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ImageViewerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ImageViewerActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/ua;->a:Lcom/bbm/ui/activities/ImageViewerActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 5
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ua;->a:Lcom/bbm/ui/activities/ImageViewerActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ImageViewerActivity;->e(Lcom/bbm/ui/activities/ImageViewerActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/ua;->a:Lcom/bbm/ui/activities/ImageViewerActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ImageViewerActivity;->f(Lcom/bbm/ui/activities/ImageViewerActivity;)Lcom/bbm/ui/TouchImageView;
move-result-object v2
iget-object v3, v1, Lcom/bbm/d/gp;->A:Ljava/lang/String;
iget-object v1, v1, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {v0, v3, v1}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/bbm/ui/TouchImageView;->setObservableImage(Lcom/bbm/j/r;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ua;->a:Lcom/bbm/ui/activities/ImageViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->g(Lcom/bbm/ui/activities/ImageViewerActivity;)Z
return-void
.end method