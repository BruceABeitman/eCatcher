.class public Lcom/pinguo/camera360/mycenter/LoginSuccessReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LoginSuccessReceiver.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->update(Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;)V
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->initUserPreference()V
return-void
.end method