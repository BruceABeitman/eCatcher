.class final Landroid/support/v4/widget/t;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final a:Landroid/view/View;
.field final synthetic b:Landroid/support/v4/widget/SlidingPaneLayout;
.method constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/widget/t;->b:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Landroid/support/v4/widget/t;->a:Landroid/view/View;
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Landroid/support/v4/widget/t;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
iget-object v1, p0, Landroid/support/v4/widget/t;->b:Landroid/support/v4/widget/SlidingPaneLayout;
if-ne v0, v1, :cond_18
iget-object v0, p0, Landroid/support/v4/widget/t;->a:Landroid/view/View;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/support/v4/view/at;->a(Landroid/view/View;ILandroid/graphics/Paint;)V
iget-object v0, p0, Landroid/support/v4/widget/t;->b:Landroid/support/v4/widget/SlidingPaneLayout;
iget-object v1, p0, Landroid/support/v4/widget/t;->a:Landroid/view/View;
invoke-static {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
:cond_18
iget-object v0, p0, Landroid/support/v4/widget/t;->b:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->f(Landroid/support/v4/widget/SlidingPaneLayout;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
return-void
.end method