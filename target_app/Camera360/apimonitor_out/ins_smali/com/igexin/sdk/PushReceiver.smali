.class public Lcom/igexin/sdk/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.field private static a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "PushSdk"
sput-object v0, Lcom/igexin/sdk/PushReceiver;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 9
sget-object v0, Lcom/igexin/sdk/PushBuildConfig;->sdk_conf_terminate_service_enable:Ljava/lang/String;
const-string/jumbo v1, "1"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_17
new-instance v0, Lcom/igexin/sdk/a/d;
invoke-direct {v0, p1}, Lcom/igexin/sdk/a/d;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/igexin/sdk/a/d;->c()Z
move-result v0
if-nez v0, :cond_17
:cond_16
:goto_16
return-void
:cond_17
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "com.igexin.sdk.action.refreshls"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_59
const-string/jumbo v1, "callback_pkgname"
invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "callback_classname"
invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
new-instance v3, Landroid/content/Intent;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v4
const-class v5, Lcom/igexin/sdk/PushService;
invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v4, "action"
const-string/jumbo v5, "com.igexin.sdk.action.refreshls"
invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v4, "callback_pkgname"
invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "callback_classname"
invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:cond_59
const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_71
new-instance v0, Landroid/content/Intent;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
const-class v2, Lcom/igexin/sdk/PushService;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
goto :goto_16
:cond_71
const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_92
new-instance v0, Landroid/content/Intent;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
const-class v2, Lcom/igexin/sdk/PushService;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v1, "action"
const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
goto :goto_16
:cond_92
const-string/jumbo v1, "android.intent.action.USER_PRESENT"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
new-instance v0, Landroid/content/Intent;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
const-class v2, Lcom/igexin/sdk/PushService;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v1, "action"
const-string/jumbo v2, "android.intent.action.USER_PRESENT"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
goto/16 :goto_16
.end method