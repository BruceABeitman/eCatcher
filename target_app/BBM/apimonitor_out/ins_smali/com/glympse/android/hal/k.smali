.class  Lcom/glympse/android/hal/k;
.super Landroid/content/BroadcastReceiver;
.source "BatteryProvider.java"
.implements Lcom/glympse/android/hal/GBatteryProvider;
.field private F:Z
.field private G:Lcom/glympse/android/hal/GBatteryListener;
.field private H:I
.field private I:Z
.field private J:Z
.field private K:Landroid/os/PowerManager$WakeLock;
.field private e:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
iput-object v1, p0, Lcom/glympse/android/hal/k;->e:Landroid/content/Context;
iput-boolean v2, p0, Lcom/glympse/android/hal/k;->F:Z
iput-object v1, p0, Lcom/glympse/android/hal/k;->G:Lcom/glympse/android/hal/GBatteryListener;
const/4 v0, -0x1
iput v0, p0, Lcom/glympse/android/hal/k;->H:I
iput-boolean v2, p0, Lcom/glympse/android/hal/k;->I:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/hal/k;->J:Z
iput-object v1, p0, Lcom/glympse/android/hal/k;->K:Landroid/os/PowerManager$WakeLock;
iput-object p1, p0, Lcom/glympse/android/hal/k;->e:Landroid/content/Context;
return-void
.end method
.method public acquireWakeLock()V
.registers 5
iget-object v0, p0, Lcom/glympse/android/hal/k;->K:Landroid/os/PowerManager$WakeLock;
if-nez v0, :cond_35
const/4 v0, 0x1
:try_start_5
const-string v1, "[BatteryProvider::acquireWakeLock] Acquiring wake lock"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/hal/k;->e:Landroid/content/Context;
const-string v1, "power"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/PowerManager;
const/4 v1, 0x1
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Glympse-"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/glympse/android/hal/k;->e:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/hal/k;->K:Landroid/os/PowerManager$WakeLock;
iget-object v0, p0, Lcom/glympse/android/hal/k;->K:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
:cond_35
:goto_35
:try_end_35
.catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_35} :catch_36
return-void
:catch_36
move-exception v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_35
.end method
.method public getLevel()I
.registers 2
iget v0, p0, Lcom/glympse/android/hal/k;->H:I
return v0
.end method
.method public isPlugged()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/hal/k;->I:Z
return v0
.end method
.method public isPresent()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/hal/k;->J:Z
return v0
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 12
const/4 v0, 0x1
const/4 v1, 0x0
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
const-string v3, "android.intent.action.BATTERY_CHANGED"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_70
:try_start_e
const-string v2, "plugged"
const/4 v3, 0x0
invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v3
const-string v2, "level"
const/16 v4, 0x64
invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v4
const-string v2, "scale"
const/16 v5, 0x64
invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v5
const-string v2, "present"
const/4 v6, 0x1
invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v2
const/4 v6, 0x3
new-instance v7, Ljava/lang/StringBuilder;
const-string v8, "[BatteryProvider.onReceive] level:"
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, " plugged:"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, " present:"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
if-lez v4, :cond_56
move v2, v0
:cond_56
mul-int/lit8 v4, v4, 0x64
div-int/2addr v4, v5
iput v4, p0, Lcom/glympse/android/hal/k;->H:I
if-lez v3, :cond_71
:goto_5d
iput-boolean v0, p0, Lcom/glympse/android/hal/k;->I:Z
iput-boolean v2, p0, Lcom/glympse/android/hal/k;->J:Z
iget-object v0, p0, Lcom/glympse/android/hal/k;->G:Lcom/glympse/android/hal/GBatteryListener;
if-eqz v0, :cond_70
iget-object v0, p0, Lcom/glympse/android/hal/k;->G:Lcom/glympse/android/hal/GBatteryListener;
iget v2, p0, Lcom/glympse/android/hal/k;->H:I
iget-boolean v3, p0, Lcom/glympse/android/hal/k;->I:Z
iget-boolean v4, p0, Lcom/glympse/android/hal/k;->J:Z
invoke-interface {v0, v2, v3, v4}, Lcom/glympse/android/hal/GBatteryListener;->updateStatus(IZZ)V
:try_end_70
.catch Ljava/lang/Throwable; {:try_start_e .. :try_end_70} :catch_73
:cond_70
:goto_70
return-void
:cond_71
move v0, v1
goto :goto_5d
:catch_73
move-exception v0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_70
.end method
.method public releaseWakeLock()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/hal/k;->K:Landroid/os/PowerManager$WakeLock;
if-eqz v0, :cond_12
const/4 v0, 0x1
:try_start_5
const-string v1, "[BatteryProvider::releaseWakeLock] Releasing wake lock"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/hal/k;->K:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
:try_end_f
.catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_f} :catch_13
:goto_f
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/k;->K:Landroid/os/PowerManager$WakeLock;
:cond_12
return-void
:catch_13
move-exception v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_f
.end method
.method public setBatteryListener(Lcom/glympse/android/hal/GBatteryListener;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/hal/k;->G:Lcom/glympse/android/hal/GBatteryListener;
return-void
.end method
.method public start()V
.registers 4
:try_start_0
iget-boolean v0, p0, Lcom/glympse/android/hal/k;->F:Z
if-nez v0, :cond_13
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/hal/k;->F:Z
iget-object v0, p0, Lcom/glympse/android/hal/k;->e:Landroid/content/Context;
new-instance v1, Landroid/content/IntentFilter;
const-string v2, "android.intent.action.BATTERY_CHANGED"
invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
:cond_13
:try_end_13
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14
:goto_13
return-void
:catch_14
move-exception v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_13
.end method
.method public stop()V
.registers 3
:try_start_0
iget-boolean v0, p0, Lcom/glympse/android/hal/k;->F:Z
if-eqz v0, :cond_c
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/hal/k;->F:Z
iget-object v0, p0, Lcom/glympse/android/hal/k;->e:Landroid/content/Context;
invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
:cond_c
:try_end_c
.catchall {:try_start_0 .. :try_end_c} :catchall_19
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_10
invoke-virtual {p0}, Lcom/glympse/android/hal/k;->releaseWakeLock()V
:goto_f
return-void
:catch_10
move-exception v0
const/4 v1, 0x0
:try_start_12
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:try_end_15
.catchall {:try_start_12 .. :try_end_15} :catchall_19
invoke-virtual {p0}, Lcom/glympse/android/hal/k;->releaseWakeLock()V
goto :goto_f
:catchall_19
move-exception v0
invoke-virtual {p0}, Lcom/glympse/android/hal/k;->releaseWakeLock()V
throw v0
.end method