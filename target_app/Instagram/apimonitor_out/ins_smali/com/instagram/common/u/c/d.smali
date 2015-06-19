.class public final Lcom/instagram/common/u/c/d;
.super Ljava/lang/Object;
.source "SerialExecutor.java"
.implements Ljava/util/concurrent/Executor;
.field private final a:Lcom/instagram/common/u/b/a;
.field private final b:Lcom/facebook/d/b/c;
.field private final c:Ljava/lang/String;
.field private final d:Ljava/util/concurrent/Executor;
.field private final e:I
.field private final f:I
.field private final g:I
.field private final h:Ljava/util/Queue;
.field private i:Lcom/instagram/common/u/c/f;
.method private constructor <init>(Lcom/instagram/common/u/c/e;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/instagram/common/u/c/e;->a(Lcom/instagram/common/u/c/e;)Lcom/instagram/common/u/b/a;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/u/c/d;->a:Lcom/instagram/common/u/b/a;
invoke-static {p1}, Lcom/instagram/common/u/c/e;->b(Lcom/instagram/common/u/c/e;)Lcom/facebook/d/b/c;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/u/c/d;->b:Lcom/facebook/d/b/c;
invoke-static {p1}, Lcom/instagram/common/u/c/e;->c(Lcom/instagram/common/u/c/e;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/u/c/d;->c:Ljava/lang/String;
invoke-static {p1}, Lcom/instagram/common/u/c/e;->d(Lcom/instagram/common/u/c/e;)Ljava/util/concurrent/Executor;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/u/c/d;->d:Ljava/util/concurrent/Executor;
invoke-static {p1}, Lcom/instagram/common/u/c/e;->e(Lcom/instagram/common/u/c/e;)I
move-result v0
iput v0, p0, Lcom/instagram/common/u/c/d;->e:I
invoke-static {p1}, Lcom/instagram/common/u/c/e;->f(Lcom/instagram/common/u/c/e;)I
move-result v0
iput v0, p0, Lcom/instagram/common/u/c/d;->f:I
invoke-static {p1}, Lcom/instagram/common/u/c/e;->g(Lcom/instagram/common/u/c/e;)I
move-result v0
iput v0, p0, Lcom/instagram/common/u/c/d;->g:I
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/instagram/common/u/c/d;->h:Ljava/util/Queue;
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/common/u/c/e;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/common/u/c/d;-><init>(Lcom/instagram/common/u/c/e;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/common/u/c/d;)Lcom/instagram/common/u/b/a;
.registers 2
iget-object v0, p0, Lcom/instagram/common/u/c/d;->a:Lcom/instagram/common/u/b/a;
return-object v0
.end method
.method private declared-synchronized a()V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/common/u/c/d;->h:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/common/u/c/f;
iput-object v0, p0, Lcom/instagram/common/u/c/d;->i:Lcom/instagram/common/u/c/f;
iget-object v0, p0, Lcom/instagram/common/u/c/d;->i:Lcom/instagram/common/u/c/f;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/instagram/common/u/c/d;->d:Ljava/util/concurrent/Executor;
iget-object v1, p0, Lcom/instagram/common/u/c/d;->i:Lcom/instagram/common/u/c/f;
invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
:try_end_16
.catchall {:try_start_1 .. :try_end_16} :catchall_18
:cond_16
monitor-exit p0
return-void
:catchall_18
move-exception v0
monitor-exit p0
throw v0
.end method
.method static synthetic b(Lcom/instagram/common/u/c/d;)I
.registers 2
iget v0, p0, Lcom/instagram/common/u/c/d;->g:I
return v0
.end method
.method static synthetic c(Lcom/instagram/common/u/c/d;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/common/u/c/d;->c:Ljava/lang/String;
return-object v0
.end method
.method static synthetic d(Lcom/instagram/common/u/c/d;)Lcom/facebook/d/b/c;
.registers 2
iget-object v0, p0, Lcom/instagram/common/u/c/d;->b:Lcom/facebook/d/b/c;
return-object v0
.end method
.method static synthetic e(Lcom/instagram/common/u/c/d;)I
.registers 2
iget v0, p0, Lcom/instagram/common/u/c/d;->e:I
return v0
.end method
.method static synthetic f(Lcom/instagram/common/u/c/d;)I
.registers 2
iget v0, p0, Lcom/instagram/common/u/c/d;->f:I
return v0
.end method
.method static synthetic g(Lcom/instagram/common/u/c/d;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/common/u/c/d;->a()V
return-void
.end method
.method public final declared-synchronized execute(Ljava/lang/Runnable;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/common/u/c/d;->h:Ljava/util/Queue;
new-instance v1, Lcom/instagram/common/u/c/f;
invoke-direct {v1, p0, p1}, Lcom/instagram/common/u/c/f;-><init>(Lcom/instagram/common/u/c/d;Ljava/lang/Runnable;)V
invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/instagram/common/u/c/d;->i:Lcom/instagram/common/u/c/f;
if-nez v0, :cond_12
invoke-direct {p0}, Lcom/instagram/common/u/c/d;->a()V
:cond_12
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_14
monitor-exit p0
return-void
:catchall_14
move-exception v0
monitor-exit p0
throw v0
.end method