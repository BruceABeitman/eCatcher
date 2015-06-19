.class final Lcom/instagram/android/login/fragment/bb;
.super Lcom/instagram/android/login/a/a;
.source "RegisterFragment.java"
.field final synthetic a:Lcom/instagram/android/login/fragment/an;
.method constructor <init>(Lcom/instagram/android/login/fragment/an;Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;Landroid/app/Activity;)V
.registers 6
iput-object p1, p0, Lcom/instagram/android/login/fragment/bb;->a:Lcom/instagram/android/login/fragment/an;
invoke-direct {p0, p2, p3, p4, p5}, Lcom/instagram/android/login/a/a;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;Landroid/app/Activity;)V
return-void
.end method
.method public final a()V
.registers 2
invoke-super {p0}, Lcom/instagram/android/login/a/a;->a()V
sget-object v0, Lcom/instagram/o/b;->Y:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/android/login/a/a;->a(Lcom/instagram/api/j/j;)V
sget-object v0, Lcom/instagram/o/b;->Z:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;
move-result-object v0
const-string v1, "message"
invoke-virtual {p1}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
return-void
.end method
.method protected final a(Lcom/instagram/user/c/a;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/android/login/a/a;->a(Lcom/instagram/user/c/a;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/bb;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/an;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/login/fragment/bc;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/bc;-><init>(Lcom/instagram/android/login/fragment/bb;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/user/c/a;
invoke-virtual {p0, p1}, Lcom/instagram/android/login/fragment/bb;->a(Lcom/instagram/user/c/a;)V
return-void
.end method