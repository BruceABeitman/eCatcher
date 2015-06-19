.class public Lde/greenrobot/event/util/AsyncExecutor;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"
.field private final eventBus:Lde/greenrobot/event/EventBus;
.field private final failureEventConstructor:Ljava/lang/reflect/Constructor;
.field private scope:Ljava/lang/Object;
.field private final threadPool:Ljava/util/concurrent/Executor;
.method private constructor <init>(Ljava/util/concurrent/Executor;Lde/greenrobot/event/EventBus;Ljava/lang/Class;Ljava/lang/Object;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lde/greenrobot/event/util/AsyncExecutor;->threadPool:Ljava/util/concurrent/Executor;
iput-object p2, p0, Lde/greenrobot/event/util/AsyncExecutor;->eventBus:Lde/greenrobot/event/EventBus;
iput-object p4, p0, Lde/greenrobot/event/util/AsyncExecutor;->scope:Ljava/lang/Object;
const/4 v1, 0x1
:try_start_a
new-array v1, v1, [Ljava/lang/Class;
const/4 v2, 0x0
const-class v3, Ljava/lang/Throwable;
aput-object v3, v1, v2
invoke-virtual {p3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v1
iput-object v1, p0, Lde/greenrobot/event/util/AsyncExecutor;->failureEventConstructor:Ljava/lang/reflect/Constructor;
:try_end_17
.catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_17} :catch_18
return-void
:catch_18
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string/jumbo v2, "Failure event class must have a constructor with one parameter of type Throwable"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Lde/greenrobot/event/EventBus;Ljava/lang/Class;Ljava/lang/Object;Lde/greenrobot/event/util/AsyncExecutor;)V
.registers 6
invoke-direct {p0, p1, p2, p3, p4}, Lde/greenrobot/event/util/AsyncExecutor;-><init>(Ljava/util/concurrent/Executor;Lde/greenrobot/event/EventBus;Ljava/lang/Class;Ljava/lang/Object;)V
return-void
.end method
.method static synthetic access$1(Lde/greenrobot/event/util/AsyncExecutor;)Ljava/lang/reflect/Constructor;
.registers 2
iget-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor;->failureEventConstructor:Ljava/lang/reflect/Constructor;
return-object v0
.end method
.method static synthetic access$2(Lde/greenrobot/event/util/AsyncExecutor;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor;->scope:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic access$3(Lde/greenrobot/event/util/AsyncExecutor;)Lde/greenrobot/event/EventBus;
.registers 2
iget-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor;->eventBus:Lde/greenrobot/event/EventBus;
return-object v0
.end method
.method public static builder()Lde/greenrobot/event/util/AsyncExecutor$Builder;
.registers 2
new-instance v0, Lde/greenrobot/event/util/AsyncExecutor$Builder;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lde/greenrobot/event/util/AsyncExecutor$Builder;-><init>(Lde/greenrobot/event/util/AsyncExecutor$Builder;)V
return-object v0
.end method
.method public static create()Lde/greenrobot/event/util/AsyncExecutor;
.registers 2
new-instance v0, Lde/greenrobot/event/util/AsyncExecutor$Builder;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lde/greenrobot/event/util/AsyncExecutor$Builder;-><init>(Lde/greenrobot/event/util/AsyncExecutor$Builder;)V
invoke-virtual {v0}, Lde/greenrobot/event/util/AsyncExecutor$Builder;->build()Lde/greenrobot/event/util/AsyncExecutor;
move-result-object v0
return-object v0
.end method
.method public execute(Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;)V
.registers 4
iget-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor;->threadPool:Ljava/util/concurrent/Executor;
new-instance v1, Lde/greenrobot/event/util/AsyncExecutor$1;
invoke-direct {v1, p0, p1}, Lde/greenrobot/event/util/AsyncExecutor$1;-><init>(Lde/greenrobot/event/util/AsyncExecutor;Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method