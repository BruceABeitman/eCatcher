.class public final Lcom/instagram/android/login/b/d;
.super Ljava/lang/Object;
.source "UsernameErrorUtil.java"
.method public static a(Lcom/instagram/android/h/a;)V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/h/a;->c()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {p0}, Lcom/instagram/android/h/a;->c()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/n/e;->a(Ljava/lang/CharSequence;)V
:goto_d
return-void
:cond_e
const-string v0, "check_username"
const-string v1, "no server error message"
invoke-static {v0, v1}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_d
.end method