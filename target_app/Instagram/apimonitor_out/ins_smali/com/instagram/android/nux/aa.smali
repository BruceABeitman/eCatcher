.class final Lcom/instagram/android/nux/aa;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/nux/z;
.method constructor <init>(Lcom/instagram/android/nux/z;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/nux/aa;->a:Lcom/instagram/android/nux/z;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 6
const/4 v4, 0x1
new-instance v0, Lcom/instagram/android/fragment/fj;
invoke-direct {v0}, Lcom/instagram/android/fragment/fj;-><init>()V
iget-object v0, p0, Lcom/instagram/android/nux/aa;->a:Lcom/instagram/android/nux/z;
iget-object v0, v0, Lcom/instagram/android/nux/z;->b:Lcom/instagram/android/nux/n;
invoke-virtual {v0}, Lcom/instagram/android/nux/n;->p()Landroid/support/v4/app/s;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/nux/aa;->a:Lcom/instagram/android/nux/z;
iget-object v1, v1, Lcom/instagram/android/nux/z;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/instagram/android/nux/aa;->a:Lcom/instagram/android/nux/z;
iget-object v2, v2, Lcom/instagram/android/nux/z;->b:Lcom/instagram/android/nux/n;
sget v3, Lcom/facebook/az;->find_friends_item_facebook_friends:I
invoke-virtual {v2, v3}, Lcom/instagram/android/nux/n;->c(I)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2, v4, v4}, Lcom/instagram/android/fragment/fj;->a(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method