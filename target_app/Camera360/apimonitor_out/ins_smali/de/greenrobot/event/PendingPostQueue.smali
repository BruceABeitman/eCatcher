.class final Lde/greenrobot/event/PendingPostQueue;
.super Ljava/lang/Object;
.source "PendingPostQueue.java"
.field private head:Lde/greenrobot/event/PendingPost;
.field private tail:Lde/greenrobot/event/PendingPost;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method declared-synchronized enqueue(Lde/greenrobot/event/PendingPost;)V
.registers 4
monitor-enter p0
if-nez p1, :cond_f
:try_start_3
new-instance v0, Ljava/lang/NullPointerException;
const-string/jumbo v1, "null cannot be enqueued"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_c
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_c
move-exception v0
monitor-exit p0
throw v0
:cond_f
:try_start_f
iget-object v0, p0, Lde/greenrobot/event/PendingPostQueue;->tail:Lde/greenrobot/event/PendingPost;
if-eqz v0, :cond_1e
iget-object v0, p0, Lde/greenrobot/event/PendingPostQueue;->tail:Lde/greenrobot/event/PendingPost;
iput-object p1, v0, Lde/greenrobot/event/PendingPost;->next:Lde/greenrobot/event/PendingPost;
iput-object p1, p0, Lde/greenrobot/event/PendingPostQueue;->tail:Lde/greenrobot/event/PendingPost;
:goto_19
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
:try_end_1c
.catchall {:try_start_f .. :try_end_1c} :catchall_c
monitor-exit p0
return-void
:try_start_1e
:cond_1e
iget-object v0, p0, Lde/greenrobot/event/PendingPostQueue;->head:Lde/greenrobot/event/PendingPost;
if-nez v0, :cond_27
iput-object p1, p0, Lde/greenrobot/event/PendingPostQueue;->tail:Lde/greenrobot/event/PendingPost;
iput-object p1, p0, Lde/greenrobot/event/PendingPostQueue;->head:Lde/greenrobot/event/PendingPost;
goto :goto_19
:cond_27
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "Head present, but no tail"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_30
.catchall {:try_start_1e .. :try_end_30} :catchall_c
.end method
.method declared-synchronized poll()Lde/greenrobot/event/PendingPost;
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lde/greenrobot/event/PendingPostQueue;->head:Lde/greenrobot/event/PendingPost;
iget-object v1, p0, Lde/greenrobot/event/PendingPostQueue;->head:Lde/greenrobot/event/PendingPost;
if-eqz v1, :cond_14
iget-object v1, p0, Lde/greenrobot/event/PendingPostQueue;->head:Lde/greenrobot/event/PendingPost;
iget-object v1, v1, Lde/greenrobot/event/PendingPost;->next:Lde/greenrobot/event/PendingPost;
iput-object v1, p0, Lde/greenrobot/event/PendingPostQueue;->head:Lde/greenrobot/event/PendingPost;
iget-object v1, p0, Lde/greenrobot/event/PendingPostQueue;->head:Lde/greenrobot/event/PendingPost;
if-nez v1, :cond_14
const/4 v1, 0x0
iput-object v1, p0, Lde/greenrobot/event/PendingPostQueue;->tail:Lde/greenrobot/event/PendingPost;
:try_end_14
.catchall {:try_start_1 .. :try_end_14} :catchall_16
:cond_14
monitor-exit p0
return-object v0
:catchall_16
move-exception v1
monitor-exit p0
throw v1
.end method
.method declared-synchronized poll(I)Lde/greenrobot/event/PendingPost;
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lde/greenrobot/event/PendingPostQueue;->head:Lde/greenrobot/event/PendingPost;
if-nez v0, :cond_9
int-to-long v0, p1
invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
:cond_9
invoke-virtual {p0}, Lde/greenrobot/event/PendingPostQueue;->poll()Lde/greenrobot/event/PendingPost;
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_f
move-result-object v0
monitor-exit p0
return-object v0
:catchall_f
move-exception v0
monitor-exit p0
throw v0
.end method