.class final Lcom/instagram/android/login/fragment/ce;
.super Ljava/lang/Object;
.source "UserPasswordRecoveryFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/login/fragment/bz;
.method constructor <init>(Lcom/instagram/android/login/fragment/bz;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/ce;->a:Lcom/instagram/android/login/fragment/bz;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/login/fragment/ce; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/instagram/o/b;->as:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/ce;->a:Lcom/instagram/android/login/fragment/bz;
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/String;
iget-object v3, p0, Lcom/instagram/android/login/fragment/ce;->a:Lcom/instagram/android/login/fragment/bz;
invoke-static {v3}, Lcom/instagram/android/login/fragment/bz;->c(Lcom/instagram/android/login/fragment/bz;)Lcom/instagram/android/login/fragment/cf;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V
const-string v1, " - Lcom/instagram/android/login/fragment/ce; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method