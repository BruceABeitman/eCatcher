.class final Lcom/instagram/android/login/fragment/z;
.super Lcom/instagram/android/login/a/h;
.source "PasswordResetFragment.java"
.field final synthetic a:Lcom/instagram/android/login/fragment/v;
.method constructor <init>(Lcom/instagram/android/login/fragment/v;Landroid/support/v4/app/Fragment;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/login/fragment/z;->a:Lcom/instagram/android/login/fragment/v;
const/4 v0, 0x0
invoke-direct {p0, p2, v0}, Lcom/instagram/android/login/a/h;-><init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 3
if-eqz p1, :cond_8
invoke-virtual {p1}, Lcom/instagram/api/j/j;->c()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
if-nez v0, :cond_d
:cond_8
sget v0, Lcom/facebook/az;->request_error:I
invoke-static {v0}, Lcom/instagram/n/e;->a(I)V
:cond_d
invoke-super {p0, p1}, Lcom/instagram/android/login/a/h;->a(Lcom/instagram/api/j/j;)V
return-void
.end method
.method protected final a(Lcom/instagram/user/c/a;)V
.registers 5
const/4 v2, 0x0
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
invoke-static {}, Lcom/instagram/service/a/a;->d()Z
move-result v0
if-nez v0, :cond_e
invoke-super {p0, p1}, Lcom/instagram/android/login/a/h;->a(Lcom/instagram/user/c/a;)V
:goto_d
return-void
:cond_e
iget-object v0, p0, Lcom/instagram/android/login/fragment/z;->a:Lcom/instagram/android/login/fragment/v;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/v;->u()Z
move-result v0
if-eqz v0, :cond_26
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/instagram/a/e;->c(Z)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/z;->a:Lcom/instagram/android/login/fragment/v;
invoke-static {v0}, Lcom/instagram/android/login/fragment/v;->c(Lcom/instagram/android/login/fragment/v;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V
:cond_26
iget-object v0, p0, Lcom/instagram/android/login/fragment/z;->a:Lcom/instagram/android/login/fragment/v;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/v;->n()Landroid/content/Context;
move-result-object v0
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/instagram/android/login/fragment/z;->a:Lcom/instagram/android/login/fragment/v;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/v;->n()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/az;->password_changed:I
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_3d
iget-object v0, p0, Lcom/instagram/android/login/fragment/z;->a:Lcom/instagram/android/login/fragment/v;
invoke-static {v0}, Lcom/instagram/android/login/fragment/v;->d(Lcom/instagram/android/login/fragment/v;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/login/fragment/aa;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/aa;-><init>(Lcom/instagram/android/login/fragment/z;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_d
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/user/c/a;
invoke-virtual {p0, p1}, Lcom/instagram/android/login/fragment/z;->a(Lcom/instagram/user/c/a;)V
return-void
.end method