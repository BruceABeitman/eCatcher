.class final Lcom/instagram/android/fragment/x;
.super Lcom/instagram/android/login/a/d;
.source "ChangePasswordFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/w;
.method constructor <init>(Lcom/instagram/android/fragment/w;Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V
.registers 5
iput-object p1, p0, Lcom/instagram/android/fragment/x;->a:Lcom/instagram/android/fragment/w;
invoke-direct {p0, p2, p3, p4}, Lcom/instagram/android/login/a/d;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/fragment/x;->a:Lcom/instagram/android/fragment/w;
iget-object v0, v0, Lcom/instagram/android/fragment/w;->a:Lcom/instagram/android/fragment/o;
invoke-virtual {v0}, Lcom/instagram/android/fragment/o;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/instagram/android/fragment/x;->a:Lcom/instagram/android/fragment/w;
iget-object v0, v0, Lcom/instagram/android/fragment/w;->a:Lcom/instagram/android/fragment/o;
invoke-static {v0}, Lcom/instagram/android/fragment/o;->f(Lcom/instagram/android/fragment/o;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
:cond_16
invoke-super {p0}, Lcom/instagram/android/login/a/d;->a()V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/fragment/x;->a:Lcom/instagram/android/fragment/w;
iget-object v0, v0, Lcom/instagram/android/fragment/w;->a:Lcom/instagram/android/fragment/o;
invoke-virtual {v0}, Lcom/instagram/android/fragment/o;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/instagram/android/fragment/x;->a:Lcom/instagram/android/fragment/w;
iget-object v0, v0, Lcom/instagram/android/fragment/w;->a:Lcom/instagram/android/fragment/o;
invoke-static {v0}, Lcom/instagram/android/fragment/o;->f(Lcom/instagram/android/fragment/o;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
:cond_16
invoke-super {p0, p1}, Lcom/instagram/android/login/a/d;->a(Lcom/instagram/api/j/j;)V
return-void
.end method