.class final Lcom/instagram/android/login/a/g;
.super Ljava/lang/Object;
.source "FacebookRecoveryCallbacks.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/login/c/f;
.field final synthetic b:Lcom/instagram/android/login/a/d;
.method constructor <init>(Lcom/instagram/android/login/a/d;Lcom/instagram/android/login/c/f;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/login/a/g;->b:Lcom/instagram/android/login/a/d;
iput-object p2, p0, Lcom/instagram/android/login/a/g;->a:Lcom/instagram/android/login/c/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "argument_reset_token"
iget-object v2, p0, Lcom/instagram/android/login/a/g;->a:Lcom/instagram/android/login/c/f;
invoke-virtual {v2}, Lcom/instagram/android/login/c/f;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "argument_user_id"
iget-object v2, p0, Lcom/instagram/android/login/a/g;->a:Lcom/instagram/android/login/c/f;
invoke-virtual {v2}, Lcom/instagram/android/login/c/f;->a()Lcom/instagram/user/c/a;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/instagram/base/a/a/a;
iget-object v2, p0, Lcom/instagram/android/login/a/g;->b:Lcom/instagram/android/login/a/d;
invoke-static {v2}, Lcom/instagram/android/login/a/d;->b(Lcom/instagram/android/login/a/d;)Landroid/support/v4/app/s;
move-result-object v2
invoke-direct {v1, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v2, Lcom/instagram/android/login/fragment/v;
invoke-direct {v2}, Lcom/instagram/android/login/fragment/v;-><init>()V
invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method