.class public Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;
.super Ljava/lang/Object;
.source "AsyncConfiguration.java"
.field private context:Landroid/content/Context;
.field private executorForImmediateRequest:Ljava/util/concurrent/ThreadPoolExecutor;
.field private executorForLongRequest:Ljava/util/concurrent/ThreadPoolExecutor;
.field private executorForShortRequest:Ljava/util/concurrent/ThreadPoolExecutor;
.field private requestMapper:Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;
.field private requestMonitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
.field private waitingCountTimesThreshold:I
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForShortRequest:Ljava/util/concurrent/ThreadPoolExecutor;
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForLongRequest:Ljava/util/concurrent/ThreadPoolExecutor;
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForImmediateRequest:Ljava/util/concurrent/ThreadPoolExecutor;
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->requestMapper:Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->requestMonitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
const/4 v0, 0x4
iput v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->waitingCountTimesThreshold:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForShortRequest:Ljava/util/concurrent/ThreadPoolExecutor;
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForLongRequest:Ljava/util/concurrent/ThreadPoolExecutor;
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForImmediateRequest:Ljava/util/concurrent/ThreadPoolExecutor;
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->requestMapper:Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->requestMonitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
const/4 v0, 0x4
iput v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->waitingCountTimesThreshold:I
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->context:Landroid/content/Context;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;)Ljava/util/concurrent/ThreadPoolExecutor;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForShortRequest:Ljava/util/concurrent/ThreadPoolExecutor;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;)Ljava/util/concurrent/ThreadPoolExecutor;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForLongRequest:Ljava/util/concurrent/ThreadPoolExecutor;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;)Ljava/util/concurrent/ThreadPoolExecutor;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForImmediateRequest:Ljava/util/concurrent/ThreadPoolExecutor;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;)Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->requestMapper:Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;)Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->requestMonitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;)I
.registers 2
iget v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->waitingCountTimesThreshold:I
return v0
.end method
.method private initEmptyFieldsWithDefaultValues()V
.registers 8
const-wide/16 v3, 0x0
const/4 v1, 0x1
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForShortRequest:Ljava/util/concurrent/ThreadPoolExecutor;
if-nez v0, :cond_16
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
move v2, v1
invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForShortRequest:Ljava/util/concurrent/ThreadPoolExecutor;
:cond_16
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForLongRequest:Ljava/util/concurrent/ThreadPoolExecutor;
if-nez v0, :cond_29
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
move v2, v1
invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForLongRequest:Ljava/util/concurrent/ThreadPoolExecutor;
:cond_29
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForImmediateRequest:Ljava/util/concurrent/ThreadPoolExecutor;
if-nez v0, :cond_3c
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
move v2, v1
invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForImmediateRequest:Ljava/util/concurrent/ThreadPoolExecutor;
:cond_3c
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->requestMapper:Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;
if-nez v0, :cond_47
new-instance v0, Lcom/pinguo/Camera360Lib/async/mapper/DefaultRequestMapper;
invoke-direct {v0}, Lcom/pinguo/Camera360Lib/async/mapper/DefaultRequestMapper;-><init>()V
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->requestMapper:Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;
:cond_47
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->requestMonitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
if-nez v0, :cond_52
new-instance v0, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;
invoke-direct {v0}, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;-><init>()V
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->requestMonitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
:cond_52
return-void
.end method
.method public build()Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;
.registers 3
invoke-direct {p0}, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->initEmptyFieldsWithDefaultValues()V
new-instance v0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;-><init>(Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;)V
return-object v0
.end method
.method public executorForImportantRequest(Ljava/util/concurrent/ThreadPoolExecutor;)Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;
.registers 2
iput-object p1, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForImmediateRequest:Ljava/util/concurrent/ThreadPoolExecutor;
return-object p0
.end method
.method public executorForLongRequest(Ljava/util/concurrent/ThreadPoolExecutor;)Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;
.registers 2
iput-object p1, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForLongRequest:Ljava/util/concurrent/ThreadPoolExecutor;
return-object p0
.end method
.method public executorForShortRequest(Ljava/util/concurrent/ThreadPoolExecutor;)Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;
.registers 2
iput-object p1, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForShortRequest:Ljava/util/concurrent/ThreadPoolExecutor;
return-object p0
.end method
.method public requestMapper(Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;)Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;
.registers 2
iput-object p1, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->requestMapper:Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;
return-object p0
.end method
.method public requestMonitor(Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;)Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;
.registers 2
iput-object p1, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->requestMonitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
return-object p0
.end method