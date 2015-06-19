.class final Lcom/instagram/android/login/fragment/cg;
.super Lcom/instagram/android/login/a/d;
.source "UserPasswordRecoveryFragment.java"
.field final synthetic a:Lcom/instagram/android/login/fragment/cf;
.method constructor <init>(Lcom/instagram/android/login/fragment/cf;Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V
.registers 5
iput-object p1, p0, Lcom/instagram/android/login/fragment/cg;->a:Lcom/instagram/android/login/fragment/cf;
invoke-direct {p0, p2, p3, p4}, Lcom/instagram/android/login/a/d;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/login/fragment/cg;->a:Lcom/instagram/android/login/fragment/cf;
iget-object v0, v0, Lcom/instagram/android/login/fragment/cf;->a:Lcom/instagram/android/login/fragment/bz;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/bz;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/instagram/android/login/fragment/cg;->a:Lcom/instagram/android/login/fragment/cf;
iget-object v0, v0, Lcom/instagram/android/login/fragment/cf;->a:Lcom/instagram/android/login/fragment/bz;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/bz;->D()Landroid/view/View;
move-result-object v0
sget v1, Lcom/facebook/av;->fragment_user_password_recovery_button_connect_with_facebook:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
:cond_1c
invoke-super {p0}, Lcom/instagram/android/login/a/d;->a()V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/login/fragment/cg;->a:Lcom/instagram/android/login/fragment/cf;
iget-object v0, v0, Lcom/instagram/android/login/fragment/cf;->a:Lcom/instagram/android/login/fragment/bz;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/bz;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/instagram/android/login/fragment/cg;->a:Lcom/instagram/android/login/fragment/cf;
iget-object v0, v0, Lcom/instagram/android/login/fragment/cf;->a:Lcom/instagram/android/login/fragment/bz;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/bz;->D()Landroid/view/View;
move-result-object v0
sget v1, Lcom/facebook/av;->fragment_user_password_recovery_button_connect_with_facebook:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
:cond_1c
invoke-super {p0, p1}, Lcom/instagram/android/login/a/d;->a(Lcom/instagram/api/j/j;)V
return-void
.end method