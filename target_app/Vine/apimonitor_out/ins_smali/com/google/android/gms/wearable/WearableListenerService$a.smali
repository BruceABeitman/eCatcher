.class  Lcom/google/android/gms/wearable/WearableListenerService$a;
.super Lcom/google/android/gms/wearable/internal/ac$a;
.field final synthetic alr:Lcom/google/android/gms/wearable/WearableListenerService;
.method private constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/ac$a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService;Lcom/google/android/gms/wearable/WearableListenerService$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$a;-><init>(Lcom/google/android/gms/wearable/WearableListenerService;)V
return-void
.end method
.method public Y(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 5
const-string v0, "WearableLS"
const/4 v1, 0x3
invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_31
const-string v0, "WearableLS"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "onDataItemChanged: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v2}, Lcom/google/android/gms/wearable/WearableListenerService;->a(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_31
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->b(Lcom/google/android/gms/wearable/WearableListenerService;)V
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->c(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_3d
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->d(Lcom/google/android/gms/wearable/WearableListenerService;)Z
move-result v0
if-eqz v0, :cond_4a
invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V
monitor-exit v1
:goto_49
return-void
:cond_4a
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->e(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/os/Handler;
move-result-object v0
new-instance v2, Lcom/google/android/gms/wearable/WearableListenerService$a$1;
invoke-direct {v2, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$a$1;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$a;Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
monitor-exit v1
goto :goto_49
:catchall_5a
move-exception v0
monitor-exit v1
:try_end_5c
.catchall {:try_start_3d .. :try_end_5c} :catchall_5a
throw v0
.end method
.method public a(Lcom/google/android/gms/wearable/internal/af;)V
.registers 5
const-string v0, "WearableLS"
const/4 v1, 0x3
invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_21
const-string v0, "WearableLS"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "onMessageReceived: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_21
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->b(Lcom/google/android/gms/wearable/WearableListenerService;)V
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->c(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_2d
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->d(Lcom/google/android/gms/wearable/WearableListenerService;)Z
move-result v0
if-eqz v0, :cond_37
monitor-exit v1
:goto_36
return-void
:cond_37
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->e(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/os/Handler;
move-result-object v0
new-instance v2, Lcom/google/android/gms/wearable/WearableListenerService$a$2;
invoke-direct {v2, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$a$2;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$a;Lcom/google/android/gms/wearable/internal/af;)V
invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
monitor-exit v1
goto :goto_36
:catchall_47
move-exception v0
monitor-exit v1
:try_end_49
.catchall {:try_start_2d .. :try_end_49} :catchall_47
throw v0
.end method
.method public a(Lcom/google/android/gms/wearable/internal/ai;)V
.registers 5
const-string v0, "WearableLS"
const/4 v1, 0x3
invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_31
const-string v0, "WearableLS"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "onPeerConnected: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v2}, Lcom/google/android/gms/wearable/WearableListenerService;->a(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_31
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->b(Lcom/google/android/gms/wearable/WearableListenerService;)V
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->c(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_3d
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->d(Lcom/google/android/gms/wearable/WearableListenerService;)Z
move-result v0
if-eqz v0, :cond_47
monitor-exit v1
:goto_46
return-void
:cond_47
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->e(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/os/Handler;
move-result-object v0
new-instance v2, Lcom/google/android/gms/wearable/WearableListenerService$a$3;
invoke-direct {v2, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$a$3;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$a;Lcom/google/android/gms/wearable/internal/ai;)V
invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
monitor-exit v1
goto :goto_46
:catchall_57
move-exception v0
monitor-exit v1
:try_end_59
.catchall {:try_start_3d .. :try_end_59} :catchall_57
throw v0
.end method
.method public b(Lcom/google/android/gms/wearable/internal/ai;)V
.registers 5
const-string v0, "WearableLS"
const/4 v1, 0x3
invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_31
const-string v0, "WearableLS"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "onPeerDisconnected: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v2}, Lcom/google/android/gms/wearable/WearableListenerService;->a(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_31
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->b(Lcom/google/android/gms/wearable/WearableListenerService;)V
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->c(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_3d
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->d(Lcom/google/android/gms/wearable/WearableListenerService;)Z
move-result v0
if-eqz v0, :cond_47
monitor-exit v1
:goto_46
return-void
:cond_47
iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;
invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->e(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/os/Handler;
move-result-object v0
new-instance v2, Lcom/google/android/gms/wearable/WearableListenerService$a$4;
invoke-direct {v2, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$a$4;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$a;Lcom/google/android/gms/wearable/internal/ai;)V
invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
monitor-exit v1
goto :goto_46
:catchall_57
move-exception v0
monitor-exit v1
:try_end_59
.catchall {:try_start_3d .. :try_end_59} :catchall_57
throw v0
.end method