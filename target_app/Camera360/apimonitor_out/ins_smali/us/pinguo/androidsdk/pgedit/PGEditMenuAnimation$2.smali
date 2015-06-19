.class  Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$2;
.super Ljava/lang/Object;
.source "PGEditMenuAnimation.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;)Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x7
invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
return-void
.end method
.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public onAnimationStart(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method