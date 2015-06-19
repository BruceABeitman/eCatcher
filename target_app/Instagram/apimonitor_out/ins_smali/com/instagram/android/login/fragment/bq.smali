.class final Lcom/instagram/android/login/fragment/bq;
.super Ljava/lang/Object;
.source "RegisterFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/android/login/fragment/an;
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/bq;->a:Lcom/instagram/android/login/fragment/an;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/login/fragment/bq; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/bq;->a:Lcom/instagram/android/login/fragment/an;
iget-object v1, p0, Lcom/instagram/android/login/fragment/bq;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->q(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->e(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/instagram/android/login/fragment/bq;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->r(Lcom/instagram/android/login/fragment/an;)V
sget-object v0, Lcom/instagram/o/b;->U:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
const-string v1, " - Lcom/instagram/android/login/fragment/bq; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method