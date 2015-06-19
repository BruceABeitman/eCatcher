.class final Lcom/instagram/creation/video/f/q;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/creation/video/f/a;
.method constructor <init>(Lcom/instagram/creation/video/f/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
iget-object v0, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_62
iget-object v0, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->D()Landroid/view/View;
move-result-object v0
sget v1, Lcom/facebook/av;->camcorder_spinner:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->D()Landroid/view/View;
move-result-object v0
sget v1, Lcom/facebook/av;->camcorder_content:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;
iget-object v1, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;
invoke-virtual {v1}, Lcom/instagram/creation/video/f/a;->D()Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/f/a;->a(Landroid/view/View;)V
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/b/a;->t()Z
move-result v0
if-nez v0, :cond_4b
iget-object v0, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->c(Lcom/instagram/creation/video/f/a;)Landroid/os/Handler;
move-result-object v0
const/16 v1, 0x10
const-wide/16 v2, 0x1f4
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
:cond_4b
iget-object v0, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->l(Lcom/instagram/creation/video/f/a;)Z
move-result v0
if-eqz v0, :cond_5d
iget-object v0, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->g(Lcom/instagram/creation/video/f/a;)V
iget-object v0, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->m(Lcom/instagram/creation/video/f/a;)Z
:cond_5d
iget-object v0, p0, Lcom/instagram/creation/video/f/q;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->n(Lcom/instagram/creation/video/f/a;)Z
:cond_62
return-void
.end method