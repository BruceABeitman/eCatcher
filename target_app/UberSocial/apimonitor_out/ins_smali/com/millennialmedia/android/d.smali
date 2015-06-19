.class final Lcom/millennialmedia/android/d;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Lcom/millennialmedia/android/d;
.field private b:Ljava/util/concurrent/PriorityBlockingQueue;
.field private c:Ljava/util/concurrent/ThreadPoolExecutor;
.method private constructor <init>()V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
const/4 v1, 0x1
const/4 v2, 0x2
const-wide/16 v3, 0x1e
sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;
const/16 v7, 0x20
invoke-direct {v6, v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V
iput-object v6, p0, Lcom/millennialmedia/android/d;->b:Ljava/util/concurrent/PriorityBlockingQueue;
invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
iput-object v0, p0, Lcom/millennialmedia/android/d;->c:Ljava/util/concurrent/ThreadPoolExecutor;
return-void
.end method
.method static declared-synchronized a()Lcom/millennialmedia/android/d;
.registers 2
const-class v1, Lcom/millennialmedia/android/d;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/millennialmedia/android/d;->a:Lcom/millennialmedia/android/d;
if-nez v0, :cond_e
new-instance v0, Lcom/millennialmedia/android/d;
invoke-direct {v0}, Lcom/millennialmedia/android/d;-><init>()V
sput-object v0, Lcom/millennialmedia/android/d;->a:Lcom/millennialmedia/android/d;
:cond_e
sget-object v0, Lcom/millennialmedia/android/d;->a:Lcom/millennialmedia/android/d;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/ai;Lcom/millennialmedia/android/b;)Z
.registers 11
monitor-enter p0
if-eqz p1, :cond_25
if-eqz p3, :cond_25
:try_start_5
new-instance v0, Lcom/millennialmedia/android/e;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/android/e;-><init>(Lcom/millennialmedia/android/d;Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/ai;Lcom/millennialmedia/android/b;)V
iget-object v1, p0, Lcom/millennialmedia/android/d;->b:Ljava/util/concurrent/PriorityBlockingQueue;
invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->contains(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_25
invoke-virtual {p3, p1}, Lcom/millennialmedia/android/ai;->d(Landroid/content/Context;)Z
move-result v1
if-nez v1, :cond_25
iget-object v1, p0, Lcom/millennialmedia/android/d;->c:Ljava/util/concurrent/ThreadPoolExecutor;
invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
:try_end_22
.catchall {:try_start_5 .. :try_end_22} :catchall_27
const/4 v0, 0x1
:goto_23
monitor-exit p0
return v0
:cond_25
const/4 v0, 0x0
goto :goto_23
:catchall_27
move-exception v0
monitor-exit p0
throw v0
.end method