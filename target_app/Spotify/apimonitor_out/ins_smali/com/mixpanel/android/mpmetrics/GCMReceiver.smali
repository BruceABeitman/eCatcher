.class public Lcom/mixpanel/android/mpmetrics/GCMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field  a:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
const-string v0, "MPGCMReceiver"
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/GCMReceiver;->a:Ljava/lang/String;
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 12
const/4 v8, 0x0
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "com.google.android.c2dm.intent.REGISTRATION"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_52
const-string v0, "registration_id"
invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "error"
invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_36
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/GCMReceiver;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Error when registering for GCM: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v2, "error"
invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:goto_35
:cond_35
return-void
:cond_36
if-eqz v0, :cond_41
new-instance v1, Lcom/mixpanel/android/mpmetrics/GCMReceiver$1;
invoke-direct {v1, p0, v0}, Lcom/mixpanel/android/mpmetrics/GCMReceiver$1;-><init>(Lcom/mixpanel/android/mpmetrics/GCMReceiver;Ljava/lang/String;)V
invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/l;->a(Lcom/mixpanel/android/mpmetrics/n;)V
goto :goto_35
:cond_41
const-string v0, "unregistered"
invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_35
new-instance v0, Lcom/mixpanel/android/mpmetrics/GCMReceiver$2;
invoke-direct {v0, p0}, Lcom/mixpanel/android/mpmetrics/GCMReceiver$2;-><init>(Lcom/mixpanel/android/mpmetrics/GCMReceiver;)V
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/l;->a(Lcom/mixpanel/android/mpmetrics/n;)V
goto :goto_35
:cond_52
const-string v1, "com.google.android.c2dm.intent.RECEIVE"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_35
invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "mp_message"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_35
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v4
const-string v1, ""
const v0, 0x1080093
:try_start_77
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v5
const/4 v6, 0x0
invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
move-result-object v5
invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
move-result-object v1
iget v0, v5, Landroid/content/pm/ApplicationInfo;->icon:I
:try_end_86
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_77 .. :try_end_86} :catch_b6
move-object v2, v1
move v1, v0
:goto_88
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
const/high16 v5, 0x800
invoke-static {v0, v8, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v5, 0xb
if-ge v0, v5, :cond_ba
const-string v0, "notification"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/NotificationManager;
new-instance v5, Landroid/app/Notification;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
invoke-direct {v5, v1, v3, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V
iget v1, v5, Landroid/app/Notification;->flags:I
or-int/lit8 v1, v1, 0x10
iput v1, v5, Landroid/app/Notification;->flags:I
invoke-virtual {v5, p1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
invoke-virtual {v0, v8, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
goto :goto_35
:catch_b6
move-exception v2
move-object v2, v1
move v1, v0
goto :goto_88
:cond_ba
const-string v0, "notification"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/NotificationManager;
new-instance v5, Landroid/app/Notification$Builder;
invoke-direct {v5, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-virtual {v1, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
move-result-object v1
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0x10
if-ge v2, v3, :cond_f8
invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;
move-result-object v1
:goto_ed
iget v2, v1, Landroid/app/Notification;->flags:I
or-int/lit8 v2, v2, 0x10
iput v2, v1, Landroid/app/Notification;->flags:I
invoke-virtual {v0, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
goto/16 :goto_35
:cond_f8
invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
move-result-object v1
goto :goto_ed
.end method