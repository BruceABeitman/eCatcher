.class public Lcom/fsck/k9/service/RemoteControlService;
.super Lcom/fsck/k9/service/CoreService;
.source "RemoteControlService.java"
.field public static final REMOTE_CONTROL_SERVICE_WAKE_LOCK_TIMEOUT:I = 0x4e20
.field private static final RESCHEDULE_ACTION:Ljava/lang/String; = "com.fsck.k9.service.RemoteControlService.RESCHEDULE_ACTION"
.field private static final SET_ACTION:Ljava/lang/String; = "com.fsck.k9.service.RemoteControlService.SET_ACTION"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/service/CoreService;-><init>()V
return-void
.end method
.method public static set(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;)V
.registers 4
const-class v0, Lcom/fsck/k9/service/RemoteControlService;
invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
const-string v0, "com.fsck.k9.service.RemoteControlService.SET_ACTION"
invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-static {p1, p2}, Lcom/fsck/k9/service/RemoteControlService;->addWakeLockId(Landroid/content/Intent;Ljava/lang/Integer;)V
if-nez p2, :cond_12
invoke-static {p0, p1}, Lcom/fsck/k9/service/RemoteControlService;->addWakeLock(Landroid/content/Context;Landroid/content/Intent;)V
:cond_12
invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
return-void
.end method
.method public startService(Landroid/content/Intent;I)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/service/RemoteControlService; startService "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v3, "k9"
sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v1, :cond_1e
const-string v1, "k9"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "RemoteControlService started with startId = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_1e
invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v0
const-string v1, "com.fsck.k9.service.RemoteControlService.RESCHEDULE_ACTION"
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3e
sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v1, :cond_39
const-string v1, "k9"
const-string v1, "RemoteControlService requesting MailService reschedule"
invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_39
const/4 v1, 0x0
invoke-static {p0, v1}, Lcom/fsck/k9/service/MailService;->actionReschedule(Landroid/content/Context;Ljava/lang/Integer;)V
:goto_3d
:cond_3d
const-string v1, " - Lcom/fsck/k9/service/RemoteControlService; startService"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_3e
const-string v1, "com.fsck.k9.service.RemoteControlService.SET_ACTION"
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3d
sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v1, :cond_55
const-string v1, "k9"
const-string v1, "RemoteControlService got request to change settings"
invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_55
invoke-virtual {p0}, Lcom/fsck/k9/service/RemoteControlService;->getApplication()Landroid/app/Application;
move-result-object v1
new-instance v2, Lcom/fsck/k9/service/RemoteControlService$1;
invoke-direct {v2, p0, p1, v0}, Lcom/fsck/k9/service/RemoteControlService$1;-><init>(Lcom/fsck/k9/service/RemoteControlService;Landroid/content/Intent;Lcom/fsck/k9/Preferences;)V
const/16 v3, 0x4e20
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {p0, v1, v2, v3, v4}, Lcom/fsck/k9/service/RemoteControlService;->execute(Landroid/content/Context;Ljava/lang/Runnable;ILjava/lang/Integer;)V
goto :goto_3d
.end method