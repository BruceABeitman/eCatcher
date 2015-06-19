.class final Lcom/instagram/creation/video/f/bq;
.super Ljava/lang/Object;
.source "VideoTrimFragment.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic a:D
.field final synthetic b:Lcom/instagram/creation/video/f/bp;
.method constructor <init>(Lcom/instagram/creation/video/f/bp;D)V
.registers 4
iput-object p1, p0, Lcom/instagram/creation/video/f/bq;->b:Lcom/instagram/creation/video/f/bp;
iput-wide p2, p0, Lcom/instagram/creation/video/f/bq;->a:D
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public final onAnimationStart(Landroid/view/animation/Animation;)V
.registers 5
iget-object v0, p0, Lcom/instagram/creation/video/f/bq;->b:Lcom/instagram/creation/video/f/bp;
iget-object v0, v0, Lcom/instagram/creation/video/f/bp;->a:Lcom/instagram/creation/video/f/bi;
invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->m(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/video/ui/FilmstripScrollView;
move-result-object v0
iget-wide v1, p0, Lcom/instagram/creation/video/f/bq;->a:D
double-to-int v1, v1
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->setScrollX(I)V
return-void
.end method