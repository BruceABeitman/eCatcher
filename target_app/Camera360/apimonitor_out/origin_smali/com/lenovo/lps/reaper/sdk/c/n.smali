.class public final Lcom/lenovo/lps/reaper/sdk/c/n;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/lenovo/lps/reaper/sdk/c/n;


# instance fields
.field private final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/c/n;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/c/n;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/c/n;->d:Lcom/lenovo/lps/reaper/sdk/c/n;

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    const/4 v8, 0x1

    const-wide/16 v3, 0x0

    const/16 v7, 0x3e8

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/n;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/n;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move v1, v8

    move v2, v8

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/n;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static a()Lcom/lenovo/lps/reaper/sdk/c/n;
    .registers 1

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/c/n;->d:Lcom/lenovo/lps/reaper/sdk/c/n;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/Runnable;)V
    .registers 6

    packed-switch p1, :pswitch_data_2e

    :goto_3
    return-void

    :pswitch_4
    :try_start_4
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/n;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_9
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_9} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_1b

    goto :goto_3

    :catch_a
    move-exception v0

    const-string/jumbo v0, "TaskHandler"

    const-string/jumbo v1, "Too Many Task At a Time. Please Wait..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_15
    :try_start_15
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/n;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_15 .. :try_end_1a} :catch_a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_3

    :catch_1b
    move-exception v0

    const-string/jumbo v1, "TaskHandler"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :pswitch_27
    :try_start_27
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/n;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2c
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_27 .. :try_end_2c} :catch_a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_1b

    goto :goto_3

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_4
        :pswitch_15
        :pswitch_27
    .end packed-switch
.end method
