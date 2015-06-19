.class final Lcom/instagram/android/login/fragment/bg;
.super Lcom/instagram/android/login/fragment/bt;
.source "RegisterFragment.java"
.field final synthetic a:Lcom/instagram/android/login/fragment/an;
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/login/fragment/bg;->a:Lcom/instagram/android/login/fragment/an;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/bt;-><init>(Lcom/instagram/android/login/fragment/an;B)V
return-void
.end method
.method public final a(Z)V
.registers 4
if-eqz p1, :cond_11
iget-object v0, p0, Lcom/instagram/android/login/fragment/bg;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->v(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/k;
move-result-object v0
sget-object v1, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;
if-ne v0, v1, :cond_12
sget-object v0, Lcom/instagram/o/b;->J:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
:goto_11
:cond_11
return-void
:cond_12
sget-object v0, Lcom/instagram/o/b;->I:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
goto :goto_11
.end method