.class public Lcom/fsck/k9/service/PushService;
.super Lcom/fsck/k9/service/CoreService;
.source "PushService.java"
.field private static START_SERVICE:Ljava/lang/String;
.field private static STOP_SERVICE:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string v0, "com.fsck.k9.service.PushService.startService"
sput-object v0, Lcom/fsck/k9/service/PushService;->START_SERVICE:Ljava/lang/String;
const-string v0, "com.fsck.k9.service.PushService.stopService"
sput-object v0, Lcom/fsck/k9/service/PushService;->STOP_SERVICE:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/service/CoreService;-><init>()V
return-void
.end method
.method public static startService(Landroid/content/Context;)V
.registers 3
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-class v1, Lcom/fsck/k9/service/PushService;
invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
sget-object v1, Lcom/fsck/k9/service/PushService;->START_SERVICE:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-static {p0, v0}, Lcom/fsck/k9/service/PushService;->addWakeLock(Landroid/content/Context;Landroid/content/Intent;)V
invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
return-void
.end method
.method public static stopService(Landroid/content/Context;)V
.registers 3
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-class v1, Lcom/fsck/k9/service/PushService;
invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
sget-object v1, Lcom/fsck/k9/service/PushService;->STOP_SERVICE:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-static {p0, v0}, Lcom/fsck/k9/service/PushService;->addWakeLock(Landroid/content/Context;Landroid/content/Intent;)V
invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
return-void
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public startService(Landroid/content/Intent;I)V
.registers 6
const-string v2, "k9"
sget-object v0, Lcom/fsck/k9/service/PushService;->START_SERVICE:Ljava/lang/String;
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2b
sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v0, :cond_2a
const-string v0, "k9"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "PushService started with startId = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:goto_2a
:cond_2a
return-void
:cond_2b
sget-object v0, Lcom/fsck/k9/service/PushService;->STOP_SERVICE:Ljava/lang/String;
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2a
sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v0, :cond_53
const-string v0, "k9"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "PushService stopping with startId = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_53
invoke-virtual {p0, p2}, Lcom/fsck/k9/service/PushService;->stopSelf(I)V
goto :goto_2a
.end method