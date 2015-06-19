.class public Lco/vine/android/service/GCMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GCMBroadcastReceiver.java"
.field private static final TAG:Ljava/lang/String; = "GCMBroadcastReceiver"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
const-string v1, "GCMBroadcastReceiver"
const-string v2, "Message received!"
invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p1}, Lco/vine/android/Settings;->isNotificationEnabled(Landroid/content/Context;)Z
move-result v1
if-nez v1, :cond_12
const/4 v1, 0x1
invoke-static {v1}, Lco/vine/android/util/FlurryUtils;->trackNotificationReceived(Z)V
:goto_11
return-void
:cond_12
const/4 v1, 0x0
invoke-static {v1}, Lco/vine/android/util/FlurryUtils;->trackNotificationReceived(Z)V
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/service/GCMNotificationService;
invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
const-string v1, "co.vine.android.notifications.ACTION_SHOW_NOTIFICATION"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
const/4 v1, -0x1
invoke-virtual {p0, v1}, Lco/vine/android/service/GCMBroadcastReceiver;->setResultCode(I)V
goto :goto_11
.end method