.class final Lcom/instagram/android/feed/a/a/i;
.super Lcom/instagram/ui/widget/base/a;
.source "FeedPeopleTagModule.java"
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Lcom/instagram/android/feed/a/a/f;
.method constructor <init>(Lcom/instagram/android/feed/a/a/f;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/feed/a/a/i;->b:Lcom/instagram/android/feed/a/a/f;
iput-object p2, p0, Lcom/instagram/android/feed/a/a/i;->a:Landroid/view/View;
invoke-direct {p0}, Lcom/instagram/ui/widget/base/a;-><init>()V
return-void
.end method
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/feed/a/a/i;->a:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method