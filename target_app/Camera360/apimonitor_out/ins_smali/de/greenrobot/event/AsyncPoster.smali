.class  Lde/greenrobot/event/AsyncPoster;
.super Ljava/lang/Object;
.source "AsyncPoster.java"
.implements Ljava/lang/Runnable;
.field private final eventBus:Lde/greenrobot/event/EventBus;
.field private final queue:Lde/greenrobot/event/PendingPostQueue;
.method constructor <init>(Lde/greenrobot/event/EventBus;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lde/greenrobot/event/AsyncPoster;->eventBus:Lde/greenrobot/event/EventBus;
new-instance v0, Lde/greenrobot/event/PendingPostQueue;
invoke-direct {v0}, Lde/greenrobot/event/PendingPostQueue;-><init>()V
iput-object v0, p0, Lde/greenrobot/event/AsyncPoster;->queue:Lde/greenrobot/event/PendingPostQueue;
return-void
.end method
.method public enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
.registers 5
invoke-static {p1, p2}, Lde/greenrobot/event/PendingPost;->obtainPendingPost(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)Lde/greenrobot/event/PendingPost;
move-result-object v0
iget-object v1, p0, Lde/greenrobot/event/AsyncPoster;->queue:Lde/greenrobot/event/PendingPostQueue;
invoke-virtual {v1, v0}, Lde/greenrobot/event/PendingPostQueue;->enqueue(Lde/greenrobot/event/PendingPost;)V
sget-object v1, Lde/greenrobot/event/EventBus;->executorService:Ljava/util/concurrent/ExecutorService;
invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public run()V
.registers 4
iget-object v1, p0, Lde/greenrobot/event/AsyncPoster;->queue:Lde/greenrobot/event/PendingPostQueue;
invoke-virtual {v1}, Lde/greenrobot/event/PendingPostQueue;->poll()Lde/greenrobot/event/PendingPost;
move-result-object v0
if-nez v0, :cond_11
new-instance v1, Ljava/lang/IllegalStateException;
const-string/jumbo v2, "No pending post available"
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_11
iget-object v1, p0, Lde/greenrobot/event/AsyncPoster;->eventBus:Lde/greenrobot/event/EventBus;
invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/PendingPost;)V
return-void
.end method