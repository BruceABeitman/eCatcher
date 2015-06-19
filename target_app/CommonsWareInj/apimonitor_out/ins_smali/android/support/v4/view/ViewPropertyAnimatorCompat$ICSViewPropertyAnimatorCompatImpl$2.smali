.class  Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$2;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;
.field final synthetic this$0:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;
.field final synthetic val$runnable:Ljava/lang/Runnable;
.method constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;Ljava/lang/Runnable;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$2;->this$0:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;
iput-object p2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$2;->val$runnable:Ljava/lang/Runnable;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationCancel(Landroid/view/View;)V
.registers 2
return-void
.end method
.method public onAnimationEnd(Landroid/view/View;)V
.registers 2
return-void
.end method
.method public onAnimationStart(Landroid/view/View;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$2;->val$runnable:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$2;->this$0:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;->setListener(Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V
return-void
.end method