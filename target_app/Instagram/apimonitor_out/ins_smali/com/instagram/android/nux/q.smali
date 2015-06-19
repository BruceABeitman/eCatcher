.class final Lcom/instagram/android/nux/q;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/os/Bundle;
.field final synthetic b:Lcom/instagram/android/nux/n;
.method constructor <init>(Lcom/instagram/android/nux/n;Landroid/os/Bundle;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/nux/q;->b:Lcom/instagram/android/nux/n;
iput-object p2, p0, Lcom/instagram/android/nux/q;->a:Landroid/os/Bundle;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
new-instance v0, Lcom/instagram/base/a/a/a;
iget-object v1, p0, Lcom/instagram/android/nux/q;->b:Lcom/instagram/android/nux/n;
invoke-virtual {v1}, Lcom/instagram/android/nux/n;->p()Landroid/support/v4/app/s;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v1, Lcom/instagram/android/login/fragment/an;
invoke-direct {v1}, Lcom/instagram/android/login/fragment/an;-><init>()V
iget-object v2, p0, Lcom/instagram/android/nux/q;->a:Landroid/os/Bundle;
invoke-virtual {v0, v1, v2}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method