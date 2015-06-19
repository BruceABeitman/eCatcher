.class  Lcom/twidroid/service/StreamingService$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/service/StreamingService;
.method constructor <init>(Lcom/twidroid/service/StreamingService;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/service/StreamingService$3;->a:Lcom/twidroid/service/StreamingService;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
const-string v0, "StreamingService"
const-string v1, "Stopping all streams, because received shutdown event"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/twidroid/service/StreamingService;->b:Ljava/util/Map;
monitor-enter v1
:try_start_a
sget-object v0, Lcom/twidroid/service/StreamingService;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_14
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_27
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/net/a/c/a/k;
invoke-virtual {v0}, Lcom/twidroid/net/a/c/a/d;->g()V
goto :goto_14
:catchall_24
move-exception v0
monitor-exit v1
:try_end_26
.catchall {:try_start_a .. :try_end_26} :catchall_24
throw v0
:try_start_27
:cond_27
monitor-exit v1
:try_end_28
.catchall {:try_start_27 .. :try_end_28} :catchall_24
return-void
.end method