.class  Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;
.super Ljava/lang/Object;
.source "DefaultConfigurationFactory.java"
.implements Ljava/util/concurrent/ThreadFactory;
.field private static final poolNumber:Ljava/util/concurrent/atomic/AtomicInteger;
.field private final group:Ljava/lang/ThreadGroup;
.field private final namePrefix:Ljava/lang/String;
.field private final threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;
.field private final threadPriority:I
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
sput-object v0, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->poolNumber:Ljava/util/concurrent/atomic/AtomicInteger;
return-void
.end method
.method constructor <init>(I)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;
const/4 v2, 0x1
invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
iput-object v1, p0, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;
iput p1, p0, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->threadPriority:I
invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;
move-result-object v0
if-eqz v0, :cond_3d
invoke-virtual {v0}, Ljava/lang/SecurityManager;->getThreadGroup()Ljava/lang/ThreadGroup;
move-result-object v1
:goto_17
iput-object v1, p0, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->group:Ljava/lang/ThreadGroup;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "pool-"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->poolNumber:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "-thread-"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->namePrefix:Ljava/lang/String;
return-void
:cond_3d
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;
move-result-object v1
goto :goto_17
.end method
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.registers 8
new-instance v0, Ljava/lang/Thread;
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->group:Ljava/lang/ThreadGroup;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->namePrefix:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-wide/16 v4, 0x0
move-object v2, p1
invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z
move-result v1
if-eqz v1, :cond_2d
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V
:cond_2d
iget v1, p0, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->threadPriority:I
invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V
return-object v0
.end method