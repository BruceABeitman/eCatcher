.class public final Lcom/google/android/gms/internal/dr;
.super Ljava/lang/Object;
.field private static final a:Ljava/util/concurrent/ThreadFactory;
.field private static final b:Ljava/util/concurrent/ThreadPoolExecutor;
.method static constructor <clinit>()V
.registers 8
new-instance v0, Lcom/google/android/gms/internal/dr$2;
invoke-direct {v0}, Lcom/google/android/gms/internal/dr$2;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/dr;->a:Ljava/util/concurrent/ThreadFactory;
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
const/4 v1, 0x0
const/16 v2, 0xa
const-wide/16 v3, 0x41
sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
new-instance v6, Ljava/util/concurrent/SynchronousQueue;
const/4 v7, 0x1
invoke-direct {v6, v7}, Ljava/util/concurrent/SynchronousQueue;-><init>(Z)V
sget-object v7, Lcom/google/android/gms/internal/dr;->a:Ljava/util/concurrent/ThreadFactory;
invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
sput-object v0, Lcom/google/android/gms/internal/dr;->b:Ljava/util/concurrent/ThreadPoolExecutor;
return-void
.end method
.method public static a(Ljava/lang/Runnable;)V
.registers 3
:try_start_0
sget-object v0, Lcom/google/android/gms/internal/dr;->b:Ljava/util/concurrent/ThreadPoolExecutor;
new-instance v1, Lcom/google/android/gms/internal/dr$1;
invoke-direct {v1, p0}, Lcom/google/android/gms/internal/dr$1;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
:try_end_a
.catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_b
:goto_a
return-void
:catch_b
move-exception v0
const-string v1, "Too many background threads already running. Aborting task."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_a
.end method