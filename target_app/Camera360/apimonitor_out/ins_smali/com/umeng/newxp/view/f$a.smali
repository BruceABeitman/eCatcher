.class  Lcom/umeng/newxp/view/f$a;
.super Ljava/lang/Object;
.source "Banner.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field  a:Landroid/view/animation/Animation;
.field  b:Landroid/view/animation/Animation;
.field final synthetic c:Lcom/umeng/newxp/view/f;
.method public constructor <init>(Lcom/umeng/newxp/view/f;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
.registers 6
iput-object p1, p0, Lcom/umeng/newxp/view/f$a;->c:Lcom/umeng/newxp/view/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/umeng/newxp/view/f$a;->a:Landroid/view/animation/Animation;
iput-object p3, p0, Lcom/umeng/newxp/view/f$a;->b:Landroid/view/animation/Animation;
invoke-static {}, Lcom/umeng/newxp/view/f;->b()I
move-result v0
int-to-long v0, v0
invoke-virtual {p3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V
invoke-static {}, Lcom/umeng/newxp/view/f;->b()I
move-result v0
int-to-long v0, v0
invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V
invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
return-void
.end method
.method public constructor <init>(Lcom/umeng/newxp/view/f;Landroid/view/animation/Animation;Landroid/view/animation/Animation;J)V
.registers 6
iput-object p1, p0, Lcom/umeng/newxp/view/f$a;->c:Lcom/umeng/newxp/view/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/umeng/newxp/view/f$a;->a:Landroid/view/animation/Animation;
iput-object p3, p0, Lcom/umeng/newxp/view/f$a;->b:Landroid/view/animation/Animation;
invoke-virtual {p3, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V
invoke-virtual {p2, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V
invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lcom/umeng/newxp/view/f$a;->c:Lcom/umeng/newxp/view/f;
invoke-static {v0}, Lcom/umeng/newxp/view/f;->a(Lcom/umeng/newxp/view/f;)Landroid/widget/ViewSwitcher;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I
move-result v0
packed-switch v0, :pswitch_data_2e
:goto_d
return-void
:pswitch_e
iget-object v0, p0, Lcom/umeng/newxp/view/f$a;->c:Lcom/umeng/newxp/view/f;
iget-object v1, p0, Lcom/umeng/newxp/view/f$a;->c:Lcom/umeng/newxp/view/f;
invoke-static {v1}, Lcom/umeng/newxp/view/f;->b(Lcom/umeng/newxp/view/f;)Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/umeng/newxp/a/c;->J(Landroid/content/Context;)I
move-result v1
invoke-static {v0, v1}, Lcom/umeng/newxp/view/f;->a(Lcom/umeng/newxp/view/f;I)V
goto :goto_d
:pswitch_1e
iget-object v0, p0, Lcom/umeng/newxp/view/f$a;->c:Lcom/umeng/newxp/view/f;
iget-object v1, p0, Lcom/umeng/newxp/view/f$a;->c:Lcom/umeng/newxp/view/f;
invoke-static {v1}, Lcom/umeng/newxp/view/f;->b(Lcom/umeng/newxp/view/f;)Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/umeng/newxp/a/c;->K(Landroid/content/Context;)I
move-result v1
invoke-static {v0, v1}, Lcom/umeng/newxp/view/f;->a(Lcom/umeng/newxp/view/f;I)V
goto :goto_d
:pswitch_data_2e
.packed-switch 0x0
:pswitch_e
:pswitch_1e
.end packed-switch
.end method
.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public onAnimationStart(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method