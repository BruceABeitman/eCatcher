.class final Lcom/instagram/creation/video/f/e;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/creation/video/f/a;
.method constructor <init>(Lcom/instagram/creation/video/f/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/f/e;->a:Lcom/instagram/creation/video/f/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/f/e;->a:Lcom/instagram/creation/video/f/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/instagram/creation/video/f/e;->a:Lcom/instagram/creation/video/f/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->D()Landroid/view/View;
move-result-object v0
sget v1, Lcom/facebook/av;->black_bg:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_19
return-void
.end method