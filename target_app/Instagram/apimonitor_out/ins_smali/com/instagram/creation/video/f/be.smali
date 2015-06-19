.class final Lcom/instagram/creation/video/f/be;
.super Ljava/lang/Object;
.source "VideoFilterFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/creation/video/f/bb;
.method constructor <init>(Lcom/instagram/creation/video/f/bb;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/f/be;->a:Lcom/instagram/creation/video/f/bb;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/instagram/creation/video/f/be;->a:Lcom/instagram/creation/video/f/bb;
invoke-static {v0}, Lcom/instagram/creation/video/f/bb;->d(Lcom/instagram/creation/video/f/bb;)Lcom/instagram/creation/base/ui/FilterPicker;
move-result-object v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/instagram/creation/video/f/be;->a:Lcom/instagram/creation/video/f/bb;
invoke-static {v0}, Lcom/instagram/creation/video/f/bb;->d(Lcom/instagram/creation/video/f/bb;)Lcom/instagram/creation/base/ui/FilterPicker;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/video/f/be;->a:Lcom/instagram/creation/video/f/bb;
invoke-virtual {v1}, Lcom/instagram/creation/video/f/bb;->j()Landroid/os/Bundle;
move-result-object v1
const-string v2, "VideoFilterFragment.FILTER_SCROLL_X"
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v1
invoke-virtual {v0, v1, v3}, Lcom/instagram/creation/base/ui/FilterPicker;->smoothScrollTo(II)V
:cond_1e
return-void
.end method