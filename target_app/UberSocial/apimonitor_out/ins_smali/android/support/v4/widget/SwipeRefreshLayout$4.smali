.class  Landroid/support/v4/widget/SwipeRefreshLayout$4;
.super Landroid/support/v4/widget/SwipeRefreshLayout$BaseAnimationListener;
.source "SourceFile"
.field final synthetic this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout$BaseAnimationListener;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/support/v4/widget/SwipeRefreshLayout$1;)V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
const/4 v1, 0x0
#setter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F
invoke-static {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$802(Landroid/support/v4/widget/SwipeRefreshLayout;F)F
return-void
.end method