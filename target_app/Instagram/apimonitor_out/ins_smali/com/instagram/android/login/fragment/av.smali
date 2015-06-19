.class final Lcom/instagram/android/login/fragment/av;
.super Lcom/instagram/android/login/fragment/bv;
.source "RegisterFragment.java"
.field final synthetic a:Lcom/instagram/android/login/fragment/an;
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/login/fragment/av;->a:Lcom/instagram/android/login/fragment/an;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/bv;-><init>(Lcom/instagram/android/login/fragment/an;B)V
return-void
.end method
.method public final a()V
.registers 3
new-instance v0, Lcom/instagram/registrationpush/a;
iget-object v1, p0, Lcom/instagram/android/login/fragment/av;->a:Lcom/instagram/android/login/fragment/an;
invoke-virtual {v1}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/registrationpush/a;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/instagram/registrationpush/a;->d()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/av;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->x(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/fragment/bx;
move-result-object v0
sget-object v1, Lcom/instagram/android/login/fragment/bx;->a:Lcom/instagram/android/login/fragment/bx;
if-eq v0, v1, :cond_2b
iget-object v0, p0, Lcom/instagram/android/login/fragment/av;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->q(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->b(Ljava/lang/CharSequence;)Z
move-result v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/av;->a:Lcom/instagram/android/login/fragment/an;
if-eqz v0, :cond_2c
sget-object v0, Lcom/instagram/android/login/fragment/bx;->c:Lcom/instagram/android/login/fragment/bx;
:goto_28
invoke-static {v1, v0}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V
:cond_2b
return-void
:cond_2c
sget-object v0, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;
goto :goto_28
.end method