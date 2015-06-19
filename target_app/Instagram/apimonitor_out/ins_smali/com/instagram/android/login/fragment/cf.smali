.class final Lcom/instagram/android/login/fragment/cf;
.super Ljava/lang/Object;
.source "UserPasswordRecoveryFragment.java"
.implements Lcom/facebook/b/e;
.field final synthetic a:Lcom/instagram/android/login/fragment/bz;
.method private constructor <init>(Lcom/instagram/android/login/fragment/bz;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/cf;->a:Lcom/instagram/android/login/fragment/bz;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/bz;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/cf;-><init>(Lcom/instagram/android/login/fragment/bz;)V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 10
const-string v0, "access_token"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/instagram/android/login/c/e;
iget-object v2, p0, Lcom/instagram/android/login/fragment/cf;->a:Lcom/instagram/android/login/fragment/bz;
invoke-virtual {v2}, Lcom/instagram/android/login/fragment/bz;->n()Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/login/fragment/cf;->a:Lcom/instagram/android/login/fragment/bz;
invoke-virtual {v3}, Lcom/instagram/android/login/fragment/bz;->y()Landroid/support/v4/app/an;
move-result-object v3
new-instance v4, Lcom/instagram/android/login/fragment/cg;
iget-object v5, p0, Lcom/instagram/android/login/fragment/cf;->a:Lcom/instagram/android/login/fragment/bz;
invoke-virtual {v5}, Lcom/instagram/android/login/fragment/bz;->n()Landroid/content/Context;
move-result-object v5
iget-object v6, p0, Lcom/instagram/android/login/fragment/cf;->a:Lcom/instagram/android/login/fragment/bz;
invoke-static {v6}, Lcom/instagram/android/login/fragment/bz;->j(Lcom/instagram/android/login/fragment/bz;)Landroid/os/Handler;
move-result-object v6
iget-object v7, p0, Lcom/instagram/android/login/fragment/cf;->a:Lcom/instagram/android/login/fragment/bz;
invoke-virtual {v7}, Lcom/instagram/android/login/fragment/bz;->p()Landroid/support/v4/app/s;
move-result-object v7
invoke-direct {v4, p0, v5, v6, v7}, Lcom/instagram/android/login/fragment/cg;-><init>(Lcom/instagram/android/login/fragment/cf;Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V
invoke-direct {v1, v2, v3, v4}, Lcom/instagram/android/login/c/e;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
iget-object v2, p0, Lcom/instagram/android/login/fragment/cf;->a:Lcom/instagram/android/login/fragment/bz;
invoke-virtual {v2}, Lcom/instagram/android/login/fragment/bz;->j()Landroid/os/Bundle;
move-result-object v2
const-string v3, "email_lookup"
invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_4c
iget-object v2, p0, Lcom/instagram/android/login/fragment/cf;->a:Lcom/instagram/android/login/fragment/bz;
invoke-virtual {v2}, Lcom/instagram/android/login/fragment/bz;->j()Landroid/os/Bundle;
move-result-object v2
const-string v3, "email_lookup"
invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lcom/instagram/android/login/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_4b
return-void
:cond_4c
iget-object v2, p0, Lcom/instagram/android/login/fragment/cf;->a:Lcom/instagram/android/login/fragment/bz;
invoke-static {v2}, Lcom/instagram/android/login/fragment/bz;->b(Lcom/instagram/android/login/fragment/bz;)Lcom/instagram/user/c/a;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lcom/instagram/android/login/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4b
.end method
.method public final a(Lcom/facebook/b/a;)V
.registers 2
return-void
.end method
.method public final a(Lcom/facebook/b/i;)V
.registers 2
return-void
.end method