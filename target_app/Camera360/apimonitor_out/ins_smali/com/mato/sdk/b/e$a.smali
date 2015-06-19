.class final Lcom/mato/sdk/b/e$a;
.super Ljava/lang/Object;
.field private static a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/mato/sdk/b/e$a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()V
.registers 1
const/4 v0, 0x0
:try_start_1
invoke-static {v0}, Lcom/mato/sdk/b/e;->a(Lcom/mato/sdk/b/e;)V
invoke-static {}, Lcom/mato/sdk/b/e$a;->c()V
const/4 v0, 0x0
invoke-static {v0}, Lcom/mato/sdk/b/e;->a(I)V
:goto_b
:try_end_b
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
goto :goto_b
.end method
.method public static a(Lcom/mato/sdk/b/d;)V
.registers 8
const/4 v2, 0x0
invoke-static {}, Lcom/mato/sdk/utils/c;->b()V
new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V
sput-object v0, Lcom/mato/sdk/b/e$a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
invoke-virtual {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V
sget-object v0, Lcom/mato/sdk/b/e$a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
invoke-virtual {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setContinueExistingPeriodicTasksAfterShutdownPolicy(Z)V
sget-object v0, Lcom/mato/sdk/b/e$a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
new-instance v1, Lcom/mato/sdk/b/f;
invoke-direct {v1, p0}, Lcom/mato/sdk/b/f;-><init>(Lcom/mato/sdk/b/d;)V
const-wide/16 v2, 0x0
const-wide/16 v4, 0x7d0
sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
return-void
.end method
.method static synthetic b()V
.registers 0
invoke-static {}, Lcom/mato/sdk/b/e$a;->c()V
return-void
.end method
.method private static c()V
.registers 1
sget-object v0, Lcom/mato/sdk/b/e$a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
if-eqz v0, :cond_c
sget-object v0, Lcom/mato/sdk/b/e$a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V
const/4 v0, 0x0
sput-object v0, Lcom/mato/sdk/b/e$a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
:cond_c
return-void
.end method