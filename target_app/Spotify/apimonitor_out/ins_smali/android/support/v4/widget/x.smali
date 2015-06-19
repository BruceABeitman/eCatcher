.class  Landroid/support/v4/widget/x;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/widget/w;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
.registers 7
invoke-virtual {p2}, Landroid/view/View;->getLeft()I
move-result v0
invoke-virtual {p2}, Landroid/view/View;->getTop()I
move-result v1
invoke-virtual {p2}, Landroid/view/View;->getRight()I
move-result v2
invoke-virtual {p2}, Landroid/view/View;->getBottom()I
move-result v3
invoke-static {p1, v0, v1, v2, v3}, Landroid/support/v4/view/at;->a(Landroid/view/View;IIII)V
return-void
.end method