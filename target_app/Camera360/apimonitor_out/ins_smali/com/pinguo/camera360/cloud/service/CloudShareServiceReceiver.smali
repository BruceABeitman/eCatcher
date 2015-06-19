.class public Lcom/pinguo/camera360/cloud/service/CloudShareServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloudShareServiceReceiver.java"
.field public static final UPLOAD_TIME:Ljava/lang/String; = "vStudio.Android.Camera360.UPLOAD_TIME"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "vStudio.Android.Camera360.UPLOAD_TIME"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_17
invoke-static {p1}, Lorg/pinguo/cloudshare/support/HelperConsole;->isTimeForUpload(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_16
invoke-static {p1}, Lcom/pinguo/camera360/cloud/CloudServiceManager;->startCloudUpload(Landroid/content/Context;)V
:cond_16
:goto_16
return-void
:cond_17
const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_33
invoke-static {p1}, Lcom/pinguo/share/util/ShareModuleUtil;->hasNet(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_16
invoke-static {p1}, Lorg/pinguo/cloudshare/support/HelperConsole;->isTimeForUpload(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_2f
invoke-static {p1}, Lcom/pinguo/camera360/cloud/CloudServiceManager;->startCloudUpload(Landroid/content/Context;)V
:cond_2f
invoke-static {p1}, Lcom/pinguo/camera360/cloud/CloudServiceManager;->startAlarmManager(Landroid/content/Context;)V
goto :goto_16
:cond_33
const-string/jumbo v1, "android.intent.action.ACTION_POWER_CONNECTED"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_44
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/cloud/CloudServiceManager;->changePower(Landroid/content/Context;)V
goto :goto_16
:cond_44
const-string/jumbo v1, "android.intent.action.ACTION_POWER_DISCONNECTED"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_16
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/cloud/CloudServiceManager;->changePower(Landroid/content/Context;)V
goto :goto_16
.end method