.class final Lcom/d/a/b/b;
.super Ljava/lang/Object;
.source "DefaultConfigurationFactory.java"
.implements Ljava/util/concurrent/ThreadFactory;
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;
.field private final b:Ljava/lang/ThreadGroup;
.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;
.field private final d:Ljava/lang/String;
.field private final e:I
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
sput-object v0, Lcom/d/a/b/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;
return-void
.end method
.method constructor <init>(I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
iput-object v0, p0, Lcom/d/a/b/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;
iput p1, p0, Lcom/d/a/b/b;->e:I
invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;
move-result-object v0
if-eqz v0, :cond_37
invoke-virtual {v0}, Ljava/lang/SecurityManager;->getThreadGroup()Ljava/lang/ThreadGroup;
move-result-object v0
:goto_17
iput-object v0, p0, Lcom/d/a/b/b;->b:Ljava/lang/ThreadGroup;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "pool-"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Lcom/d/a/b/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "-thread-"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/d/a/b/b;->d:Ljava/lang/String;
return-void
:cond_37
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;
move-result-object v0
goto :goto_17
.end method
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.registers 8
new-instance v0, Ljava/lang/Thread;
iget-object v1, p0, Lcom/d/a/b/b;->b:Ljava/lang/ThreadGroup;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/d/a/b/b;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/d/a/b/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;
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
iget v1, p0, Lcom/d/a/b/b;->e:I
invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V
return-object v0
.end method