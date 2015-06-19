.class final Lcom/instagram/android/login/fragment/aq;
.super Ljava/lang/Object;
.source "RegisterFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/h/a;
.field final synthetic b:Lcom/instagram/android/login/fragment/ap;
.method constructor <init>(Lcom/instagram/android/login/fragment/ap;Lcom/instagram/android/h/a;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/login/fragment/aq;->b:Lcom/instagram/android/login/fragment/ap;
iput-object p2, p0, Lcom/instagram/android/login/fragment/aq;->a:Lcom/instagram/android/h/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/instagram/android/login/fragment/aq;->b:Lcom/instagram/android/login/fragment/ap;
iget-object v0, v0, Lcom/instagram/android/login/fragment/ap;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_38
iget-object v0, p0, Lcom/instagram/android/login/fragment/aq;->a:Lcom/instagram/android/h/a;
invoke-virtual {v0}, Lcom/instagram/android/h/a;->b()Z
move-result v0
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/instagram/android/login/fragment/aq;->a:Lcom/instagram/android/h/a;
invoke-virtual {v0}, Lcom/instagram/android/h/a;->a()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/aq;->b:Lcom/instagram/android/login/fragment/ap;
iget-object v1, v1, Lcom/instagram/android/login/fragment/ap;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->k(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/instagram/android/login/fragment/aq;->b:Lcom/instagram/android/login/fragment/ap;
iget-object v0, v0, Lcom/instagram/android/login/fragment/ap;->a:Lcom/instagram/android/login/fragment/an;
iget-object v1, p0, Lcom/instagram/android/login/fragment/aq;->a:Lcom/instagram/android/h/a;
invoke-virtual {v1}, Lcom/instagram/android/h/a;->a()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)Ljava/lang/String;
:cond_37
:goto_37
return-void
:cond_38
iget-object v1, p0, Lcom/instagram/android/login/fragment/aq;->a:Lcom/instagram/android/h/a;
invoke-virtual {v1}, Lcom/instagram/android/h/a;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_37
iget-object v1, p0, Lcom/instagram/android/login/fragment/aq;->a:Lcom/instagram/android/h/a;
invoke-virtual {v1}, Lcom/instagram/android/h/a;->b()Z
move-result v1
if-eqz v1, :cond_65
iget-object v1, p0, Lcom/instagram/android/login/fragment/aq;->b:Lcom/instagram/android/login/fragment/ap;
iget-object v1, v1, Lcom/instagram/android/login/fragment/ap;->a:Lcom/instagram/android/login/fragment/an;
sget-object v2, Lcom/instagram/android/login/fragment/bx;->c:Lcom/instagram/android/login/fragment/bx;
invoke-static {v1, v2}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V
sget-object v1, Lcom/instagram/o/b;->z:Lcom/instagram/o/b;
invoke-virtual {v1}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "username"
invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
goto :goto_37
:cond_65
iget-object v0, p0, Lcom/instagram/android/login/fragment/aq;->b:Lcom/instagram/android/login/fragment/ap;
iget-object v0, v0, Lcom/instagram/android/login/fragment/ap;->a:Lcom/instagram/android/login/fragment/an;
sget-object v1, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;
invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/aq;->a:Lcom/instagram/android/h/a;
invoke-static {v0}, Lcom/instagram/android/login/b/d;->a(Lcom/instagram/android/h/a;)V
goto :goto_37
.end method