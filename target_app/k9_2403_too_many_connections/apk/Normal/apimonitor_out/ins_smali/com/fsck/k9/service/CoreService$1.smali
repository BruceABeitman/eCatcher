.class  Lcom/fsck/k9/service/CoreService$1;
.super Ljava/lang/Object;
.source "CoreService.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/service/CoreService;
.field final synthetic val$runner:Ljava/lang/Runnable;
.field final synthetic val$startId:Ljava/lang/Integer;
.field final synthetic val$wakeLock:Landroid/os/PowerManager$WakeLock;
.method constructor <init>(Lcom/fsck/k9/service/CoreService;Ljava/lang/Runnable;Ljava/lang/Integer;Landroid/os/PowerManager$WakeLock;)V
.registers 5
iput-object p1, p0, Lcom/fsck/k9/service/CoreService$1;->this$0:Lcom/fsck/k9/service/CoreService;
iput-object p2, p0, Lcom/fsck/k9/service/CoreService$1;->val$runner:Ljava/lang/Runnable;
iput-object p3, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;
iput-object p4, p0, Lcom/fsck/k9/service/CoreService$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 7
const-string v5, "CoreService completed Runnable "
const-string v4, "k9"
const-string v3, " with startId "
:try_start_6
sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v0, :cond_34
const-string v0, "k9"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "CoreService running Runnable "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/service/CoreService$1;->val$runner:Ljava/lang/Runnable;
invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " with startId "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_34
iget-object v0, p0, Lcom/fsck/k9/service/CoreService$1;->val$runner:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:try_end_39
.catchall {:try_start_6 .. :try_end_39} :catchall_7c
sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v0, :cond_67
const-string v0, "k9"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "CoreService completed Runnable "
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fsck/k9/service/CoreService$1;->val$runner:Ljava/lang/Runnable;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " with startId "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_67
iget-object v0, p0, Lcom/fsck/k9/service/CoreService$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
iget-object v0, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;
if-eqz v0, :cond_7b
iget-object v0, p0, Lcom/fsck/k9/service/CoreService$1;->this$0:Lcom/fsck/k9/service/CoreService;
iget-object v1, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Lcom/fsck/k9/service/CoreService;->stopSelf(I)V
:cond_7b
return-void
:catchall_7c
move-exception v0
sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v1, :cond_ab
const-string v1, "k9"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "CoreService completed Runnable "
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/service/CoreService$1;->val$runner:Ljava/lang/Runnable;
invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " with startId "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_ab
iget-object v1, p0, Lcom/fsck/k9/service/CoreService$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
iget-object v1, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;
if-eqz v1, :cond_bf
iget-object v1, p0, Lcom/fsck/k9/service/CoreService$1;->this$0:Lcom/fsck/k9/service/CoreService;
iget-object v2, p0, Lcom/fsck/k9/service/CoreService$1;->val$startId:Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/service/CoreService;->stopSelf(I)V
:cond_bf
throw v0
.end method