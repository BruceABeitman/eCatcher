.class final Lcom/instagram/android/widget/n;
.super Lcom/instagram/ui/widget/base/a;
.source "MediaActionsView.java"
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Lcom/instagram/android/widget/MediaActionsView;
.method constructor <init>(Lcom/instagram/android/widget/MediaActionsView;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/widget/n;->b:Lcom/instagram/android/widget/MediaActionsView;
iput-object p2, p0, Lcom/instagram/android/widget/n;->a:Landroid/view/View;
invoke-direct {p0}, Lcom/instagram/ui/widget/base/a;-><init>()V
return-void
.end method
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/widget/n;->a:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method