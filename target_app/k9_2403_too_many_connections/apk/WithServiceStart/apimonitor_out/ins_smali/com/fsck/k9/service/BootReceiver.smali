.class public Lcom/fsck/k9/service/BootReceiver;
.super Lcom/fsck/k9/service/CoreReceiver;
.source "BootReceiver.java"
.field public static ALARMED_INTENT:Ljava/lang/String;
.field public static AT_TIME:Ljava/lang/String;
.field public static CANCEL_INTENT:Ljava/lang/String;
.field public static FIRE_INTENT:Ljava/lang/String;
.field public static SCHEDULE_INTENT:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string v0, "com.fsck.k9.service.BroadcastReceiver.fireIntent"
sput-object v0, Lcom/fsck/k9/service/BootReceiver;->FIRE_INTENT:Ljava/lang/String;
const-string v0, "com.fsck.k9.service.BroadcastReceiver.scheduleIntent"
sput-object v0, Lcom/fsck/k9/service/BootReceiver;->SCHEDULE_INTENT:Ljava/lang/String;
const-string v0, "com.fsck.k9.service.BroadcastReceiver.cancelIntent"
sput-object v0, Lcom/fsck/k9/service/BootReceiver;->CANCEL_INTENT:Ljava/lang/String;
const-string v0, "com.fsck.k9.service.BroadcastReceiver.pendingIntent"
sput-object v0, Lcom/fsck/k9/service/BootReceiver;->ALARMED_INTENT:Ljava/lang/String;
const-string v0, "com.fsck.k9.service.BroadcastReceiver.atTime"
sput-object v0, Lcom/fsck/k9/service/BootReceiver;->AT_TIME:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/service/CoreReceiver;-><init>()V
return-void
.end method
.method private buildPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
.registers 11
const/4 v7, 0x0
sget-object v5, Lcom/fsck/k9/service/BootReceiver;->ALARMED_INTENT:Ljava/lang/String;
invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Landroid/content/Intent;
invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
new-instance v2, Landroid/content/Intent;
const-class v5, Lcom/fsck/k9/service/BootReceiver;
invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
sget-object v5, Lcom/fsck/k9/service/BootReceiver;->FIRE_INTENT:Ljava/lang/String;
invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
sget-object v5, Lcom/fsck/k9/service/BootReceiver;->ALARMED_INTENT:Ljava/lang/String;
invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "action://"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v4
invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
invoke-static {p1, v7, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v3
return-object v3
.end method
.method public static cancelIntent(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v1, :cond_20
const-string v1, "k9"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "BootReceiver Got request to cancel alarmedIntent "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_20
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-class v1, Lcom/fsck/k9/service/BootReceiver;
invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
sget-object v1, Lcom/fsck/k9/service/BootReceiver;->CANCEL_INTENT:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
sget-object v1, Lcom/fsck/k9/service/BootReceiver;->ALARMED_INTENT:Ljava/lang/String;
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public static scheduleIntent(Landroid/content/Context;JLandroid/content/Intent;)V
.registers 8
sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v1, :cond_20
const-string v1, "k9"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "BootReceiver Got request to schedule alarmedIntent "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_20
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-class v1, Lcom/fsck/k9/service/BootReceiver;
invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
sget-object v1, Lcom/fsck/k9/service/BootReceiver;->SCHEDULE_INTENT:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
sget-object v1, Lcom/fsck/k9/service/BootReceiver;->ALARMED_INTENT:Ljava/lang/String;
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
sget-object v1, Lcom/fsck/k9/service/BootReceiver;->AT_TIME:Ljava/lang/String;
invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public receive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;)Ljava/lang/Integer;
.registers 14
sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v7, :cond_1c
const-string v7, "k9"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "BootReceiver.onReceive"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_1c
const-string v7, "android.intent.action.BOOT_COMPLETED"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_29
:cond_28
:goto_28
return-object p3
:cond_29
const-string v7, "android.intent.action.DEVICE_STORAGE_LOW"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_3a
invoke-static {p1, p3}, Lcom/fsck/k9/service/MailService;->actionCancel(Landroid/content/Context;Ljava/lang/Integer;)V
const/4 p3, 0x0
goto :goto_28
:cond_3a
const-string v7, "android.intent.action.DEVICE_STORAGE_OK"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_4b
invoke-static {p1, p3}, Lcom/fsck/k9/service/MailService;->actionReschedule(Landroid/content/Context;Ljava/lang/Integer;)V
const/4 p3, 0x0
goto :goto_28
:cond_4b
const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_68
const-string v7, "noConnectivity"
const/4 v8, 0x0
invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v5
if-nez v5, :cond_66
const/4 v7, 0x1
:goto_61
invoke-static {p1, v7, p3}, Lcom/fsck/k9/service/MailService;->connectivityChange(Landroid/content/Context;ZLjava/lang/Integer;)V
const/4 p3, 0x0
goto :goto_28
:cond_66
const/4 v7, 0x0
goto :goto_61
:cond_68
const-string v7, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_79
invoke-static {p1, p3}, Lcom/fsck/k9/service/MailService;->backgroundDataChanged(Landroid/content/Context;Ljava/lang/Integer;)V
const/4 p3, 0x0
goto :goto_28
:cond_79
sget-object v7, Lcom/fsck/k9/service/BootReceiver;->FIRE_INTENT:Ljava/lang/String;
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_ba
sget-object v7, Lcom/fsck/k9/service/BootReceiver;->ALARMED_INTENT:Ljava/lang/String;
invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v2
check-cast v2, Landroid/content/Intent;
invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v7, :cond_ad
const-string v7, "k9"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "BootReceiver Got alarm to fire alarmedIntent "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_ad
sget-object v7, Lcom/fsck/k9/service/BootReceiver;->WAKE_LOCK_ID:Ljava/lang/String;
invoke-virtual {v2, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
const/4 p3, 0x0
if-eqz v2, :cond_28
invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
goto/16 :goto_28
:cond_ba
sget-object v7, Lcom/fsck/k9/service/BootReceiver;->SCHEDULE_INTENT:Ljava/lang/String;
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_113
sget-object v7, Lcom/fsck/k9/service/BootReceiver;->AT_TIME:Ljava/lang/String;
const-wide/16 v8, -0x1
invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v3
sget-object v7, Lcom/fsck/k9/service/BootReceiver;->ALARMED_INTENT:Ljava/lang/String;
invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v2
check-cast v2, Landroid/content/Intent;
sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v7, :cond_101
const-string v7, "k9"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "BootReceiver Scheduling intent "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, " for "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
new-instance v9, Ljava/util/Date;
invoke-direct {v9, v3, v4}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_101
invoke-direct {p0, p1, p2}, Lcom/fsck/k9/service/BootReceiver;->buildPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
move-result-object v6
const-string v7, "alarm"
invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/AlarmManager;
const/4 v7, 0x0
invoke-virtual {v0, v7, v3, v4, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
goto/16 :goto_28
:cond_113
sget-object v7, Lcom/fsck/k9/service/BootReceiver;->CANCEL_INTENT:Ljava/lang/String;
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_28
sget-object v7, Lcom/fsck/k9/service/BootReceiver;->ALARMED_INTENT:Ljava/lang/String;
invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v2
check-cast v2, Landroid/content/Intent;
sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v7, :cond_143
const-string v7, "k9"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "BootReceiver Canceling alarmedIntent "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_143
invoke-direct {p0, p1, p2}, Lcom/fsck/k9/service/BootReceiver;->buildPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
move-result-object v6
const-string v7, "alarm"
invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/AlarmManager;
invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
goto/16 :goto_28
.end method