.class public final Lcom/bbm/iceberg/k;
.super Ljava/lang/Object;
.source "LocalContactEnhancer.java"
.field private static final f:Ljava/lang/Object;
.field public final a:Lcom/bbm/iceberg/a;
.field public b:Ljava/lang/ref/WeakReference;
.field private final c:Landroid/content/Context;
.field private final d:Lcom/bbm/util/dc;
.field private final e:Ljava/util/concurrent/ThreadPoolExecutor;
.field private g:Ljava/lang/ref/WeakReference;
.field private h:Ljava/lang/ref/WeakReference;
.field private final i:Landroid/os/Handler;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/bbm/iceberg/k;->f:Ljava/lang/Object;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 10
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/iceberg/k;->g:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/iceberg/k;->h:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/iceberg/k;->b:Ljava/lang/ref/WeakReference;
iput-object p1, p0, Lcom/bbm/iceberg/k;->c:Landroid/content/Context;
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/bbm/iceberg/k;->i:Landroid/os/Handler;
new-instance v0, Lcom/bbm/util/bn;
iget-object v1, p0, Lcom/bbm/iceberg/k;->i:Landroid/os/Handler;
invoke-direct {v0, v1}, Lcom/bbm/util/bn;-><init>(Landroid/os/Handler;)V
iput-object v0, p0, Lcom/bbm/iceberg/k;->d:Lcom/bbm/util/dc;
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
const/4 v1, 0x1
const/4 v2, 0x2
const-wide/16 v3, 0x1e
sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;
const/4 v7, 0x4
invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V
invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
iput-object v0, p0, Lcom/bbm/iceberg/k;->e:Ljava/util/concurrent/ThreadPoolExecutor;
new-instance v0, Lcom/bbm/iceberg/a;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v1
iget-object v2, p0, Lcom/bbm/iceberg/k;->e:Ljava/util/concurrent/ThreadPoolExecutor;
iget-object v3, p0, Lcom/bbm/iceberg/k;->d:Lcom/bbm/util/dc;
invoke-direct {v0, p1, v1, v2, v3}, Lcom/bbm/iceberg/a;-><init>(Landroid/content/Context;Lcom/bbm/d;Ljava/util/concurrent/Executor;Lcom/bbm/util/dc;)V
iput-object v0, p0, Lcom/bbm/iceberg/k;->a:Lcom/bbm/iceberg/a;
return-void
.end method
.method static synthetic a(Lcom/bbm/iceberg/k;)Lcom/bbm/iceberg/n;
.registers 5
iget-object v0, p0, Lcom/bbm/iceberg/k;->g:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/iceberg/n;
if-nez v0, :cond_1c
new-instance v0, Lcom/bbm/iceberg/n;
iget-object v1, p0, Lcom/bbm/iceberg/k;->c:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/iceberg/k;->e:Ljava/util/concurrent/ThreadPoolExecutor;
iget-object v3, p0, Lcom/bbm/iceberg/k;->i:Landroid/os/Handler;
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/iceberg/n;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
new-instance v1, Ljava/lang/ref/WeakReference;
invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v1, p0, Lcom/bbm/iceberg/k;->g:Ljava/lang/ref/WeakReference;
:cond_1c
return-object v0
.end method
.method static synthetic b(Lcom/bbm/iceberg/k;)Lcom/bbm/iceberg/a;
.registers 2
iget-object v0, p0, Lcom/bbm/iceberg/k;->a:Lcom/bbm/iceberg/a;
return-object v0
.end method
.method static synthetic b()Ljava/lang/Object;
.registers 1
sget-object v0, Lcom/bbm/iceberg/k;->f:Ljava/lang/Object;
return-object v0
.end method
.method public final a()Lcom/bbm/j/r;
.registers 3
iget-object v0, p0, Lcom/bbm/iceberg/k;->h:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/b/f;
if-nez v0, :cond_16
new-instance v0, Lcom/bbm/iceberg/l;
invoke-direct {v0, p0}, Lcom/bbm/iceberg/l;-><init>(Lcom/bbm/iceberg/k;)V
new-instance v1, Ljava/lang/ref/WeakReference;
invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v1, p0, Lcom/bbm/iceberg/k;->h:Ljava/lang/ref/WeakReference;
:cond_16
return-object v0
.end method