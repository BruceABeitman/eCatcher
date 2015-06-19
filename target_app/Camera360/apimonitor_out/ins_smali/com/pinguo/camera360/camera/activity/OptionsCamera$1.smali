.class  Lcom/pinguo/camera360/camera/activity/OptionsCamera$1;
.super Ljava/lang/Object;
.source "OptionsCamera.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsCamera;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$1;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/activity/OptionsCamera$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$1;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;
const-class v2, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$1;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;
const/16 v2, 0xa
invoke-virtual {v1, v0, v2}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->startActivityForResult(Landroid/content/Intent;I)V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsCamera$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method