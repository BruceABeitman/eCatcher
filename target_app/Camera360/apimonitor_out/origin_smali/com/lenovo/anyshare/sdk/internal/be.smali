.class public final Lcom/lenovo/anyshare/sdk/internal/be;
.super Ljava/lang/Object;
.source "TaskHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/anyshare/sdk/internal/be$a;,
        Lcom/lenovo/anyshare/sdk/internal/be$b;,
        Lcom/lenovo/anyshare/sdk/internal/be$d;,
        Lcom/lenovo/anyshare/sdk/internal/be$c;
    }
.end annotation


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Lcom/lenovo/anyshare/sdk/internal/be$b;

.field private static c:Lcom/lenovo/anyshare/sdk/internal/be$b;

.field private static d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/be$1;

    invoke-direct {v0}, Lcom/lenovo/anyshare/sdk/internal/be$1;-><init>()V

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/be;->a:Landroid/os/Handler;

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/be$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/be$b;-><init>(I)V

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/be;->b:Lcom/lenovo/anyshare/sdk/internal/be$b;

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/be$b;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/be$b;-><init>(I)V

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/be;->c:Lcom/lenovo/anyshare/sdk/internal/be$b;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/be;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/be;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Lcom/lenovo/anyshare/sdk/internal/be$a;Lcom/lenovo/anyshare/sdk/internal/be$c;JJLjava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/be$c;
    .registers 20

    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-ltz v3, :cond_2a

    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-ltz v3, :cond_2a

    const/4 v3, 0x1

    :goto_10
    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V

    new-instance v8, Lcom/lenovo/anyshare/sdk/internal/ar;

    invoke-direct {v8, p1}, Lcom/lenovo/anyshare/sdk/internal/ar;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lcom/lenovo/anyshare/sdk/internal/be$a;->a:Lcom/lenovo/anyshare/sdk/internal/be$a;

    if-ne p0, v3, :cond_2c

    const/4 v3, 0x1

    :goto_1d
    iput-boolean v3, p1, Lcom/lenovo/anyshare/sdk/internal/be$c;->a:Z

    instance-of v3, p1, Lcom/lenovo/anyshare/sdk/internal/be$d;

    if-eqz v3, :cond_3d

    invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/be$c;->b()Z

    move-result v3

    if-eqz v3, :cond_2e

    :goto_29
    return-object p1

    :cond_2a
    const/4 v3, 0x0

    goto :goto_10

    :cond_2c
    const/4 v3, 0x0

    goto :goto_1d

    :cond_2e
    sget-object v3, Lcom/lenovo/anyshare/sdk/internal/be;->a:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    add-long v9, p4, p2

    sget-object v3, Lcom/lenovo/anyshare/sdk/internal/be;->a:Landroid/os/Handler;

    invoke-virtual {v3, v12, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_29

    :cond_3d
    :try_start_3d
    iget-boolean v3, p1, Lcom/lenovo/anyshare/sdk/internal/be$c;->a:Z

    if-eqz v3, :cond_65

    sget-object v2, Lcom/lenovo/anyshare/sdk/internal/be;->b:Lcom/lenovo/anyshare/sdk/internal/be$b;

    :goto_43
    new-instance v3, Lcom/lenovo/anyshare/sdk/internal/be$2;

    move-wide/from16 v0, p4

    invoke-direct {v3, v8, v2, v0, v1}, Lcom/lenovo/anyshare/sdk/internal/be$2;-><init>(Lcom/lenovo/anyshare/sdk/internal/ar;Lcom/lenovo/anyshare/sdk/internal/be$b;J)V

    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/be$c;->a(Lcom/lenovo/anyshare/sdk/internal/be$c;)I

    move-result v6

    move-wide v4, p2

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/lenovo/anyshare/sdk/internal/be$b;->a(Ljava/lang/Runnable;JILjava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v3

    iput-object v3, p1, Lcom/lenovo/anyshare/sdk/internal/be$c;->b:Ljava/util/concurrent/Future;
    :try_end_57
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3d .. :try_end_57} :catch_58

    goto :goto_29

    :catch_58
    move-exception v11

    const-string/jumbo v3, "TaskHelper"

    invoke-virtual {v11}, Ljava/util/concurrent/RejectedExecutionException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_29

    :cond_65
    :try_start_65
    sget-object v2, Lcom/lenovo/anyshare/sdk/internal/be;->c:Lcom/lenovo/anyshare/sdk/internal/be$b;
    :try_end_67
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_65 .. :try_end_67} :catch_58

    goto :goto_43
.end method

.method public static a(Lcom/lenovo/anyshare/sdk/internal/be$c;)Lcom/lenovo/anyshare/sdk/internal/be$c;
    .registers 8

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/be$a;->b:Lcom/lenovo/anyshare/sdk/internal/be$a;

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, v2

    invoke-static/range {v0 .. v6}, Lcom/lenovo/anyshare/sdk/internal/be;->a(Lcom/lenovo/anyshare/sdk/internal/be$a;Lcom/lenovo/anyshare/sdk/internal/be$c;JJLjava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/be$c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/lenovo/anyshare/sdk/internal/be$c;J)Lcom/lenovo/anyshare/sdk/internal/be$c;
    .registers 10

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/be$a;->b:Lcom/lenovo/anyshare/sdk/internal/be$a;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v0 .. v6}, Lcom/lenovo/anyshare/sdk/internal/be;->a(Lcom/lenovo/anyshare/sdk/internal/be$a;Lcom/lenovo/anyshare/sdk/internal/be$c;JJLjava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/be$c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/lenovo/anyshare/sdk/internal/be;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .registers 10

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    :try_start_3
    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/be;->c:Lcom/lenovo/anyshare/sdk/internal/be$b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/anyshare/sdk/internal/be$b;->a(Ljava/lang/Runnable;JILjava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_c
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v6

    const-string/jumbo v1, "TaskHelper"

    invoke-virtual {v6}, Ljava/util/concurrent/RejectedExecutionException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method static synthetic b()Lcom/lenovo/anyshare/sdk/internal/be$b;
    .registers 1

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/be;->b:Lcom/lenovo/anyshare/sdk/internal/be$b;

    return-object v0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .registers 4

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    :try_start_3
    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/be;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_8
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    const-string/jumbo v1, "TaskHelper"

    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method static synthetic c()Lcom/lenovo/anyshare/sdk/internal/be$b;
    .registers 1

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/be;->c:Lcom/lenovo/anyshare/sdk/internal/be$b;

    return-object v0
.end method
