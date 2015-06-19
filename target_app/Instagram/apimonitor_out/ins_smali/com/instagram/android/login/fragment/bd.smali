.class final Lcom/instagram/android/login/fragment/bd;
.super Lcom/instagram/android/login/fragment/bv;
.source "RegisterFragment.java"
.field final synthetic a:Lcom/instagram/android/login/fragment/an;
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/login/fragment/bd;->a:Lcom/instagram/android/login/fragment/an;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/bv;-><init>(Lcom/instagram/android/login/fragment/an;B)V
return-void
.end method
.method public final a()V
.registers 3
new-instance v0, Lcom/instagram/registrationpush/a;
iget-object v1, p0, Lcom/instagram/android/login/fragment/bd;->a:Lcom/instagram/android/login/fragment/an;
invoke-virtual {v1}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/registrationpush/a;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/instagram/registrationpush/a;->d()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/bd;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->B(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/fragment/bx;
move-result-object v0
sget-object v1, Lcom/instagram/android/login/fragment/bx;->a:Lcom/instagram/android/login/fragment/bx;
if-eq v0, v1, :cond_2f
iget-object v0, p0, Lcom/instagram/android/login/fragment/bd;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->e(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
const/4 v1, 0x6
if-lt v0, v1, :cond_30
const/4 v0, 0x1
:goto_26
iget-object v1, p0, Lcom/instagram/android/login/fragment/bd;->a:Lcom/instagram/android/login/fragment/an;
if-eqz v0, :cond_32
sget-object v0, Lcom/instagram/android/login/fragment/bx;->c:Lcom/instagram/android/login/fragment/bx;
:goto_2c
invoke-static {v1, v0}, Lcom/instagram/android/login/fragment/an;->d(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V
:cond_2f
return-void
:cond_30
const/4 v0, 0x0
goto :goto_26
:cond_32
sget-object v0, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;
goto :goto_2c
.end method