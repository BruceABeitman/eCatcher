.class final Lcom/bbm/ui/eo;
.super Ljava/lang/Object;
.source "QuickShareCameraView.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/QuickShareCameraView;
.method constructor <init>(Lcom/bbm/ui/QuickShareCameraView;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/eo;->a:Lcom/bbm/ui/QuickShareCameraView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/eo; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/eo;->a:Lcom/bbm/ui/QuickShareCameraView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareCameraView;->a(Lcom/bbm/ui/QuickShareCameraView;)Lcom/bbm/ui/ep;
move-result-object v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/bbm/ui/eo;->a:Lcom/bbm/ui/QuickShareCameraView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareCameraView;->a(Lcom/bbm/ui/QuickShareCameraView;)Lcom/bbm/ui/ep;
move-result-object v0
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/bbm/ui/ep;->a(Z)V
:cond_12
const-string v1, " - Lcom/bbm/ui/eo; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method