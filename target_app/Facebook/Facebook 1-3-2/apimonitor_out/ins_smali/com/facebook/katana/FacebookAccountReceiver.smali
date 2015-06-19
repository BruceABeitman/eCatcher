.class public Lcom/facebook/katana/FacebookAccountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FacebookAccountReceiver.java"
.field private static synthetic $SWITCH_TABLE$com$facebook$katana$binding$AppSession$LoginStatus:[I = null
.field private static final TAG:Ljava/lang/String; = "FacebookAccountReceiver"
.method static synthetic $SWITCH_TABLE$com$facebook$katana$binding$AppSession$LoginStatus()[I
.registers 3
sget-object v0, Lcom/facebook/katana/FacebookAccountReceiver;->$SWITCH_TABLE$com$facebook$katana$binding$AppSession$LoginStatus:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lcom/facebook/katana/binding/AppSession$LoginStatus;->values()[Lcom/facebook/katana/binding/AppSession$LoginStatus;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession$LoginStatus;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39
:goto_15
sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession$LoginStatus;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_1e
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37
:goto_1e
sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGING_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession$LoginStatus;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_27
:try_end_27
.catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35
:try_start_27
sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGING_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession$LoginStatus;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:try_end_30
.catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33
:goto_30
sput-object v0, Lcom/facebook/katana/FacebookAccountReceiver;->$SWITCH_TABLE$com$facebook$katana$binding$AppSession$LoginStatus:[I
goto :goto_4
:catch_33
move-exception v1
goto :goto_30
:catch_35
move-exception v1
goto :goto_27
:catch_37
move-exception v1
goto :goto_1e
:catch_39
move-exception v1
goto :goto_15
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 10
const/4 v6, 0x3
const-string v5, "FacebookAccountReceiver"
const-string v3, "FacebookAccountReceiver"
invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v3
if-eqz v3, :cond_12
const-string v3, "FacebookAccountReceiver"
const-string v3, "----> onReceive"
invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_12
invoke-static {p1}, Lcom/facebook/katana/provider/UserValuesManager;->getCurrentAccount(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_28
const-string v3, "FacebookAccountReceiver"
invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v3
if-eqz v3, :cond_27
const-string v3, "FacebookAccountReceiver"
const-string v3, "Account does not exist."
invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:goto_27
:cond_27
:pswitch_27
return-void
:cond_28
invoke-static {p1, v2}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
move-result-object v0
if-eqz v0, :cond_4b
const-string v3, "FacebookAccountReceiver"
invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v3
if-eqz v3, :cond_27
const-string v3, "FacebookAccountReceiver"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Account still exists: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_27
:cond_4b
invoke-static {p1}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v1
if-eqz v1, :cond_27
const-string v3, "FacebookAccountReceiver"
invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v3
if-eqz v3, :cond_71
const-string v3, "FacebookAccountReceiver"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Session status: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->getStatus()Lcom/facebook/katana/binding/AppSession$LoginStatus;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_71
invoke-static {}, Lcom/facebook/katana/FacebookAccountReceiver;->$SWITCH_TABLE$com$facebook$katana$binding$AppSession$LoginStatus()[I
move-result-object v3
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->getStatus()Lcom/facebook/katana/binding/AppSession$LoginStatus;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/katana/binding/AppSession$LoginStatus;->ordinal()I
move-result v4
aget v3, v3, v4
packed-switch v3, :pswitch_data_a4
goto :goto_27
:pswitch_83
const-string v3, "FacebookAccountReceiver"
invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v3
if-eqz v3, :cond_9f
const-string v3, "FacebookAccountReceiver"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Logging out: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_9f
invoke-virtual {v1, p1}, Lcom/facebook/katana/binding/AppSession;->authLogout(Landroid/content/Context;)Ljava/lang/String;
goto :goto_27
nop
:pswitch_data_a4
.packed-switch 0x2
:pswitch_27
:pswitch_83
.end packed-switch
.end method