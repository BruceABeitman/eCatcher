.class final Lcom/instagram/android/login/fragment/ar;
.super Ljava/lang/Object;
.source "RegisterFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/login/fragment/an;
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/ar;->a:Lcom/instagram/android/login/fragment/an;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/login/fragment/ar; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/ar;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->v(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/k;
move-result-object v0
sget-object v1, Lcom/instagram/android/login/k;->b:Lcom/instagram/android/login/k;
if-ne v0, v1, :cond_33
sget-object v0, Lcom/instagram/o/b;->ac:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;
move-result-object v0
const-string v1, "method"
const-string v2, "phone"
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/ar;->a:Lcom/instagram/android/login/fragment/an;
sget-object v1, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;
invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/k;)Lcom/instagram/android/login/k;
iget-object v0, p0, Lcom/instagram/android/login/fragment/ar;->a:Lcom/instagram/android/login/fragment/an;
iget-object v1, p0, Lcom/instagram/android/login/fragment/ar;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->v(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/k;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->b(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/k;)V
:goto_2d
iget-object v0, p0, Lcom/instagram/android/login/fragment/ar;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->n(Lcom/instagram/android/login/fragment/an;)V
const-string v1, " - Lcom/instagram/android/login/fragment/ar; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_33
sget-object v0, Lcom/instagram/o/b;->ac:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;
move-result-object v0
const-string v1, "method"
const-string v2, "email"
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/ar;->a:Lcom/instagram/android/login/fragment/an;
sget-object v1, Lcom/instagram/android/login/k;->b:Lcom/instagram/android/login/k;
invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/k;)Lcom/instagram/android/login/k;
iget-object v0, p0, Lcom/instagram/android/login/fragment/ar;->a:Lcom/instagram/android/login/fragment/an;
iget-object v1, p0, Lcom/instagram/android/login/fragment/ar;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->v(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/k;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->b(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/k;)V
goto :goto_2d
.end method