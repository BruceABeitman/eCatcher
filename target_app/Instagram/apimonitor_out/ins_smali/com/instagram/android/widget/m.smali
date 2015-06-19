.class final Lcom/instagram/android/widget/m;
.super Lcom/instagram/ui/widget/base/a;
.source "MediaActionsView.java"
.field final synthetic a:Lcom/instagram/android/widget/MediaActionsView;
.method constructor <init>(Lcom/instagram/android/widget/MediaActionsView;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/widget/m;->a:Lcom/instagram/android/widget/MediaActionsView;
invoke-direct {p0}, Lcom/instagram/ui/widget/base/a;-><init>()V
return-void
.end method
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/widget/m;->a:Lcom/instagram/android/widget/MediaActionsView;
invoke-static {v0}, Lcom/instagram/android/widget/MediaActionsView;->a(Lcom/instagram/android/widget/MediaActionsView;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method