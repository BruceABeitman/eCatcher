.class final Lcom/instagram/creation/video/f/bd;
.super Ljava/lang/Object;
.source "VideoFilterFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/creation/video/f/bb;
.method constructor <init>(Lcom/instagram/creation/video/f/bb;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/f/bd;->a:Lcom/instagram/creation/video/f/bb;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/creation/video/f/bd;->a:Lcom/instagram/creation/video/f/bb;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/bb;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/instagram/creation/video/f/bd;->a:Lcom/instagram/creation/video/f/bb;
invoke-static {v0}, Lcom/instagram/creation/video/f/bb;->b(Lcom/instagram/creation/video/f/bb;)Lcom/instagram/creation/video/l/h;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/video/f/bd;->a:Lcom/instagram/creation/video/f/bb;
invoke-virtual {v1}, Lcom/instagram/creation/video/f/bb;->X()Lcom/instagram/creation/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->J()Lcom/instagram/creation/b/a/a;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/l/h;->a(Lcom/instagram/creation/b/a/a;)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bd;->a:Lcom/instagram/creation/video/f/bb;
invoke-static {v0}, Lcom/instagram/creation/video/f/bb;->c(Lcom/instagram/creation/video/f/bb;)Lcom/instagram/creation/video/ui/LivePreviewTextureView;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/creation/video/f/bd;->a:Lcom/instagram/creation/video/f/bb;
invoke-static {v0}, Lcom/instagram/creation/video/f/bb;->d(Lcom/instagram/creation/video/f/bb;)Lcom/instagram/creation/base/ui/FilterPicker;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/instagram/creation/base/ui/FilterPicker;->setVisibility(I)V
:cond_2e
return-void
.end method