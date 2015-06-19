.class final Lcom/instagram/android/login/fragment/as;
.super Ljava/lang/Object;
.source "RegisterFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/login/fragment/an;
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/as;->a:Lcom/instagram/android/login/fragment/an;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/login/fragment/as; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/instagram/o/b;->ab:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;
move-result-object v0
const-string v1, "guessed_country_code"
iget-object v2, p0, Lcom/instagram/android/login/fragment/as;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v2}, Lcom/instagram/android/login/fragment/an;->h(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
new-instance v0, Lcom/instagram/android/e/d;
invoke-direct {v0}, Lcom/instagram/android/e/d;-><init>()V
iget-object v1, p0, Lcom/instagram/android/login/fragment/as;->a:Lcom/instagram/android/login/fragment/an;
invoke-virtual {v0, v1}, Lcom/instagram/base/a/a;->a(Landroid/support/v4/app/Fragment;)V
iget-object v1, p0, Lcom/instagram/android/login/fragment/as;->a:Lcom/instagram/android/login/fragment/an;
invoke-virtual {v1}, Lcom/instagram/android/login/fragment/an;->p()Landroid/support/v4/app/s;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/instagram/base/a/a;->a(Landroid/support/v4/app/s;Ljava/lang/String;)V
const-string v1, " - Lcom/instagram/android/login/fragment/as; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method