.class  Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
.super Ljava/lang/Object;
.source "ImageLoaderEngine.java"
.field private final cacheKeysForImageViews:Ljava/util/Map;
.field final configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
.field private final networkDenied:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private final paused:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private final slowNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private taskDistributor:Ljava/util/concurrent/ExecutorService;
.field private taskExecutor:Ljava/util/concurrent/Executor;
.field private taskExecutorForCachedImages:Ljava/util/concurrent/Executor;
.field private final uriLocks:Ljava/util/Map;
.method constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cacheKeysForImageViews:Ljava/util/Map;
new-instance v0, Ljava/util/WeakHashMap;
invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->uriLocks:Ljava/util/Map;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->networkDenied:Ljava/util/concurrent/atomic/AtomicBoolean;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->slowNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-object v0, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->taskExecutor:Ljava/util/concurrent/Executor;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;
iget-object v0, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;
invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskDistributor:Ljava/util/concurrent/ExecutorService;
return-void
.end method
.method static synthetic access$000(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)V
.registers 1
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->initExecutorsIfNeed()V
return-void
.end method
.method static synthetic access$100(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;
return-object v0
.end method
.method static synthetic access$200(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;
return-object v0
.end method
.method private createTaskExecutor()Ljava/util/concurrent/Executor;
.registers 4
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->threadPoolSize:I
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->threadPriority:I
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
invoke-static {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createExecutor(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;
move-result-object v0
return-object v0
.end method
.method private initExecutorsIfNeed()V
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-boolean v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutor:Z
if-nez v0, :cond_16
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;
check-cast v0, Ljava/util/concurrent/ExecutorService;
invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z
move-result v0
if-eqz v0, :cond_16
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->createTaskExecutor()Ljava/util/concurrent/Executor;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;
:cond_16
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-boolean v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutorForCachedImages:Z
if-nez v0, :cond_2c
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;
check-cast v0, Ljava/util/concurrent/ExecutorService;
invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z
move-result v0
if-eqz v0, :cond_2c
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->createTaskExecutor()Ljava/util/concurrent/Executor;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;
:cond_2c
return-void
.end method
.method  cancelDisplayTaskFor(Landroid/widget/ImageView;)V
.registers 4
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cacheKeysForImageViews:Ljava/util/Map;
invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method  denyNetworkDownloads(Z)V
.registers 3
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->networkDenied:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
return-void
.end method
.method  getLoadingUriForView(Landroid/widget/ImageView;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cacheKeysForImageViews:Ljava/util/Map;
invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method  getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
.registers 4
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->uriLocks:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;
if-nez v0, :cond_14
new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->uriLocks:Ljava/util/Map;
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_14
return-object v0
.end method
.method  getPause()Ljava/util/concurrent/atomic/AtomicBoolean;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;
return-object v0
.end method
.method  handleSlowNetwork(Z)V
.registers 3
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->slowNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
return-void
.end method
.method  isNetworkDenied()Z
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->networkDenied:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
return v0
.end method
.method  isSlowNetwork()Z
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->slowNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
return v0
.end method
.method  pause()V
.registers 3
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
return-void
.end method
.method  prepareDisplayTaskFor(Landroid/widget/ImageView;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cacheKeysForImageViews:Ljava/util/Map;
invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method  resume()V
.registers 4
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v2, 0x0
invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
return-void
:catchall_10
move-exception v0
monitor-exit v1
:try_end_12
.catchall {:try_start_3 .. :try_end_12} :catchall_10
throw v0
.end method
.method  stop()V
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-boolean v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutor:Z
if-nez v0, :cond_d
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;
check-cast v0, Ljava/util/concurrent/ExecutorService;
invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
:cond_d
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-boolean v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutorForCachedImages:Z
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;
check-cast v0, Ljava/util/concurrent/ExecutorService;
invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
:cond_1a
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cacheKeysForImageViews:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->uriLocks:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
return-void
.end method
.method  submit(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
.registers 4
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskDistributor:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;
invoke-direct {v1, p0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method  submit(Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;)V
.registers 3
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->initExecutorsIfNeed()V
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;
invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method