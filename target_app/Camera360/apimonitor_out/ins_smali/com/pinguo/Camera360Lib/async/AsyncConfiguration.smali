.class public final Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;
.super Ljava/lang/Object;
.source "AsyncConfiguration.java"
.field private static final TAG:Ljava/lang/String;
.field final executorForImmediateRequest:Ljava/util/concurrent/ThreadPoolExecutor;
.field final executorForLongRequest:Ljava/util/concurrent/ThreadPoolExecutor;
.field final executorForShortRequest:Ljava/util/concurrent/ThreadPoolExecutor;
.field final requestMapper:Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;
.field final requestMonitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
.field final waitingCountTimesThreshold:I
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;->TAG:Ljava/lang/String;
return-void
.end method
.method private constructor <init>(Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
#getter for: Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForShortRequest:Ljava/util/concurrent/ThreadPoolExecutor;
invoke-static {p1}, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->access$0(Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;)Ljava/util/concurrent/ThreadPoolExecutor;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;->executorForShortRequest:Ljava/util/concurrent/ThreadPoolExecutor;
#getter for: Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForLongRequest:Ljava/util/concurrent/ThreadPoolExecutor;
invoke-static {p1}, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->access$1(Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;)Ljava/util/concurrent/ThreadPoolExecutor;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;->executorForLongRequest:Ljava/util/concurrent/ThreadPoolExecutor;
#getter for: Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->executorForImmediateRequest:Ljava/util/concurrent/ThreadPoolExecutor;
invoke-static {p1}, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->access$2(Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;)Ljava/util/concurrent/ThreadPoolExecutor;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;->executorForImmediateRequest:Ljava/util/concurrent/ThreadPoolExecutor;
#getter for: Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->requestMapper:Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;
invoke-static {p1}, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->access$3(Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;)Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;->requestMapper:Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;
#getter for: Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->requestMonitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
invoke-static {p1}, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->access$4(Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;)Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;->requestMonitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
#getter for: Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->waitingCountTimesThreshold:I
invoke-static {p1}, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->access$5(Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;)I
move-result v0
iput v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;->waitingCountTimesThreshold:I
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;-><init>(Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;)V
return-void
.end method
.method public static createDefault()Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;
.registers 1
new-instance v0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;
invoke-direct {v0}, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;-><init>()V
invoke-virtual {v0}, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->build()Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;
move-result-object v0
return-object v0
.end method
.method public static createDefault(Landroid/content/Context;)Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;
.registers 2
new-instance v0, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;
invoke-direct {v0, p0}, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration$Builder;->build()Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;
move-result-object v0
return-object v0
.end method