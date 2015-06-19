.class public Lcom/instagram/android/login/a/a;
.super Lcom/instagram/api/j/a;
.source "CreateAccountCallbacks.java"
.field private final a:Landroid/os/Handler;
.field private final b:Landroid/support/v4/app/s;
.field private final c:Landroid/content/Context;
.field private final d:Landroid/app/Activity;
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;Landroid/app/Activity;)V
.registers 5
invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V
iput-object p1, p0, Lcom/instagram/android/login/a/a;->c:Landroid/content/Context;
iput-object p2, p0, Lcom/instagram/android/login/a/a;->a:Landroid/os/Handler;
iput-object p3, p0, Lcom/instagram/android/login/a/a;->b:Landroid/support/v4/app/s;
iput-object p4, p0, Lcom/instagram/android/login/a/a;->d:Landroid/app/Activity;
return-void
.end method
.method public a()V
.registers 4
new-instance v0, Lcom/instagram/android/login/a/c;
invoke-direct {v0}, Lcom/instagram/android/login/a/c;-><init>()V
iget-object v1, p0, Lcom/instagram/android/login/a/a;->b:Landroid/support/v4/app/s;
const-string v2, "ProgressDialog"
invoke-virtual {v0, v1, v2}, Lcom/instagram/android/login/a/c;->a(Landroid/support/v4/app/s;Ljava/lang/String;)V
invoke-super {p0}, Lcom/instagram/api/j/a;->a()V
return-void
.end method
.method protected a(Lcom/instagram/api/j/j;)V
.registers 6
invoke-static {p1}, Lcom/instagram/g/c;->b(Lcom/instagram/api/j/j;)Z
move-result v0
if-eqz v0, :cond_a
invoke-static {p1}, Lcom/instagram/g/c;->c(Lcom/instagram/api/j/j;)V
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/instagram/android/login/a/a;->c:Landroid/content/Context;
invoke-virtual {p1}, Lcom/instagram/api/j/j;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-static {v0, v1, v2, v3}, Lcom/instagram/n/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9
.end method
.method protected a(Lcom/instagram/user/c/a;)V
.registers 5
invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/m/a;->b(Ljava/lang/String;)V
sget-object v0, Lcom/instagram/o/b;->aD:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;
move-result-object v0
const-string v1, "instagram_id"
invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
iget-object v0, p0, Lcom/instagram/android/login/a/a;->d:Landroid/app/Activity;
invoke-static {v0, p1}, Lcom/instagram/android/nux/af;->a(Landroid/app/Activity;Lcom/instagram/user/c/a;)V
invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/a/b;->j()V
return-void
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/user/c/a;
invoke-virtual {p0, p1}, Lcom/instagram/android/login/a/a;->a(Lcom/instagram/user/c/a;)V
return-void
.end method
.method public final b()V
.registers 4
iget-object v0, p0, Lcom/instagram/android/login/a/a;->b:Landroid/support/v4/app/s;
const-string v1, "ProgressDialog"
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/instagram/base/a/a;
iget-object v1, p0, Lcom/instagram/android/login/a/a;->a:Landroid/os/Handler;
new-instance v2, Lcom/instagram/android/login/a/b;
invoke-direct {v2, p0, v0}, Lcom/instagram/android/login/a/b;-><init>(Lcom/instagram/android/login/a/a;Lcom/instagram/base/a/a;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
invoke-super {p0}, Lcom/instagram/api/j/a;->b()V
return-void
.end method