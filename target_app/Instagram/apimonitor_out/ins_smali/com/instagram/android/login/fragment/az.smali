.class final Lcom/instagram/android/login/fragment/az;
.super Lcom/instagram/android/login/fragment/bv;
.source "RegisterFragment.java"
.field final synthetic a:Lcom/instagram/android/login/fragment/an;
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/login/fragment/az;->a:Lcom/instagram/android/login/fragment/an;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/bv;-><init>(Lcom/instagram/android/login/fragment/an;B)V
return-void
.end method
.method public final a()V
.registers 5
const/4 v3, 0x1
new-instance v0, Lcom/instagram/registrationpush/a;
iget-object v1, p0, Lcom/instagram/android/login/fragment/az;->a:Lcom/instagram/android/login/fragment/an;
invoke-virtual {v1}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/registrationpush/a;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/instagram/registrationpush/a;->d()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/az;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->A(Lcom/instagram/android/login/fragment/an;)Z
move-result v0
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/instagram/android/login/fragment/az;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/an;)Landroid/os/Handler;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/az;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/an;)Landroid/os/Handler;
move-result-object v0
const-wide/16 v1, 0x3e8
invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
:cond_2b
return-void
.end method