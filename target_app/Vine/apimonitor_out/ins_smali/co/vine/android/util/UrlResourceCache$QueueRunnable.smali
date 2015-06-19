.class  Lco/vine/android/util/UrlResourceCache$QueueRunnable;
.super Ljava/lang/Object;
.source "UrlResourceCache.java"
.implements Ljava/lang/Runnable;
.field private final mOwnerId:J
.field final synthetic this$0:Lco/vine/android/util/UrlResourceCache;
.method public constructor <init>(Lco/vine/android/util/UrlResourceCache;J)V
.registers 4
iput-object p1, p0, Lco/vine/android/util/UrlResourceCache$QueueRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p2, p0, Lco/vine/android/util/UrlResourceCache$QueueRunnable;->mOwnerId:J
return-void
.end method
.method public run()V
.registers 7
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache$QueueRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;
iget-object v2, v1, Lco/vine/android/util/UrlResourceCache;->mLock:[I
monitor-enter v2
:try_start_5
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache$QueueRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;
iget-object v1, v1, Lco/vine/android/util/UrlResourceCache;->mQueuedDownload:Ljava/util/HashMap;
invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z
move-result v1
if-eqz v1, :cond_11
monitor-exit v2
:goto_10
return-void
:cond_11
new-instance v0, Ljava/util/HashMap;
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache$QueueRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;
iget-object v1, v1, Lco/vine/android/util/UrlResourceCache;->mQueuedDownload:Ljava/util/HashMap;
invoke-virtual {v1}, Ljava/util/HashMap;->size()I
move-result v1
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache$QueueRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;
iget-object v1, v1, Lco/vine/android/util/UrlResourceCache;->mQueuedDownload:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
iget-object v1, p0, Lco/vine/android/util/UrlResourceCache$QueueRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;
iget-object v1, v1, Lco/vine/android/util/UrlResourceCache;->mQueuedDownload:Ljava/util/HashMap;
invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
monitor-exit v2
:try_end_2d
.catchall {:try_start_5 .. :try_end_2d} :catchall_3c
sget-object v1, Lco/vine/android/util/UrlResourceCache;->sExecutor:Ljava/util/concurrent/ExecutorService;
new-instance v2, Lco/vine/android/util/UrlResourceCache$FetchRunnable;
iget-object v3, p0, Lco/vine/android/util/UrlResourceCache$QueueRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;
iget-wide v4, p0, Lco/vine/android/util/UrlResourceCache$QueueRunnable;->mOwnerId:J
invoke-direct {v2, v3, v4, v5, v0}, Lco/vine/android/util/UrlResourceCache$FetchRunnable;-><init>(Lco/vine/android/util/UrlResourceCache;JLjava/util/HashMap;)V
invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
goto :goto_10
:catchall_3c
move-exception v1
:try_start_3d
monitor-exit v2
:try_end_3e
.catchall {:try_start_3d .. :try_end_3e} :catchall_3c
throw v1
.end method