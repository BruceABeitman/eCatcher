.class  Lcom/glympse/android/hal/br;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"
.field private static final eH:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"
.field final synthetic eI:Lcom/glympse/android/hal/bq;
.method private constructor <init>(Lcom/glympse/android/hal/bq;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/hal/br;->eI:Lcom/glympse/android/hal/bq;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/hal/bq;Lcom/glympse/android/hal/bq$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/glympse/android/hal/br;-><init>(Lcom/glympse/android/hal/bq;)V
return-void
.end method
.method private e(Landroid/content/Intent;)[Ljava/lang/Object;
.registers 8
const/4 v4, 0x0
const/4 v1, 0x0
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_37
:try_start_8
const-string v2, "pdus"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/Object;
check-cast v0, [Ljava/lang/Object;
array-length v2, v0
new-array v2, v2, [Ljava/lang/Object;
:try_end_15
.catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_15} :catch_2b
move v3, v4
:try_start_16
:goto_16
array-length v1, v0
if-ge v3, v1, :cond_29
aget-object v1, v0, v3
check-cast v1, [B
check-cast v1, [B
invoke-static {v1}, Lcom/glympse/android/hal/Reflection$_SmsMessage;->createFromPdu([B)Ljava/lang/Object;
move-result-object v1
aput-object v1, v2, v3
:try_end_25
.catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_25} :catch_33
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_16
:cond_29
move-object v0, v2
:goto_2a
return-object v0
:catch_2b
move-exception v0
move-object v5, v0
move-object v0, v1
move-object v1, v5
:goto_2f
invoke-static {v1, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_2a
:catch_33
move-exception v0
move-object v1, v0
move-object v0, v2
goto :goto_2f
:cond_37
move-object v0, v1
goto :goto_2a
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 14
const/4 v0, 0x1
const-string v1, "[SMSReceiver::onReceive]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
const-wide/16 v2, 0x7d0
add-long/2addr v2, v0
if-eqz p2, :cond_70
:try_start_f
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "android.provider.Telephony.SMS_RECEIVED"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_70
invoke-direct {p0, p2}, Lcom/glympse/android/hal/br;->e(Landroid/content/Intent;)[Ljava/lang/Object;
move-result-object v9
if-eqz v9, :cond_70
const-wide/16 v0, 0x0
array-length v10, v9
const/4 v4, 0x0
move v8, v4
:goto_26
if-ge v8, v10, :cond_57
aget-object v5, v9, v8
:try_end_2a
.catch Ljava/lang/Throwable; {:try_start_f .. :try_end_2a} :catch_71
if-eqz v5, :cond_4c
cmp-long v4, v2, v0
if-lez v4, :cond_77
move-wide v6, v2
:goto_31
:try_start_31
invoke-static {v5}, Lcom/glympse/android/hal/Reflection$_SmsMessage;->getDisplayOriginatingAddress(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-static {v5}, Lcom/glympse/android/hal/Reflection$_SmsMessage;->getDisplayMessageBody(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
iget-object v0, p0, Lcom/glympse/android/hal/br;->eI:Lcom/glympse/android/hal/bq;
invoke-static {v0}, Lcom/glympse/android/hal/bq;->a(Lcom/glympse/android/hal/bq;)Lcom/glympse/android/hal/GMessageListener;
move-result-object v0
if-eqz v0, :cond_4b
iget-object v0, p0, Lcom/glympse/android/hal/br;->eI:Lcom/glympse/android/hal/bq;
invoke-static {v0}, Lcom/glympse/android/hal/bq;->a(Lcom/glympse/android/hal/bq;)Lcom/glympse/android/hal/GMessageListener;
move-result-object v0
const/4 v1, 0x1
invoke-interface/range {v0 .. v5}, Lcom/glympse/android/hal/GMessageListener;->messageReceived(ZJLjava/lang/String;Ljava/lang/String;)V
:try_end_4b
.catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_4b} :catch_50
:cond_4b
move-wide v0, v6
:cond_4c
:goto_4c
add-int/lit8 v4, v8, 0x1
move v8, v4
goto :goto_26
:catch_50
move-exception v0
const/4 v1, 0x0
:try_start_52
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
move-wide v0, v6
goto :goto_4c
:cond_57
iget-object v2, p0, Lcom/glympse/android/hal/br;->eI:Lcom/glympse/android/hal/bq;
invoke-static {v2}, Lcom/glympse/android/hal/bq;->a(Lcom/glympse/android/hal/bq;)Lcom/glympse/android/hal/GMessageListener;
move-result-object v2
if-eqz v2, :cond_70
const-wide/16 v2, 0x0
cmp-long v2, v2, v0
if-eqz v2, :cond_70
iget-object v2, p0, Lcom/glympse/android/hal/br;->eI:Lcom/glympse/android/hal/bq;
invoke-static {v2}, Lcom/glympse/android/hal/bq;->a(Lcom/glympse/android/hal/bq;)Lcom/glympse/android/hal/GMessageListener;
move-result-object v2
iget-object v3, p0, Lcom/glympse/android/hal/br;->eI:Lcom/glympse/android/hal/bq;
invoke-interface {v2, v3, v0, v1}, Lcom/glympse/android/hal/GMessageListener;->lastMessageFound(Lcom/glympse/android/core/GCommon;J)V
:goto_70
:cond_70
:try_end_70
.catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_70} :catch_71
return-void
:catch_71
move-exception v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_70
:cond_77
move-wide v6, v0
goto :goto_31
.end method