.class final Lcom/bbm/ui/activities/t;
.super Lcom/bbm/j/k;
.source "AvatarViewerActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/AvatarViewerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/AvatarViewerActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/t;->a:Lcom/bbm/ui/activities/AvatarViewerActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/activities/t;->a:Lcom/bbm/ui/activities/AvatarViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AvatarViewerActivity;->a(Lcom/bbm/ui/activities/AvatarViewerActivity;)Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/t;->a:Lcom/bbm/ui/activities/AvatarViewerActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/AvatarViewerActivity;->b(Lcom/bbm/ui/activities/AvatarViewerActivity;)Lcom/bbm/ui/ObservingImageView;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/t;->a:Lcom/bbm/ui/activities/AvatarViewerActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/AvatarViewerActivity;->a(Lcom/bbm/ui/activities/AvatarViewerActivity;)Lcom/bbm/d/a;
move-result-object v2
iget-object v3, v0, Lcom/bbm/d/gp;->A:Ljava/lang/String;
iget-object v0, v0, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {v2, v3, v0}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
return-void
.end method