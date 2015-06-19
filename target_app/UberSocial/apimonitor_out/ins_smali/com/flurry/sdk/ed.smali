.class public Lcom/flurry/sdk/ed;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String;
.field private final b:Lcom/flurry/sdk/dp;
.field private final c:Ljava/util/HashMap;
.field private final d:Ljava/util/HashMap;
.field private final e:Ljava/util/concurrent/ThreadPoolExecutor;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/flurry/sdk/ed;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/flurry/sdk/ed;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
.registers 16
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/flurry/sdk/dp;
invoke-direct {v0}, Lcom/flurry/sdk/dp;-><init>()V
iput-object v0, p0, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/dp;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/flurry/sdk/ed;->c:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/flurry/sdk/ed;->d:Ljava/util/HashMap;
new-instance v0, Lcom/flurry/sdk/ed$1;
move-object v1, p0
move v2, p2
move v3, p3
move-wide v4, p4
move-object v6, p6
move-object v7, p7
invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/ed$1;-><init>(Lcom/flurry/sdk/ed;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
iput-object v0, p0, Lcom/flurry/sdk/ed;->e:Ljava/util/concurrent/ThreadPoolExecutor;
iget-object v0, p0, Lcom/flurry/sdk/ed;->e:Ljava/util/concurrent/ThreadPoolExecutor;
new-instance v1, Lcom/flurry/sdk/ed$2;
invoke-direct {v1, p0}, Lcom/flurry/sdk/ed$2;-><init>(Lcom/flurry/sdk/ed;)V
invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
new-instance v0, Lcom/flurry/sdk/ew;
const/4 v1, 0x1
invoke-direct {v0, p1, v1}, Lcom/flurry/sdk/ew;-><init>(Ljava/lang/String;I)V
iget-object v1, p0, Lcom/flurry/sdk/ed;->e:Ljava/util/concurrent/ThreadPoolExecutor;
invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
return-void
.end method
.method static synthetic a(Lcom/flurry/sdk/ed;Ljava/lang/Runnable;)Lcom/flurry/sdk/fd;
.registers 3
invoke-direct {p0, p1}, Lcom/flurry/sdk/ed;->a(Ljava/lang/Runnable;)Lcom/flurry/sdk/fd;
move-result-object v0
return-object v0
.end method
.method private a(Ljava/lang/Runnable;)Lcom/flurry/sdk/fd;
.registers 7
const/4 v0, 0x0
instance-of v1, p1, Lcom/flurry/sdk/ec;
if-eqz v1, :cond_e
check-cast p1, Lcom/flurry/sdk/ec;
invoke-virtual {p1}, Lcom/flurry/sdk/ec;->a()Ljava/lang/Runnable;
move-result-object v0
check-cast v0, Lcom/flurry/sdk/fd;
:goto_d
return-object v0
:cond_e
instance-of v1, p1, Lcom/flurry/sdk/fd;
if-eqz v1, :cond_16
check-cast p1, Lcom/flurry/sdk/fd;
move-object v0, p1
goto :goto_d
:cond_16
const/4 v1, 0x6
sget-object v2, Lcom/flurry/sdk/ed;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Unknown runnable class: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_d
.end method
.method static synthetic a(Lcom/flurry/sdk/ed;)Ljava/util/HashMap;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/ed;->d:Ljava/util/HashMap;
return-object v0
.end method
.method static synthetic a(Lcom/flurry/sdk/ed;Lcom/flurry/sdk/fd;)V
.registers 2
invoke-direct {p0, p1}, Lcom/flurry/sdk/ed;->b(Lcom/flurry/sdk/fd;)V
return-void
.end method
.method private declared-synchronized b(Lcom/flurry/sdk/fd;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/flurry/sdk/ed;->c:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-direct {p0, v0, p1}, Lcom/flurry/sdk/ed;->c(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_c
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized b(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/dp;
invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/dp;->a(Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v0, p0, Lcom/flurry/sdk/ed;->c:Ljava/util/HashMap;
invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_d
monitor-exit p0
return-void
:catchall_d
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized c(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/dp;
invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/dp;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/flurry/sdk/ed;->c:Ljava/util/HashMap;
invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_d
monitor-exit p0
return-void
:catchall_d
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized a(Lcom/flurry/sdk/fd;)V
.registers 4
monitor-enter p0
if-nez p1, :cond_5
:goto_3
monitor-exit p0
return-void
:try_start_5
:cond_5
iget-object v1, p0, Lcom/flurry/sdk/ed;->d:Ljava/util/HashMap;
monitor-enter v1
:try_end_8
.catchall {:try_start_5 .. :try_end_8} :catchall_23
:try_start_8
iget-object v0, p0, Lcom/flurry/sdk/ed;->d:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/concurrent/Future;
monitor-exit v1
:try_start_11
:try_end_11
.catchall {:try_start_8 .. :try_end_11} :catchall_26
invoke-direct {p0, p1}, Lcom/flurry/sdk/ed;->b(Lcom/flurry/sdk/fd;)V
if-eqz v0, :cond_1a
const/4 v1, 0x1
invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
:cond_1a
new-instance v0, Lcom/flurry/sdk/ed$3;
invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ed$3;-><init>(Lcom/flurry/sdk/ed;Lcom/flurry/sdk/fd;)V
invoke-virtual {v0}, Lcom/flurry/sdk/ed$3;->run()V
:try_end_22
.catchall {:try_start_11 .. :try_end_22} :catchall_23
goto :goto_3
:catchall_23
move-exception v0
monitor-exit p0
throw v0
:catchall_26
move-exception v0
:try_start_27
monitor-exit v1
:try_start_28
:try_end_28
.catchall {:try_start_27 .. :try_end_28} :catchall_26
throw v0
:try_end_29
.catchall {:try_start_28 .. :try_end_29} :catchall_23
.end method
.method public declared-synchronized a(Ljava/lang/Object;)V
.registers 4
monitor-enter p0
if-nez p1, :cond_5
:cond_3
monitor-exit p0
return-void
:try_start_5
:cond_5
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iget-object v1, p0, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/dp;
invoke-virtual {v1, p1}, Lcom/flurry/sdk/dp;->a(Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_17
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/sdk/fd;
invoke-virtual {p0, v0}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/fd;)V
:try_end_26
.catchall {:try_start_5 .. :try_end_26} :catchall_27
goto :goto_17
:catchall_27
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized a(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V
.registers 4
monitor-enter p0
if-eqz p1, :cond_5
if-nez p2, :cond_7
:goto_5
:cond_5
monitor-exit p0
return-void
:try_start_7
:cond_7
invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ed;->b(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V
iget-object v0, p0, Lcom/flurry/sdk/ed;->e:Ljava/util/concurrent/ThreadPoolExecutor;
invoke-virtual {v0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
:try_end_f
.catchall {:try_start_7 .. :try_end_f} :catchall_10
goto :goto_5
:catchall_10
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized b(Ljava/lang/Object;)J
.registers 4
monitor-enter p0
if-nez p1, :cond_7
const-wide/16 v0, 0x0
:goto_5
monitor-exit p0
return-wide v0
:try_start_7
:cond_7
iget-object v0, p0, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/dp;
invoke-virtual {v0, p1}, Lcom/flurry/sdk/dp;->a(Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
:try_end_10
.catchall {:try_start_7 .. :try_end_10} :catchall_13
move-result v0
int-to-long v0, v0
goto :goto_5
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method