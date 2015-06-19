.class final Lcom/bbm/setup/m;
.super Ljava/lang/Object;
.source "LoadingActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/bbm/setup/LoadingActivity;
.method constructor <init>(Lcom/bbm/setup/LoadingActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/setup/m;->a:Lcom/bbm/setup/LoadingActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/setup/m; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/setup/m;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->g(Lcom/bbm/setup/LoadingActivity;)Lcom/bbm/util/cr;
move-result-object v0
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/setup/m;->a:Lcom/bbm/setup/LoadingActivity;
invoke-static {v0}, Lcom/bbm/setup/LoadingActivity;->q(Lcom/bbm/setup/LoadingActivity;)Landroid/app/Dialog;
const-string v1, " - Lcom/bbm/setup/m; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method