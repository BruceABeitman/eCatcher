.class public Lcom/pinguo/camera360/push/PushService;
.super Landroid/app/Service;
.source "PushService.java"
.field private activityPath:Ljava/lang/String;
.field private lock:[B
.field private thread:Lcom/pinguo/camera360/push/PushThread;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Landroid/app/Service;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/push/PushService;->thread:Lcom/pinguo/camera360/push/PushThread;
const/4 v0, 0x0
new-array v0, v0, [B
iput-object v0, p0, Lcom/pinguo/camera360/push/PushService;->lock:[B
iput-object v1, p0, Lcom/pinguo/camera360/push/PushService;->activityPath:Ljava/lang/String;
return-void
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public onCreate()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/push/PushService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onCreate()V
const-string v1, " - Lcom/pinguo/camera360/push/PushService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/push/PushService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/push/PushService;->thread:Lcom/pinguo/camera360/push/PushThread;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/camera360/push/PushService;->thread:Lcom/pinguo/camera360/push/PushThread;
invoke-virtual {v0}, Lcom/pinguo/camera360/push/PushThread;->clear()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/push/PushService;->thread:Lcom/pinguo/camera360/push/PushThread;
:cond_c
const-string v1, " - Lcom/pinguo/camera360/push/PushService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStartCommand(Landroid/content/Intent;II)I
.registers 14
iget-object v7, p0, Lcom/pinguo/camera360/push/PushService;->lock:[B
monitor-enter v7
if-nez p1, :cond_b
:try_start_5
invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I
move-result v6
monitor-exit v7
:goto_a
return v6
:cond_b
const-string/jumbo v6, "json"
invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string/jumbo v6, "newpush"
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "pushservice json: "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v6, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v3, 0x0
iget-object v6, p0, Lcom/pinguo/camera360/push/PushService;->activityPath:Ljava/lang/String;
if-nez v6, :cond_36
invoke-static {p0}, Lcom/pinguo/camera360/push/PushThread;->getPushPath(Lcom/pinguo/camera360/push/PushService;)Ljava/lang/String;
move-result-object v5
if-nez v5, :cond_6a
const/4 v6, 0x0
iput-object v6, p0, Lcom/pinguo/camera360/push/PushService;->activityPath:Ljava/lang/String;
:goto_36
:cond_36
iget-object v6, p0, Lcom/pinguo/camera360/push/PushService;->activityPath:Ljava/lang/String;
if-eqz v6, :cond_59
new-instance v1, Ljava/io/File;
iget-object v6, p0, Lcom/pinguo/camera360/push/PushService;->activityPath:Ljava/lang/String;
invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v6
if-eqz v6, :cond_59
invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
move-result v6
if-eqz v6, :cond_59
new-instance v6, Lcom/pinguo/camera360/push/PushService$1;
invoke-direct {v6, p0}, Lcom/pinguo/camera360/push/PushService$1;-><init>(Lcom/pinguo/camera360/push/PushService;)V
invoke-virtual {v1, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v2
if-nez v2, :cond_87
const/4 v3, 0x0
:cond_59
:goto_59
invoke-static {v4}, Lcom/pinguo/camera360/push/PushBean;->getPushBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/PushBean;
move-result-object v0
if-nez v0, :cond_8e
if-nez v3, :cond_8e
invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I
move-result v6
monitor-exit v7
goto :goto_a
:catchall_67
move-exception v6
monitor-exit v7
:try_end_69
.catchall {:try_start_5 .. :try_end_69} :catchall_67
throw v6
:cond_6a
:try_start_6a
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v8, "activity"
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
iput-object v6, p0, Lcom/pinguo/camera360/push/PushService;->activityPath:Ljava/lang/String;
goto :goto_36
:cond_87
array-length v6, v2
if-lez v6, :cond_8c
const/4 v3, 0x1
:goto_8b
goto :goto_59
:cond_8c
const/4 v3, 0x0
goto :goto_8b
:cond_8e
iget-object v6, p0, Lcom/pinguo/camera360/push/PushService;->thread:Lcom/pinguo/camera360/push/PushThread;
if-eqz v6, :cond_9a
iget-object v6, p0, Lcom/pinguo/camera360/push/PushService;->thread:Lcom/pinguo/camera360/push/PushThread;
invoke-virtual {v6}, Lcom/pinguo/camera360/push/PushThread;->isAlive()Z
move-result v6
if-nez v6, :cond_ab
:cond_9a
new-instance v6, Lcom/pinguo/camera360/push/PushThread;
invoke-direct {v6, p0}, Lcom/pinguo/camera360/push/PushThread;-><init>(Lcom/pinguo/camera360/push/PushService;)V
iput-object v6, p0, Lcom/pinguo/camera360/push/PushService;->thread:Lcom/pinguo/camera360/push/PushThread;
iget-object v6, p0, Lcom/pinguo/camera360/push/PushService;->thread:Lcom/pinguo/camera360/push/PushThread;
invoke-virtual {v6, v0}, Lcom/pinguo/camera360/push/PushThread;->addPushBean(Lcom/pinguo/camera360/push/PushBean;)V
iget-object v6, p0, Lcom/pinguo/camera360/push/PushService;->thread:Lcom/pinguo/camera360/push/PushThread;
invoke-virtual {v6}, Lcom/pinguo/camera360/push/PushThread;->start()V
:cond_ab
monitor-exit v7
:try_end_ac
.catchall {:try_start_6a .. :try_end_ac} :catchall_67
invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I
move-result v6
goto/16 :goto_a
.end method