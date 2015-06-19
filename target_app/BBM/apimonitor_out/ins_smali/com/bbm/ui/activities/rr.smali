.class final Lcom/bbm/ui/activities/rr;
.super Ljava/lang/Object;
.source "GroupPictureCommentsActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/rq;
.method constructor <init>(Lcom/bbm/ui/activities/rq;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/rr;->a:Lcom/bbm/ui/activities/rq;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/high16 v1, 0x3f80
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v1, 0x5dc
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V
iget-object v1, p0, Lcom/bbm/ui/activities/rr;->a:Lcom/bbm/ui/activities/rq;
iget-object v1, v1, Lcom/bbm/ui/activities/rq;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->x(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method