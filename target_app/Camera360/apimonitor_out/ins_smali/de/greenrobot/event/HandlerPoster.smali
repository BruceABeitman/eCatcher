.class final Lde/greenrobot/event/HandlerPoster;
.super Landroid/os/Handler;
.source "HandlerPoster.java"
.field private final eventBus:Lde/greenrobot/event/EventBus;
.field private handlerActive:Z
.field private final maxMillisInsideHandleMessage:I
.field private final queue:Lde/greenrobot/event/PendingPostQueue;
.method constructor <init>(Lde/greenrobot/event/EventBus;Landroid/os/Looper;I)V
.registers 5
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object p1, p0, Lde/greenrobot/event/HandlerPoster;->eventBus:Lde/greenrobot/event/EventBus;
iput p3, p0, Lde/greenrobot/event/HandlerPoster;->maxMillisInsideHandleMessage:I
new-instance v0, Lde/greenrobot/event/PendingPostQueue;
invoke-direct {v0}, Lde/greenrobot/event/PendingPostQueue;-><init>()V
iput-object v0, p0, Lde/greenrobot/event/HandlerPoster;->queue:Lde/greenrobot/event/PendingPostQueue;
return-void
.end method
.method  enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
.registers 6
invoke-static {p1, p2}, Lde/greenrobot/event/PendingPost;->obtainPendingPost(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)Lde/greenrobot/event/PendingPost;
move-result-object v0
monitor-enter p0
:try_start_5
iget-object v1, p0, Lde/greenrobot/event/HandlerPoster;->queue:Lde/greenrobot/event/PendingPostQueue;
invoke-virtual {v1, v0}, Lde/greenrobot/event/PendingPostQueue;->enqueue(Lde/greenrobot/event/PendingPost;)V
iget-boolean v1, p0, Lde/greenrobot/event/HandlerPoster;->handlerActive:Z
if-nez v1, :cond_27
const/4 v1, 0x1
iput-boolean v1, p0, Lde/greenrobot/event/HandlerPoster;->handlerActive:Z
invoke-virtual {p0}, Lde/greenrobot/event/HandlerPoster;->obtainMessage()Landroid/os/Message;
move-result-object v1
invoke-virtual {p0, v1}, Lde/greenrobot/event/HandlerPoster;->sendMessage(Landroid/os/Message;)Z
move-result v1
if-nez v1, :cond_27
new-instance v1, Lde/greenrobot/event/EventBusException;
const-string/jumbo v2, "Could not send handler message"
invoke-direct {v1, v2}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V
throw v1
:catchall_24
move-exception v1
monitor-exit p0
:try_end_26
.catchall {:try_start_5 .. :try_end_26} :catchall_24
throw v1
:cond_27
:try_start_27
monitor-exit p0
:try_end_28
.catchall {:try_start_27 .. :try_end_28} :catchall_24
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 10
const/4 v1, 0x0
:try_start_1
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v2
:cond_5
iget-object v6, p0, Lde/greenrobot/event/HandlerPoster;->queue:Lde/greenrobot/event/PendingPostQueue;
invoke-virtual {v6}, Lde/greenrobot/event/PendingPostQueue;->poll()Lde/greenrobot/event/PendingPost;
move-result-object v0
if-nez v0, :cond_1e
monitor-enter p0
:try_start_e
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_43
iget-object v6, p0, Lde/greenrobot/event/HandlerPoster;->queue:Lde/greenrobot/event/PendingPostQueue;
invoke-virtual {v6}, Lde/greenrobot/event/PendingPostQueue;->poll()Lde/greenrobot/event/PendingPost;
move-result-object v0
if-nez v0, :cond_1d
const/4 v6, 0x0
iput-boolean v6, p0, Lde/greenrobot/event/HandlerPoster;->handlerActive:Z
monitor-exit p0
:try_end_1a
.catchall {:try_start_e .. :try_end_1a} :catchall_47
iput-boolean v1, p0, Lde/greenrobot/event/HandlerPoster;->handlerActive:Z
:goto_1c
return-void
:try_start_1d
:cond_1d
monitor-exit p0
:try_start_1e
:try_end_1e
.catchall {:try_start_1d .. :try_end_1e} :catchall_47
:cond_1e
iget-object v6, p0, Lde/greenrobot/event/HandlerPoster;->eventBus:Lde/greenrobot/event/EventBus;
invoke-virtual {v6, v0}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/PendingPost;)V
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v6
sub-long v4, v6, v2
iget v6, p0, Lde/greenrobot/event/HandlerPoster;->maxMillisInsideHandleMessage:I
int-to-long v6, v6
cmp-long v6, v4, v6
if-ltz v6, :cond_5
invoke-virtual {p0}, Lde/greenrobot/event/HandlerPoster;->obtainMessage()Landroid/os/Message;
move-result-object v6
invoke-virtual {p0, v6}, Lde/greenrobot/event/HandlerPoster;->sendMessage(Landroid/os/Message;)Z
move-result v6
if-nez v6, :cond_4a
new-instance v6, Lde/greenrobot/event/EventBusException;
const-string/jumbo v7, "Could not send handler message"
invoke-direct {v6, v7}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V
throw v6
:catchall_43
:try_end_43
.catchall {:try_start_1e .. :try_end_43} :catchall_43
move-exception v6
iput-boolean v1, p0, Lde/greenrobot/event/HandlerPoster;->handlerActive:Z
throw v6
:catchall_47
move-exception v6
:try_start_48
monitor-exit p0
:try_start_49
:try_end_49
.catchall {:try_start_48 .. :try_end_49} :catchall_47
throw v6
:try_end_4a
.catchall {:try_start_49 .. :try_end_4a} :catchall_43
:cond_4a
const/4 v1, 0x1
iput-boolean v1, p0, Lde/greenrobot/event/HandlerPoster;->handlerActive:Z
goto :goto_1c
.end method