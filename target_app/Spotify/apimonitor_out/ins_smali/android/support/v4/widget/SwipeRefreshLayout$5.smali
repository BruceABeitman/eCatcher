.class final Landroid/support/v4/widget/SwipeRefreshLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/support/v4/widget/SwipeRefreshLayout;
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$5;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$5;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->h(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$5;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$5;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->i(Landroid/support/v4/widget/SwipeRefreshLayout;)I
move-result v1
iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$5;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-virtual {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I
move-result v2
add-int/2addr v1, v2
iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$5;->a:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-static {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->j(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;
move-result-object v2
invoke-static {v0, v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout;ILandroid/view/animation/Animation$AnimationListener;)V
return-void
.end method