.class final Lcom/instagram/creation/video/widget/b;
.super Ljava/lang/Object;
.source "IgScrubberProgressIndicator.java"
.implements Landroid/animation/Animator$AnimatorListener;
.field final synthetic a:Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;
.method constructor <init>(Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/widget/b;->a:Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onAnimationCancel(Landroid/animation/Animator;)V
.registers 2
return-void
.end method
.method public final onAnimationEnd(Landroid/animation/Animator;)V
.registers 4
iget-object v0, p0, Lcom/instagram/creation/video/widget/b;->a:Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;
invoke-static {v0}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a(Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/instagram/creation/video/widget/b;->a:Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;
iget-object v1, p0, Lcom/instagram/creation/video/widget/b;->a:Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;
invoke-static {v1}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->c(Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;)Ljava/lang/Runnable;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->post(Ljava/lang/Runnable;)Z
:cond_13
return-void
.end method
.method public final onAnimationRepeat(Landroid/animation/Animator;)V
.registers 2
return-void
.end method
.method public final onAnimationStart(Landroid/animation/Animator;)V
.registers 2
return-void
.end method