.class public Lco/vine/android/DeviceBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceBootReceiver.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 7
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v2, "Received device boot message {}."
invoke-static {v2, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
const-string v2, "android.intent.action.PACKAGE_REPLACED"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_26
invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v1
if-eqz v1, :cond_26
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_26
:goto_25
return-void
:cond_26
new-instance v2, Landroid/content/Intent;
const-class v3, Lco/vine/android/service/ResourceService;
invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
invoke-static {p1}, Lco/vine/android/service/VineUploadService;->getUpgradeDraftsIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v2
invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
goto :goto_25
.end method