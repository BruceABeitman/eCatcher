.class final Lcom/instagram/android/login/fragment/ck;
.super Lcom/instagram/android/login/a/a;
.source "VerifyFragment.java"
.field final synthetic a:Lcom/instagram/android/login/fragment/ci;
.method constructor <init>(Lcom/instagram/android/login/fragment/ci;Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;Landroid/app/Activity;)V
.registers 6
iput-object p1, p0, Lcom/instagram/android/login/fragment/ck;->a:Lcom/instagram/android/login/fragment/ci;
invoke-direct {p0, p2, p3, p4, p5}, Lcom/instagram/android/login/a/a;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;Landroid/app/Activity;)V
return-void
.end method
.method protected final a(Lcom/instagram/user/c/a;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/android/login/a/a;->a(Lcom/instagram/user/c/a;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/ck;->a:Lcom/instagram/android/login/fragment/ci;
invoke-static {v0}, Lcom/instagram/android/login/fragment/ci;->d(Lcom/instagram/android/login/fragment/ci;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/login/fragment/cl;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/cl;-><init>(Lcom/instagram/android/login/fragment/ck;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/user/c/a;
invoke-virtual {p0, p1}, Lcom/instagram/android/login/fragment/ck;->a(Lcom/instagram/user/c/a;)V
return-void
.end method