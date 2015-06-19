.class public Lcom/igexin/sdk/PushService;
.super Landroid/app/Service;
.field private static a:Ljava/lang/String;
.field private b:Lcom/igexin/sdk/IPushCore;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "PushSdk"
sput-object v0, Lcom/igexin/sdk/PushService;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Service;-><init>()V
return-void
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;
invoke-interface {v0, p1}, Lcom/igexin/sdk/IPushCore;->onServiceBind(Landroid/content/Intent;)Landroid/os/IBinder;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public onCreate()V
.registers 3
const-string v1, " + Lcom/igexin/sdk/PushService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onCreate()V
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/igexin/sdk/a/a;->a(Landroid/content/Context;)Z
invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;
move-result-object v0
iput-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;
iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;
invoke-interface {v0, p0}, Lcom/igexin/sdk/IPushCore;->start(Landroid/content/Context;)Z
const-string v1, " - Lcom/igexin/sdk/PushService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/igexin/sdk/PushService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;
invoke-interface {v0}, Lcom/igexin/sdk/IPushCore;->onServiceDestroy()V
:cond_9
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v0
invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
invoke-super {p0}, Landroid/app/Service;->onDestroy()V
const-string v1, " - Lcom/igexin/sdk/PushService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onLowMemory()V
.registers 1
invoke-super {p0}, Landroid/app/Service;->onLowMemory()V
return-void
.end method
.method public onStartCommand(Landroid/content/Intent;II)I
.registers 5
invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I
iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;
invoke-interface {v0, p1, p2, p3}, Lcom/igexin/sdk/IPushCore;->onServiceStartCommand(Landroid/content/Intent;II)I
move-result v0
:goto_d
return v0
:cond_e
const/4 v0, 0x1
goto :goto_d
.end method