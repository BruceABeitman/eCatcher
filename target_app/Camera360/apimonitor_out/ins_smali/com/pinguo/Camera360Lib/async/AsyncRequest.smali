.class public abstract Lcom/pinguo/Camera360Lib/async/AsyncRequest;
.super Ljava/lang/Object;
.source "AsyncRequest.java"
.field private static synthetic $SWITCH_TABLE$com$pinguo$Camera360Lib$async$AsyncRequest$Status:[I = null
.field private static final MESSAGE_POST_PROGRESS:I = 0x2
.field private static final MESSAGE_POST_RESULT:I = 0x1
.field private static final TAG:Ljava/lang/String;
.field private static final sHandler:Lcom/pinguo/Camera360Lib/async/AsyncRequest$InternalHandler;
.field private final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private final future:Ljava/util/concurrent/FutureTask;
.field private final monitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
.field private priority:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Priority;
.field private final requestId:Ljava/lang/String;
.field private volatile status:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
.field private tag:Ljava/lang/Object;
.field private final taskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private type:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
.field private final worker:Lcom/pinguo/Camera360Lib/async/AsyncRequest$WorkerRunnable;
.method static synthetic $SWITCH_TABLE$com$pinguo$Camera360Lib$async$AsyncRequest$Status()[I
.registers 3
sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->$SWITCH_TABLE$com$pinguo$Camera360Lib$async$AsyncRequest$Status:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->values()[Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->FINISHED:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
invoke-virtual {v1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e
:goto_15
sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->PENDING:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
invoke-virtual {v1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_1e
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c
:goto_1e
sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->RUNNING:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
invoke-virtual {v1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_27
:try_end_27
.catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a
sput-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->$SWITCH_TABLE$com$pinguo$Camera360Lib$async$AsyncRequest$Status:[I
goto :goto_4
:catch_2a
move-exception v1
goto :goto_27
:catch_2c
move-exception v1
goto :goto_1e
:catch_2e
move-exception v1
goto :goto_15
.end method
.method static constructor <clinit>()V
.registers 2
const-class v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->TAG:Ljava/lang/String;
new-instance v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$InternalHandler;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$InternalHandler;-><init>(Lcom/pinguo/Camera360Lib/async/AsyncRequest$InternalHandler;)V
sput-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->sHandler:Lcom/pinguo/Camera360Lib/async/AsyncRequest$InternalHandler;
return-void
.end method
.method public constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->taskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->PENDING:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->status:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->UNKNOWN:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->type:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Priority;->NORMAL:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Priority;
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->priority:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Priority;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->tag:Ljava/lang/Object;
invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getInstance()Lcom/pinguo/Camera360Lib/async/AsyncEngine;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getRequestMonitor()Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->monitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
new-instance v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$1;
invoke-direct {v0, p0}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$1;-><init>(Lcom/pinguo/Camera360Lib/async/AsyncRequest;)V
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->worker:Lcom/pinguo/Camera360Lib/async/AsyncRequest$WorkerRunnable;
new-instance v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$2;
iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->worker:Lcom/pinguo/Camera360Lib/async/AsyncRequest$WorkerRunnable;
invoke-direct {v0, p0, v1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$2;-><init>(Lcom/pinguo/Camera360Lib/async/AsyncRequest;Ljava/util/concurrent/Callable;)V
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->future:Ljava/util/concurrent/FutureTask;
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v0
invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->requestId:Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->monitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->requestId:Ljava/lang/String;
iget-object v2, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->tag:Ljava/lang/Object;
invoke-interface {v0, v1, v2}, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;->createRequestInfo(Ljava/lang/String;Ljava/lang/Object;)Z
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/Camera360Lib/async/AsyncRequest;Ljava/lang/Object;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->finish(Ljava/lang/Object;)V
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/Camera360Lib/async/AsyncRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->taskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/Camera360Lib/async/AsyncRequest;Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/Camera360Lib/async/AsyncRequest;)Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->monitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/Camera360Lib/async/AsyncRequest;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->requestId:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/Camera360Lib/async/AsyncRequest;Ljava/lang/Object;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->postResultIfNotInvoked(Ljava/lang/Object;)V
return-void
.end method
.method static synthetic access$6()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->TAG:Ljava/lang/String;
return-object v0
.end method
.method private finish(Ljava/lang/Object;)V
.registers 6
invoke-virtual {p0}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->isCancelled()Z
move-result v0
if-eqz v0, :cond_49
invoke-virtual {p0}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->onCancelled()V
:goto_9
sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->FINISHED:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->status:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "requestId="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->requestId:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " finished, "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "and ri="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getInstance()Lcom/pinguo/Camera360Lib/async/AsyncEngine;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getRequestMonitor()Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->requestId:Ljava/lang/String;
invoke-interface {v2, v3}, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;->getRequestInfo(Ljava/lang/String;)Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_49
invoke-virtual {p0, p1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->onPostExecute(Ljava/lang/Object;)V
goto :goto_9
.end method
.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
.registers 8
const/4 v5, 0x1
sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->sHandler:Lcom/pinguo/Camera360Lib/async/AsyncRequest$InternalHandler;
new-instance v2, Lcom/pinguo/Camera360Lib/async/AsyncRequest$AsyncRequestResult;
new-array v3, v5, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p1, v3, v4
invoke-direct {v2, p0, v3}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$AsyncRequestResult;-><init>(Lcom/pinguo/Camera360Lib/async/AsyncRequest;[Ljava/lang/Object;)V
invoke-virtual {v1, v5, v2}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
return-object p1
.end method
.method private postResultIfNotInvoked(Ljava/lang/Object;)V
.registers 4
iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->taskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-nez v0, :cond_b
invoke-direct {p0, p1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
:cond_b
return-void
.end method
.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.end method
.method public final varargs execute([Ljava/lang/Object;)Lcom/pinguo/Camera360Lib/async/AsyncRequest;
.registers 3
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->worker:Lcom/pinguo/Camera360Lib/async/AsyncRequest$WorkerRunnable;
iput-object p1, v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$WorkerRunnable;->params:[Ljava/lang/Object;
invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getInstance()Lcom/pinguo/Camera360Lib/async/AsyncEngine;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->submit(Lcom/pinguo/Camera360Lib/async/AsyncRequest;)V
return-object p0
.end method
.method public final executeOnExecutor(Ljava/util/concurrent/Executor;)Lcom/pinguo/Camera360Lib/async/AsyncRequest;
.registers 5
iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->status:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
sget-object v2, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->PENDING:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
if-eq v1, v2, :cond_15
invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->$SWITCH_TABLE$com$pinguo$Camera360Lib$async$AsyncRequest$Status()[I
move-result-object v1
iget-object v2, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->status:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
invoke-virtual {v2}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_4a
:cond_15
invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getInstance()Lcom/pinguo/Camera360Lib/async/AsyncEngine;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getExecutorName(Ljava/util/concurrent/Executor;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_2a
iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->monitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
iget-object v2, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->requestId:Ljava/lang/String;
invoke-interface {v1, v2, v0}, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;->setExecutorName(Ljava/lang/String;Ljava/lang/String;)V
:cond_2a
sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->RUNNING:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
iput-object v1, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->status:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
invoke-virtual {p0}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->onPreExecute()V
iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->future:Ljava/util/concurrent/FutureTask;
invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-object p0
:pswitch_37
new-instance v1, Ljava/lang/IllegalStateException;
const-string/jumbo v2, "Cannot execute task: the task is already running."
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:pswitch_40
new-instance v1, Ljava/lang/IllegalStateException;
const-string/jumbo v2, "Cannot execute task: the task has already been executed (a task can be executed only once)"
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
nop
:pswitch_data_4a
.packed-switch 0x2
:pswitch_37
:pswitch_40
.end packed-switch
.end method
.method public getPriority()Lcom/pinguo/Camera360Lib/async/AsyncRequest$Priority;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->priority:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Priority;
return-object v0
.end method
.method public getRequestId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->requestId:Ljava/lang/String;
return-object v0
.end method
.method public final getStatus()Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->status:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
return-object v0
.end method
.method public getType()Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->type:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
return-object v0
.end method
.method public final isCancelled()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
return v0
.end method
.method protected onCancelled()V
.registers 1
return-void
.end method
.method protected onPostExecute(Ljava/lang/Object;)V
.registers 2
return-void
.end method
.method protected onPreExecute()V
.registers 1
return-void
.end method
.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
.registers 2
return-void
.end method
.method protected final varargs publishProgress([Ljava/lang/Object;)V
.registers 5
invoke-virtual {p0}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->isCancelled()Z
move-result v0
if-nez v0, :cond_15
sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->sHandler:Lcom/pinguo/Camera360Lib/async/AsyncRequest$InternalHandler;
const/4 v1, 0x2
new-instance v2, Lcom/pinguo/Camera360Lib/async/AsyncRequest$AsyncRequestResult;
invoke-direct {v2, p0, p1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$AsyncRequestResult;-><init>(Lcom/pinguo/Camera360Lib/async/AsyncRequest;[Ljava/lang/Object;)V
invoke-virtual {v0, v1, v2}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
:cond_15
return-void
.end method
.method public setPriority(Lcom/pinguo/Camera360Lib/async/AsyncRequest$Priority;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->priority:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Priority;
return-void
.end method
.method public setType(Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->type:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
return-void
.end method