.class public Lcom/igexin/sdk/PushManager;
.super Ljava/lang/Object;
.field private static a:Lcom/igexin/sdk/PushManager;
.field private b:J
.field private c:J
.method public constructor <init>()V
.registers 3
const-wide/16 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v0, p0, Lcom/igexin/sdk/PushManager;->b:J
iput-wide v0, p0, Lcom/igexin/sdk/PushManager;->c:J
return-void
.end method
.method public static getInstance()Lcom/igexin/sdk/PushManager;
.registers 1
sget-object v0, Lcom/igexin/sdk/PushManager;->a:Lcom/igexin/sdk/PushManager;
if-nez v0, :cond_b
new-instance v0, Lcom/igexin/sdk/PushManager;
invoke-direct {v0}, Lcom/igexin/sdk/PushManager;-><init>()V
sput-object v0, Lcom/igexin/sdk/PushManager;->a:Lcom/igexin/sdk/PushManager;
:cond_b
sget-object v0, Lcom/igexin/sdk/PushManager;->a:Lcom/igexin/sdk/PushManager;
return-object v0
.end method
.method public getVersion(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const-string/jumbo v0, "2.2.5.7"
return-object v0
.end method
.method public initialize(Landroid/content/Context;)V
.registers 6
:try_start_0
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
new-instance v1, Landroid/content/Intent;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
const-class v3, Lcom/igexin/sdk/PushService;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v2, "action"
sget-object v3, Lcom/igexin/sdk/PushConsts;->ACTION_SERVICE_INITIALIZE:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v2, "op_app"
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:try_end_28
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29
:goto_28
return-void
:catch_29
move-exception v0
goto :goto_28
.end method
.method public isPushTurnedOn(Landroid/content/Context;)Z
.registers 3
new-instance v0, Lcom/igexin/sdk/a/c;
invoke-direct {v0, p1}, Lcom/igexin/sdk/a/c;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/igexin/sdk/a/c;->c()Z
move-result v0
if-nez v0, :cond_d
const/4 v0, 0x1
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public sendFeedbackMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
.registers 8
if-eqz p2, :cond_e
if-eqz p3, :cond_e
const v0, 0x15f91
if-lt p4, v0, :cond_e
const v0, 0x16377
if-le p4, v0, :cond_10
:cond_e
const/4 v0, 0x0
:goto_f
return v0
:cond_10
new-instance v0, Landroid/content/Intent;
const-string/jumbo v1, "com.igexin.sdk.action.pushmanager"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "action"
const-string/jumbo v2, "sendFeedbackMessage"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "taskid"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "messageid"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "actionid"
invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
const/4 v0, 0x1
goto :goto_f
.end method
.method public sendMessage(Landroid/content/Context;Ljava/lang/String;[B)Z
.registers 10
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
if-eqz p2, :cond_19
if-eqz p3, :cond_19
array-length v2, p3
int-to-long v2, v2
const-wide/16 v4, 0x1000
cmp-long v2, v2, v4
if-gtz v2, :cond_19
iget-wide v2, p0, Lcom/igexin/sdk/PushManager;->c:J
sub-long/2addr v0, v2
const-wide/16 v2, 0x3e8
cmp-long v0, v0, v2
if-gez v0, :cond_1b
:cond_19
const/4 v0, 0x0
:goto_1a
return v0
:cond_1b
new-instance v0, Landroid/content/Intent;
const-string/jumbo v1, "com.igexin.sdk.action.pushmanager"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "action"
const-string/jumbo v2, "sendMessage"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "taskid"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "extraData"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
const/4 v0, 0x1
goto :goto_1a
.end method
.method public setHeartbeatInterval(Landroid/content/Context;I)Z
.registers 6
if-gez p2, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
new-instance v0, Landroid/content/Intent;
const-string/jumbo v1, "com.igexin.sdk.action.pushmanager"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "action"
const-string/jumbo v2, "setHeartbeatInterval"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "interval"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
const/4 v0, 0x1
goto :goto_3
.end method
.method public setSilentTime(Landroid/content/Context;II)Z
.registers 7
if-ltz p2, :cond_c
const/16 v0, 0x18
if-ge p2, v0, :cond_c
if-ltz p3, :cond_c
const/16 v0, 0x17
if-le p3, v0, :cond_e
:cond_c
const/4 v0, 0x0
:goto_d
return v0
:cond_e
new-instance v0, Landroid/content/Intent;
const-string/jumbo v1, "com.igexin.sdk.action.pushmanager"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "action"
const-string/jumbo v2, "setSilentTime"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "beginHour"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string/jumbo v1, "duration"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
const/4 v0, 0x1
goto :goto_d
.end method
.method public setSocketTimeout(Landroid/content/Context;I)Z
.registers 6
if-gez p2, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
new-instance v0, Landroid/content/Intent;
const-string/jumbo v1, "com.igexin.sdk.action.pushmanager"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "action"
const-string/jumbo v2, "setSocketTimeout"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "timeout"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
const/4 v0, 0x1
goto :goto_3
.end method
.method public setTag(Landroid/content/Context;[Lcom/igexin/sdk/Tag;)I
.registers 10
const/4 v0, 0x0
if-eqz p2, :cond_67
array-length v1, p2
int-to-long v1, v1
const-wide/16 v3, 0xc8
cmp-long v1, v1, v3
if-lez v1, :cond_e
const/16 v0, 0x4e21
:goto_d
return v0
:cond_e
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-wide v3, p0, Lcom/igexin/sdk/PushManager;->b:J
const-wide/16 v5, 0x3e8
sub-long/2addr v1, v5
cmp-long v1, v3, v1
if-lez v1, :cond_1e
const/16 v0, 0x4e22
goto :goto_d
:cond_1e
new-instance v2, Landroid/content/Intent;
const-string/jumbo v1, "com.igexin.sdk.action.pushmanager"
invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "action"
const-string/jumbo v3, "setTag"
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
array-length v4, p2
move v1, v0
:goto_36
if-ge v1, v4, :cond_4a
aget-object v5, p2, v1
invoke-virtual {v5}, Lcom/igexin/sdk/Tag;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string/jumbo v5, ","
invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v1, v1, 0x1
goto :goto_36
:cond_4a
invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
const-string/jumbo v1, "tags"
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iput-wide v1, p0, Lcom/igexin/sdk/PushManager;->b:J
goto :goto_d
:cond_67
const/16 v0, 0x4e26
goto :goto_d
.end method
.method public stopService(Landroid/content/Context;)V
.registers 5
new-instance v0, Landroid/content/Intent;
const-string/jumbo v1, "com.igexin.sdk.action.pushmanager"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "action"
const-string/jumbo v2, "stopService"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public turnOffPush(Landroid/content/Context;)V
.registers 5
new-instance v0, Landroid/content/Intent;
const-string/jumbo v1, "com.igexin.sdk.action.pushmanager"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "action"
const-string/jumbo v2, "turnOffPush"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public turnOnPush(Landroid/content/Context;)V
.registers 6
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
:try_start_8
new-instance v1, Landroid/content/Intent;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
const-class v3, Lcom/igexin/sdk/PushService;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v2, "action"
const-string/jumbo v3, "com.igexin.action.initialize.slave"
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v2, "op_app"
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v0, "isSlave"
const/4 v2, 0x1
invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:goto_30
:try_end_30
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_30} :catch_31
return-void
:catch_31
move-exception v0
goto :goto_30
.end method