.class final Lcom/instagram/android/login/fragment/e;
.super Ljava/lang/Object;
.source "ForgotPasswordFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/login/fragment/a;
.method constructor <init>(Lcom/instagram/android/login/fragment/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/e;->a:Lcom/instagram/android/login/fragment/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/login/fragment/e; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/instagram/o/b;->al:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/e;->a:Lcom/instagram/android/login/fragment/a;
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
const-string v3, "http://help.instagram.com/"
iget-object v4, p0, Lcom/instagram/android/login/fragment/e;->a:Lcom/instagram/android/login/fragment/a;
invoke-virtual {v4}, Lcom/instagram/android/login/fragment/a;->l()Landroid/support/v4/app/k;
move-result-object v4
invoke-static {v3, v4}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v0, v1}, Lcom/instagram/android/login/fragment/a;->a(Landroid/content/Intent;)V
const-string v1, " - Lcom/instagram/android/login/fragment/e; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method