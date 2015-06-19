.class public Lcom/spotify/music/spotlets/gcm/GcmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method private static a()Lcom/spotify/mobile/android/ui/actions/a;
.registers 1
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
return-object v0
.end method
.method public static a(Lcom/spotify/mobile/android/util/ClientEvent$Event;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
.registers 4
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
const-string v1, "tag"
if-eqz p1, :cond_d
:goto_9
invoke-virtual {v0, v1, p1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
return-object v0
:cond_d
const-string p1, ""
goto :goto_9
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 15
const/4 v1, 0x0
const/4 v5, -0x1
const/4 v9, 0x1
const/4 v11, 0x0
invoke-static {p1}, Lcom/google/android/gms/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/a/a;
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v2, "com.google.android.c2dm.intent.RECEIVE"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_b6
move-object v0, v1
:cond_14
:goto_14
invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v7
const-string v2, "gcm"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_168
const-string v0, "type"
invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v2, "notification"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_15d
const-string v0, "Got notification: %s"
new-array v2, v9, [Ljava/lang/Object;
aput-object v7, v2, v11
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
const-string v0, "title"
invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_1a8
const-string v0, ""
move-object v2, v0
:goto_42
const-string v0, "message"
invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_1a5
const-string v0, ""
move-object v3, v0
:goto_4d
const-string v0, "uri"
invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_1a2
const-string v0, ""
move-object v4, v0
:goto_58
:try_start_58
const-string v0, "prio"
invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_19f
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_63
.catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_63} :catch_c2
move-result v0
:goto_64
move v6, v0
:goto_65
const-string v0, "true"
const-string v8, "sales"
invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
const-string v0, "tag"
invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_19c
const-string v0, ""
move-object v7, v0
:goto_7c
const-string v0, "Push new app, priority: %d"
new-array v9, v9, [Ljava/lang/Object;
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
aput-object v10, v9, v11
invoke-static {v0, v9}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
const/16 v0, 0x64
if-ge v6, v0, :cond_b2
if-eqz v8, :cond_c5
const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ClientInfo;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientInfo;->d()Z
move-result v0
if-nez v0, :cond_c5
invoke-static {}, Lcom/spotify/music/spotlets/gcm/GcmBroadcastReceiver;->a()Lcom/spotify/mobile/android/ui/actions/a;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aV:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->o:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-static {v1, v7}, Lcom/spotify/music/spotlets/gcm/GcmBroadcastReceiver;->a(Lcom/spotify/mobile/android/util/ClientEvent$Event;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v1
invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
const-string v0, "Don\'t show notification since it\'s marked as sales and we\'re not allowed to show those on this device."
new-array v1, v11, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_b2
:goto_b2
invoke-virtual {p0, v5}, Lcom/spotify/music/spotlets/gcm/GcmBroadcastReceiver;->setResultCode(I)V
return-void
:cond_b6
const-string v0, "message_type"
invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_14
const-string v0, "gcm"
goto/16 :goto_14
:catch_c2
move-exception v0
move v6, v5
goto :goto_65
:cond_c5
new-instance v8, Landroid/support/v4/app/al;
invoke-direct {v8, p1}, Landroid/support/v4/app/al;-><init>(Landroid/content/Context;)V
invoke-virtual {v8, v2}, Landroid/support/v4/app/al;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/support/v4/app/al;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;
move-result-object v0
new-instance v2, Landroid/support/v4/app/ak;
invoke-direct {v2}, Landroid/support/v4/app/ak;-><init>()V
invoke-virtual {v2, v3}, Landroid/support/v4/app/ak;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ak;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/support/v4/app/al;->a(Landroid/support/v4/app/at;)Landroid/support/v4/app/al;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/al;->a()Landroid/support/v4/app/al;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/al;->a(J)Landroid/support/v4/app/al;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/al;->d()Landroid/support/v4/app/al;
new-instance v0, Landroid/content/Intent;
const-class v2, Lcom/spotify/mobile/android/service/SpotifyService;
invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "com.spotify.mobile.android.service.action.push_notification.OPEN"
invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
if-eqz v4, :cond_102
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_14d
:goto_102
:cond_102
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
const-string v1, "tag"
invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-static {p1, v11, v0, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
invoke-virtual {v8, v0}, Landroid/support/v4/app/al;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/al;
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->g:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-static {v0, v7}, Lcom/spotify/music/spotlets/gcm/GcmBroadcastReceiver;->a(Lcom/spotify/mobile/android/util/ClientEvent$Event;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
invoke-static {}, Lcom/spotify/music/spotlets/gcm/GcmBroadcastReceiver;->a()Lcom/spotify/mobile/android/ui/actions/a;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aV:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {p1, v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)Landroid/content/Intent;
move-result-object v0
invoke-static {p1, v11, v0, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
invoke-virtual {v8, v0}, Landroid/support/v4/app/al;->b(Landroid/app/PendingIntent;)Landroid/support/v4/app/al;
const-string v0, "notification"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/NotificationManager;
packed-switch v6, :pswitch_data_1ac
const/16 v1, 0xb
:goto_136
invoke-virtual {v8}, Landroid/support/v4/app/al;->g()Landroid/app/Notification;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
invoke-static {}, Lcom/spotify/music/spotlets/gcm/GcmBroadcastReceiver;->a()Lcom/spotify/mobile/android/ui/actions/a;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aV:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->f:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-static {v1, v7}, Lcom/spotify/music/spotlets/gcm/GcmBroadcastReceiver;->a(Lcom/spotify/mobile/android/util/ClientEvent$Event;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v1
invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
goto/16 :goto_b2
:cond_14d
invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
goto :goto_102
:pswitch_152
const/4 v1, 0x7
goto :goto_136
:pswitch_154
const/16 v1, 0x8
goto :goto_136
:pswitch_157
const/16 v1, 0x9
goto :goto_136
:pswitch_15a
const/16 v1, 0xa
goto :goto_136
:cond_15d
const-string v0, "Received message with unknown type: %s"
new-array v1, v9, [Ljava/lang/Object;
aput-object v7, v1, v11
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V
goto/16 :goto_b2
:cond_168
const-string v1, "send_error"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_17b
const-string v0, "Send error: %s"
new-array v1, v9, [Ljava/lang/Object;
aput-object v7, v1, v11
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V
goto/16 :goto_b2
:cond_17b
const-string v1, "deleted_messages"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_18e
const-string v0, "Deleted on server: %s"
new-array v1, v9, [Ljava/lang/Object;
aput-object v7, v1, v11
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V
goto/16 :goto_b2
:cond_18e
const-string v1, "Received unknown gcm type: %s, extras: %s"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
aput-object v0, v2, v11
aput-object v7, v2, v9
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
goto/16 :goto_b2
:cond_19c
move-object v7, v0
goto/16 :goto_7c
:cond_19f
move v0, v5
goto/16 :goto_64
:cond_1a2
move-object v4, v0
goto/16 :goto_58
:cond_1a5
move-object v3, v0
goto/16 :goto_4d
:cond_1a8
move-object v2, v0
goto/16 :goto_42
nop
:pswitch_data_1ac
.packed-switch 0x1
:pswitch_152
:pswitch_154
:pswitch_157
:pswitch_15a
.end packed-switch
.end method