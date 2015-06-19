.class public Lcom/fsck/k9/service/PollService;
.super Lcom/fsck/k9/service/CoreService;
.source "PollService.java"
.field private static START_SERVICE:Ljava/lang/String;
.field private static STOP_SERVICE:Ljava/lang/String;
.field private mListener:Lcom/fsck/k9/service/PollService$Listener;
.method static constructor <clinit>()V
.registers 1
const-string v0, "com.fsck.k9.service.PollService.startService"
sput-object v0, Lcom/fsck/k9/service/PollService;->START_SERVICE:Ljava/lang/String;
const-string v0, "com.fsck.k9.service.PollService.stopService"
sput-object v0, Lcom/fsck/k9/service/PollService;->STOP_SERVICE:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/fsck/k9/service/CoreService;-><init>()V
new-instance v0, Lcom/fsck/k9/service/PollService$Listener;
invoke-direct {v0, p0}, Lcom/fsck/k9/service/PollService$Listener;-><init>(Lcom/fsck/k9/service/PollService;)V
iput-object v0, p0, Lcom/fsck/k9/service/PollService;->mListener:Lcom/fsck/k9/service/PollService$Listener;
return-void
.end method
.method public static startService(Landroid/content/Context;)V
.registers 3
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-class v1, Lcom/fsck/k9/service/PollService;
invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
sget-object v1, Lcom/fsck/k9/service/PollService;->START_SERVICE:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-static {p0, v0}, Lcom/fsck/k9/service/PollService;->addWakeLock(Landroid/content/Context;Landroid/content/Intent;)V
invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
return-void
.end method
.method public static stopService(Landroid/content/Context;)V
.registers 3
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-class v1, Lcom/fsck/k9/service/PollService;
invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
sget-object v1, Lcom/fsck/k9/service/PollService;->STOP_SERVICE:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-static {p0, v0}, Lcom/fsck/k9/service/PollService;->addWakeLock(Landroid/content/Context;Landroid/content/Intent;)V
invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
return-void
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public startService(Landroid/content/Intent;I)V
.registers 10
const/4 v3, 0x0
const-string v4, "k9"
sget-object v1, Lcom/fsck/k9/service/PollService;->START_SERVICE:Ljava/lang/String;
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_70
sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v1, :cond_2b
const-string v1, "k9"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "PollService started with startId = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_2b
invoke-virtual {p0}, Lcom/fsck/k9/service/PollService;->getApplication()Landroid/app/Application;
move-result-object v1
invoke-static {v1}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/MessagingController;->getCheckMailListener()Lcom/fsck/k9/MessagingListener;
move-result-object v6
check-cast v6, Lcom/fsck/k9/service/PollService$Listener;
if-nez v6, :cond_5e
sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v1, :cond_46
const-string v1, "k9"
const-string v1, "***** PollService *****: starting new check"
invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_46
iget-object v1, p0, Lcom/fsck/k9/service/PollService;->mListener:Lcom/fsck/k9/service/PollService$Listener;
invoke-virtual {v1, p2}, Lcom/fsck/k9/service/PollService$Listener;->setStartId(I)V
iget-object v1, p0, Lcom/fsck/k9/service/PollService;->mListener:Lcom/fsck/k9/service/PollService$Listener;
invoke-virtual {v1}, Lcom/fsck/k9/service/PollService$Listener;->wakeLockAcquire()V
iget-object v1, p0, Lcom/fsck/k9/service/PollService;->mListener:Lcom/fsck/k9/service/PollService$Listener;
invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->setCheckMailListener(Lcom/fsck/k9/MessagingListener;)V
const/4 v2, 0x0
iget-object v5, p0, Lcom/fsck/k9/service/PollService;->mListener:Lcom/fsck/k9/service/PollService$Listener;
move-object v1, p0
move v4, v3
invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->checkMail(Landroid/content/Context;Lcom/fsck/k9/Account;ZZLcom/fsck/k9/MessagingListener;)V
:goto_5d
:cond_5d
return-void
:cond_5e
sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v1, :cond_69
const-string v1, "k9"
const-string v1, "***** PollService *****: renewing WakeLock"
invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_69
invoke-virtual {v6, p2}, Lcom/fsck/k9/service/PollService$Listener;->setStartId(I)V
invoke-virtual {v6}, Lcom/fsck/k9/service/PollService$Listener;->wakeLockAcquire()V
goto :goto_5d
:cond_70
sget-object v1, Lcom/fsck/k9/service/PollService;->STOP_SERVICE:Ljava/lang/String;
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5d
sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v1, :cond_87
const-string v1, "k9"
const-string v1, "PollService stopping"
invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_87
invoke-virtual {p0}, Lcom/fsck/k9/service/PollService;->stopSelf()V
goto :goto_5d
.end method