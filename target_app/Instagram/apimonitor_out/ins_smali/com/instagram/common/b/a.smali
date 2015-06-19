.class public abstract Lcom/instagram/common/b/a;
.super Ljava/lang/Object;
.source "IgAsyncTask.java"
.field private static final a:Lcom/instagram/common/b/f;
.field private static volatile b:Ljava/util/concurrent/Executor;
.field private final c:Lcom/instagram/common/b/h;
.field private final d:Ljava/util/concurrent/FutureTask;
.field private volatile e:I
.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/instagram/common/b/f;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/instagram/common/b/f;-><init>(B)V
sput-object v0, Lcom/instagram/common/b/a;->a:Lcom/instagram/common/b/f;
invoke-static {}, Lcom/instagram/common/u/c/a;->a()Ljava/util/concurrent/Executor;
move-result-object v0
sput-object v0, Lcom/instagram/common/b/a;->b:Ljava/util/concurrent/Executor;
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget v0, Lcom/instagram/common/b/g;->a:I
iput v0, p0, Lcom/instagram/common/b/a;->e:I
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V
iput-object v0, p0, Lcom/instagram/common/b/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;
new-instance v0, Lcom/instagram/common/b/b;
invoke-direct {v0, p0}, Lcom/instagram/common/b/b;-><init>(Lcom/instagram/common/b/a;)V
iput-object v0, p0, Lcom/instagram/common/b/a;->c:Lcom/instagram/common/b/h;
new-instance v0, Lcom/instagram/common/b/c;
iget-object v1, p0, Lcom/instagram/common/b/a;->c:Lcom/instagram/common/b/h;
invoke-direct {v0, p0, v1}, Lcom/instagram/common/b/c;-><init>(Lcom/instagram/common/b/a;Ljava/util/concurrent/Callable;)V
iput-object v0, p0, Lcom/instagram/common/b/a;->d:Ljava/util/concurrent/FutureTask;
return-void
.end method
.method private varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/instagram/common/b/a;
.registers 5
iget v0, p0, Lcom/instagram/common/b/a;->e:I
sget v1, Lcom/instagram/common/b/g;->a:I
if-eq v0, v1, :cond_11
sget-object v0, Lcom/instagram/common/b/d;->a:[I
iget v1, p0, Lcom/instagram/common/b/a;->e:I
add-int/lit8 v1, v1, -0x1
aget v0, v0, v1
packed-switch v0, :pswitch_data_32
:cond_11
sget v0, Lcom/instagram/common/b/g;->b:I
iput v0, p0, Lcom/instagram/common/b/a;->e:I
invoke-virtual {p0}, Lcom/instagram/common/b/a;->a()V
iget-object v0, p0, Lcom/instagram/common/b/a;->c:Lcom/instagram/common/b/h;
iput-object p2, v0, Lcom/instagram/common/b/h;->b:[Ljava/lang/Object;
iget-object v0, p0, Lcom/instagram/common/b/a;->d:Ljava/util/concurrent/FutureTask;
invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-object p0
:pswitch_22
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Cannot execute task: the task is already running."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_2a
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_data_32
.packed-switch 0x1
:pswitch_22
:pswitch_2a
.end packed-switch
.end method
.method static synthetic a(Lcom/instagram/common/b/a;Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/common/b/a;->c(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/instagram/common/b/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
.registers 2
iget-object v0, p0, Lcom/instagram/common/b/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;
return-object v0
.end method
.method protected static varargs b()V
.registers 0
return-void
.end method
.method static synthetic b(Lcom/instagram/common/b/a;Ljava/lang/Object;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/common/b/a;->b(Ljava/lang/Object;)V
return-void
.end method
.method private b(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/instagram/common/b/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-nez v0, :cond_b
invoke-direct {p0, p1}, Lcom/instagram/common/b/a;->c(Ljava/lang/Object;)Ljava/lang/Object;
:cond_b
return-void
.end method
.method private c(Ljava/lang/Object;)Ljava/lang/Object;
.registers 7
const/4 v4, 0x1
sget-object v0, Lcom/instagram/common/b/a;->a:Lcom/instagram/common/b/f;
new-instance v1, Lcom/instagram/common/b/e;
new-array v2, v4, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
invoke-direct {v1, p0, v2}, Lcom/instagram/common/b/e;-><init>(Lcom/instagram/common/b/a;[Ljava/lang/Object;)V
invoke-virtual {v0, v4, v1}, Lcom/instagram/common/b/f;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
return-object p1
.end method
.method static synthetic c(Lcom/instagram/common/b/a;Ljava/lang/Object;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/common/b/a;->d(Ljava/lang/Object;)V
return-void
.end method
.method private c()Z
.registers 2
iget-object v0, p0, Lcom/instagram/common/b/a;->d:Ljava/util/concurrent/FutureTask;
invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z
move-result v0
return v0
.end method
.method private d(Ljava/lang/Object;)V
.registers 3
invoke-direct {p0}, Lcom/instagram/common/b/a;->c()Z
move-result v0
if-nez v0, :cond_9
invoke-virtual {p0, p1}, Lcom/instagram/common/b/a;->a(Ljava/lang/Object;)V
:cond_9
sget v0, Lcom/instagram/common/b/g;->c:I
iput v0, p0, Lcom/instagram/common/b/a;->e:I
return-void
.end method
.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
.end method
.method protected a()V
.registers 1
return-void
.end method
.method protected a(Ljava/lang/Object;)V
.registers 2
return-void
.end method
.method public final varargs b([Ljava/lang/Object;)Lcom/instagram/common/b/a;
.registers 3
sget-object v0, Lcom/instagram/common/b/a;->b:Ljava/util/concurrent/Executor;
invoke-direct {p0, v0, p1}, Lcom/instagram/common/b/a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/instagram/common/b/a;
move-result-object v0
return-object v0
.end method