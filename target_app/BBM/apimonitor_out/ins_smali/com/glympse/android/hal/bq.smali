.class  Lcom/glympse/android/hal/bq;
.super Ljava/lang/Object;
.source "SmsReceiver.java"
.implements Lcom/glympse/android/hal/GSmsReceiver;
.field private e:Landroid/content/Context;
.field private eF:Lcom/glympse/android/hal/GMessageListener;
.field private eG:Lcom/glympse/android/hal/br;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/hal/bq;->e:Landroid/content/Context;
return-void
.end method
.method static synthetic a(Lcom/glympse/android/hal/bq;)Lcom/glympse/android/hal/GMessageListener;
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/bq;->eF:Lcom/glympse/android/hal/GMessageListener;
return-object v0
.end method
.method private c(J)V
.registers 14
const-wide/16 v8, 0x0
const/4 v6, 0x0
const/4 v0, 0x1
:try_start_4
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "[SMSReceiver::scanSmsInbox] Scanning for all SMS messages since "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/hal/bq;->e:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const-string v1, "content://sms"
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
const-string v2, "inbox"
invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
const/4 v2, 0x3
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "address"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "date"
aput-object v4, v2, v3
const/4 v3, 0x2
const-string v4, "body"
aput-object v4, v2, v3
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "date > "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
const-string v5, "date ASC"
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_4f
.catchall {:try_start_4 .. :try_end_4f} :catchall_a1
.catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4f} :catch_91
move-result-object v10
if-eqz v10, :cond_bc
:try_start_52
invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
:try_end_55
.catchall {:try_start_52 .. :try_end_55} :catchall_ac
.catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_55} :catch_b2
move-result v0
if-eqz v0, :cond_bc
move-wide v6, v8
:cond_59
const/4 v0, 0x0
:try_start_5a
invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
const/4 v0, 0x1
invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v2
const/4 v0, 0x2
invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
cmp-long v0, v2, v6
if-lez v0, :cond_6d
move-wide v6, v2
:cond_6d
iget-object v0, p0, Lcom/glympse/android/hal/bq;->eF:Lcom/glympse/android/hal/GMessageListener;
if-eqz v0, :cond_77
iget-object v0, p0, Lcom/glympse/android/hal/bq;->eF:Lcom/glympse/android/hal/GMessageListener;
const/4 v1, 0x0
invoke-interface/range {v0 .. v5}, Lcom/glympse/android/hal/GMessageListener;->messageReceived(ZJLjava/lang/String;Ljava/lang/String;)V
:cond_77
invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
:try_end_7a
.catchall {:try_start_5a .. :try_end_7a} :catchall_ac
.catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_7a} :catch_b7
move-result v0
if-nez v0, :cond_59
move-wide v0, v6
:goto_7e
if-eqz v10, :cond_83
:try_start_80
invoke-interface {v10}, Landroid/database/Cursor;->close()V
:try_end_83
.catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_83} :catch_a8
:goto_83
:cond_83
iget-object v2, p0, Lcom/glympse/android/hal/bq;->eF:Lcom/glympse/android/hal/GMessageListener;
if-eqz v2, :cond_90
cmp-long v2, v8, v0
if-eqz v2, :cond_90
iget-object v2, p0, Lcom/glympse/android/hal/bq;->eF:Lcom/glympse/android/hal/GMessageListener;
invoke-interface {v2, p0, v0, v1}, Lcom/glympse/android/hal/GMessageListener;->lastMessageFound(Lcom/glympse/android/core/GCommon;J)V
:cond_90
return-void
:catch_91
move-exception v0
move-object v2, v0
move-object v3, v6
move-wide v0, v8
:goto_95
const/4 v4, 0x0
:try_start_96
invoke-static {v2, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:try_end_99
.catchall {:try_start_96 .. :try_end_99} :catchall_af
if-eqz v3, :cond_83
:try_start_9b
invoke-interface {v3}, Landroid/database/Cursor;->close()V
:try_end_9e
.catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9e} :catch_9f
goto :goto_83
:catch_9f
move-exception v2
goto :goto_83
:catchall_a1
move-exception v0
:goto_a2
if-eqz v6, :cond_a7
:try_start_a4
invoke-interface {v6}, Landroid/database/Cursor;->close()V
:try_end_a7
.catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_a7} :catch_aa
:goto_a7
:cond_a7
throw v0
:catch_a8
move-exception v2
goto :goto_83
:catch_aa
move-exception v1
goto :goto_a7
:catchall_ac
move-exception v0
move-object v6, v10
goto :goto_a2
:catchall_af
move-exception v0
move-object v6, v3
goto :goto_a2
:catch_b2
move-exception v0
move-object v2, v0
move-object v3, v10
move-wide v0, v8
goto :goto_95
:catch_b7
move-exception v0
move-object v2, v0
move-object v3, v10
move-wide v0, v6
goto :goto_95
:cond_bc
move-wide v0, v8
goto :goto_7e
.end method
.method public start(JLcom/glympse/android/hal/GMessageListener;)V
.registers 8
const/4 v3, 0x0
iput-object p3, p0, Lcom/glympse/android/hal/bq;->eF:Lcom/glympse/android/hal/GMessageListener;
iget-object v0, p0, Lcom/glympse/android/hal/bq;->eG:Lcom/glympse/android/hal/br;
if-nez v0, :cond_23
:try_start_7
new-instance v0, Lcom/glympse/android/hal/br;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/glympse/android/hal/br;-><init>(Lcom/glympse/android/hal/bq;Lcom/glympse/android/hal/bq$1;)V
iput-object v0, p0, Lcom/glympse/android/hal/bq;->eG:Lcom/glympse/android/hal/br;
new-instance v0, Landroid/content/IntentFilter;
const-string v1, "android.provider.Telephony.SMS_RECEIVED"
invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
:try_end_16
.catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_16} :catch_2d
const v1, 0x7fffffff
:try_start_19
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V
:try_start_1c
:try_end_1c
.catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_27
:goto_1c
iget-object v1, p0, Lcom/glympse/android/hal/bq;->e:Landroid/content/Context;
iget-object v2, p0, Lcom/glympse/android/hal/bq;->eG:Lcom/glympse/android/hal/br;
invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
:goto_23
:cond_23
:try_end_23
.catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_23} :catch_2d
invoke-direct {p0, p1, p2}, Lcom/glympse/android/hal/bq;->c(J)V
return-void
:catch_27
move-exception v1
const/4 v2, 0x0
:try_start_29
invoke-static {v1, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:try_end_2c
.catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_2d
goto :goto_1c
:catch_2d
move-exception v0
invoke-static {v0, v3}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_23
.end method
.method public stop()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/glympse/android/hal/bq;->eG:Lcom/glympse/android/hal/br;
if-eqz v0, :cond_e
:try_start_5
iget-object v0, p0, Lcom/glympse/android/hal/bq;->e:Landroid/content/Context;
iget-object v1, p0, Lcom/glympse/android/hal/bq;->eG:Lcom/glympse/android/hal/br;
invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
:try_end_c
.catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_11
:goto_c
iput-object v2, p0, Lcom/glympse/android/hal/bq;->eG:Lcom/glympse/android/hal/br;
:cond_e
iput-object v2, p0, Lcom/glympse/android/hal/bq;->eF:Lcom/glympse/android/hal/GMessageListener;
return-void
:catch_11
move-exception v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_c
.end method