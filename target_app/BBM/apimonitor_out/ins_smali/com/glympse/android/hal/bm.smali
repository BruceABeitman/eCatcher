.class  Lcom/glympse/android/hal/bm;
.super Ljava/lang/Object;
.source "SmsProvider.java"
.implements Lcom/glympse/android/hal/GSmsProvider;
.field private aV:Landroid/os/Handler;
.field private e:Landroid/content/Context;
.field private eu:I
.field private ev:Ljava/util/Queue;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/bm;->e:Landroid/content/Context;
const/4 v0, 0x0
iput v0, p0, Lcom/glympse/android/hal/bm;->eu:I
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/glympse/android/hal/bm;->ev:Ljava/util/Queue;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/glympse/android/hal/bm;->aV:Landroid/os/Handler;
iput-object p1, p0, Lcom/glympse/android/hal/bm;->e:Landroid/content/Context;
return-void
.end method
.method private V()Z
.registers 3
:try_start_0
iget-object v0, p0, Lcom/glympse/android/hal/bm;->e:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const-string v1, "android_id"
invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
:goto_b
:try_end_b
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_d
const/4 v0, 0x0
return v0
:catch_d
move-exception v0
goto :goto_b
.end method
.method private W()Z
.registers 5
const/4 v0, 0x0
:try_start_1
iget-object v1, p0, Lcom/glympse/android/hal/bm;->e:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
const-string v2, "airplane_mode_on"
const/4 v3, 0x0
invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
:try_end_d
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_12
move-result v1
if-eqz v1, :cond_11
const/4 v0, 0x1
:cond_11
:goto_11
return v0
:catch_12
move-exception v1
goto :goto_11
.end method
.method static synthetic a(Lcom/glympse/android/hal/bm;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/bm;->aV:Landroid/os/Handler;
return-object v0
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/hal/GSmsListener;)V
.registers 7
const/4 v0, 0x1
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Adding message to queue: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/hal/bm;->ev:Ljava/util/Queue;
new-instance v1, Lcom/glympse/android/hal/bn;
invoke-direct {v1, p0, p1, p2, p3}, Lcom/glympse/android/hal/bn;-><init>(Lcom/glympse/android/hal/bm;Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/hal/GSmsListener;)V
invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
return-void
.end method
.method static synthetic b(Lcom/glympse/android/hal/bm;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/bm;->e:Landroid/content/Context;
return-object v0
.end method
.method static synthetic c(Lcom/glympse/android/hal/bm;)I
.registers 3
iget v0, p0, Lcom/glympse/android/hal/bm;->eu:I
add-int/lit8 v1, v0, -0x1
iput v1, p0, Lcom/glympse/android/hal/bm;->eu:I
return v0
.end method
.method static synthetic d(Lcom/glympse/android/hal/bm;)I
.registers 2
iget v0, p0, Lcom/glympse/android/hal/bm;->eu:I
return v0
.end method
.method protected X()V
.registers 5
iget-object v0, p0, Lcom/glympse/android/hal/bm;->ev:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/hal/bn;
if-eqz v0, :cond_28
const/4 v1, 0x1
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Sending message from queue: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, v0, Lcom/glympse/android/hal/bn;->ew:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v1, v0, Lcom/glympse/android/hal/bn;->ew:Ljava/lang/String;
iget-object v2, v0, Lcom/glympse/android/hal/bn;->ex:Ljava/lang/String;
iget-object v0, v0, Lcom/glympse/android/hal/bn;->ey:Lcom/glympse/android/hal/GSmsListener;
invoke-virtual {p0, v1, v2, v0}, Lcom/glympse/android/hal/bm;->sendSms(Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/hal/GSmsListener;)Z
:cond_28
return-void
.end method
.method protected c(Ljava/lang/String;Ljava/lang/String;)Z
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
:try_start_2
iget-object v2, p0, Lcom/glympse/android/hal/bm;->e:Landroid/content/Context;
const-string v3, "android.permission.WRITE_SMS"
invoke-static {v2, v3}, Lcom/glympse/android/hal/t;->b(Landroid/content/Context;Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_d
:cond_c
:goto_c
return v0
:cond_d
new-instance v2, Landroid/content/ContentValues;
invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
const-string v3, "address"
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->getDigitsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v3, "body"
invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
iget-object v3, p0, Lcom/glympse/android/hal/bm;->e:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
const-string v4, "content://sms/sent"
invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v4
invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
:try_end_2f
.catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2f} :catch_34
move-result-object v2
if-eqz v2, :cond_c
move v0, v1
goto :goto_c
:catch_34
move-exception v2
const-string v2, "Unable to save SMS in system sent SMS folder. This is fine - you need READ_SMS and WRITE_SMS if you want this to work."
invoke-static {v1, v2}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
goto :goto_c
.end method
.method public canDeviceSendSms()I
.registers 8
const/4 v4, 0x0
const/4 v3, -0x1
const/4 v1, 0x1
invoke-direct {p0}, Lcom/glympse/android/hal/bm;->V()Z
move-result v5
invoke-direct {p0}, Lcom/glympse/android/hal/bm;->W()Z
move-result v6
:try_start_b
iget-object v0, p0, Lcom/glympse/android/hal/bm;->e:Landroid/content/Context;
const-string v2, "phone"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I
:try_end_18
.catch Ljava/lang/Throwable; {:try_start_b .. :try_end_18} :catch_2a
move-result v2
:try_start_19
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I
:try_end_1c
.catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_34
move-result v3
:goto_1d
if-nez v5, :cond_30
if-nez v6, :cond_30
if-eqz v2, :cond_30
if-eq v1, v3, :cond_30
move v0, v1
:goto_26
if-eqz v0, :cond_32
move v0, v1
:goto_29
return v0
:catch_2a
move-exception v0
move v2, v3
:goto_2c
invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_1d
:cond_30
move v0, v4
goto :goto_26
:cond_32
const/4 v0, 0x3
goto :goto_29
:catch_34
move-exception v0
goto :goto_2c
.end method
.method public sendSms(Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/hal/GSmsListener;)Z
.registers 16
const/4 v8, 0x1
const/4 v7, 0x0
invoke-static {}, Lcom/glympse/android/hal/Reflection$_SmsManager;->Load()Z
move-result v0
if-nez v0, :cond_a
move v0, v7
:goto_9
return v0
:cond_a
iget v0, p0, Lcom/glympse/android/hal/bm;->eu:I
if-lez v0, :cond_13
invoke-direct {p0, p1, p2, p3}, Lcom/glympse/android/hal/bm;->a(Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/hal/GSmsListener;)V
move v0, v8
goto :goto_9
:cond_13
:try_start_13
invoke-static {}, Lcom/glympse/android/hal/Reflection$_SmsManager;->getDefault()Ljava/lang/Object;
move-result-object v9
invoke-static {v9, p2}, Lcom/glympse/android/hal/Reflection$_SmsManager;->divideMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v10
new-instance v11, Ljava/util/ArrayList;
invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
move-result v0
invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V
invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
move-result v0
iput v0, p0, Lcom/glympse/android/hal/bm;->eu:I
move v6, v7
:goto_2b
invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v6, v0, :cond_6e
new-instance v1, Landroid/content/Intent;
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "com.glympse.android.kit.send.SMS_SENT_"
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I
move-result v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "_"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/hal/bm;->e:Landroid/content/Context;
const/4 v2, 0x0
const/4 v3, 0x0
invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/glympse/android/hal/bo;
invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v3
move-object v1, p0
move-object v2, p3
move-object v4, p1
move-object v5, p2
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/hal/bo;-><init>(Lcom/glympse/android/hal/bm;Lcom/glympse/android/hal/GSmsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
add-int/lit8 v6, v6, 0x1
goto :goto_2b
:cond_6e
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->getDigitsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
const/4 v5, 0x0
move-object v0, v9
move-object v3, v10
move-object v4, v11
invoke-static/range {v0 .. v5}, Lcom/glympse/android/hal/Reflection$_SmsManager;->sendMultipartTextMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
:try_end_7a
.catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_7a} :catch_7c
move v0, v8
goto :goto_9
:catch_7c
move-exception v0
invoke-static {v0, v7}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
move v0, v7
goto :goto_9
.end method