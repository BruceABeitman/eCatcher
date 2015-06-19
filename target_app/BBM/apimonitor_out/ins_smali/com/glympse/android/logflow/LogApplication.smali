.class public Lcom/glympse/android/logflow/LogApplication;
.super Landroid/app/Application;
.source "LogApplication.java"
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Landroid/app/Application;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V
return-void
.end method
.method protected attachBaseContext(Landroid/content/Context;)V
.registers 5
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V
invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V
return-void
.end method
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
.registers 8
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
const/4 v2, 0x1
aput-object p2, v1, v2
const/4 v2, 0x2
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V
invoke-super {p0, p1, p2, p3}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v0
return v0
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 4
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V
invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V
return-void
.end method
.method public onCreate()V
.registers 3
const-string v1, " + Lcom/glympse/android/logflow/LogApplication; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V
invoke-super {p0}, Landroid/app/Application;->onCreate()V
const-string v1, " - Lcom/glympse/android/logflow/LogApplication; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onLowMemory()V
.registers 3
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V
invoke-super {p0}, Landroid/app/Application;->onLowMemory()V
return-void
.end method
.method public onTerminate()V
.registers 3
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V
invoke-super {p0}, Landroid/app/Application;->onTerminate()V
return-void
.end method
.method public onTrimMemory(I)V
.registers 6
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V
invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V
return-void
.end method
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
.registers 6
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
const/4 v2, 0x1
aput-object p2, v1, v2
invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V
invoke-super {p0, p1, p2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
.registers 8
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const/4 v1, 0x4
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
const/4 v2, 0x1
aput-object p2, v1, v2
const/4 v2, 0x2
aput-object p3, v1, v2
const/4 v2, 0x3
aput-object p4, v1, v2
invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V
invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public setTheme(I)V
.registers 6
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V
invoke-super {p0, p1}, Landroid/app/Application;->setTheme(I)V
return-void
.end method
.method public unbindService(Landroid/content/ServiceConnection;)V
.registers 5
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V
invoke-super {p0, p1}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V
return-void
.end method
.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
.registers 5
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/glympse/android/logflow/LogFlow;->logMethod(Ljava/lang/Class;[Ljava/lang/Object;)V
invoke-super {p0, p1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return-void
.end method