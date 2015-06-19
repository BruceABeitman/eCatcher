.class final Lcom/instagram/android/fragment/fz;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/android/fragment/fk;
.method constructor <init>(Lcom/instagram/android/fragment/fk;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/fz;->a:Lcom/instagram/android/fragment/fk;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/fragment/fz; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/instagram/android/login/d/a;
iget-object v1, p0, Lcom/instagram/android/fragment/fz;->a:Lcom/instagram/android/fragment/fk;
invoke-virtual {v1}, Lcom/instagram/android/fragment/fk;->n()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/fragment/fz;->a:Lcom/instagram/android/fragment/fk;
invoke-virtual {v2}, Lcom/instagram/android/fragment/fk;->p()Landroid/support/v4/app/s;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/instagram/android/login/d/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/s;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/instagram/android/login/d/a;->b([Ljava/lang/Object;)Lcom/instagram/common/b/a;
const-string v1, " - Lcom/instagram/android/fragment/fz; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method