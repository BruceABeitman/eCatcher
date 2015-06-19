.class final Lcom/instagram/android/login/fragment/cc;
.super Ljava/lang/Object;
.source "UserPasswordRecoveryFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/login/fragment/bz;
.method constructor <init>(Lcom/instagram/android/login/fragment/bz;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/cc;->a:Lcom/instagram/android/login/fragment/bz;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/login/fragment/cc; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/instagram/o/b;->aq:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/cc;->a:Lcom/instagram/android/login/fragment/bz;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/bz;->b()Lcom/instagram/android/login/c/m;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/cc;->a:Lcom/instagram/android/login/fragment/bz;
invoke-static {v1}, Lcom/instagram/android/login/fragment/bz;->b(Lcom/instagram/android/login/fragment/bz;)Lcom/instagram/user/c/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/login/c/m;->a(Ljava/lang/String;)V
const-string v1, " - Lcom/instagram/android/login/fragment/cc; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method