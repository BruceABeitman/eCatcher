.class final Lcom/a/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/u;


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Lcom/a/a/a/k;

.field private final c:Lcom/a/a/a/bw;

.field private d:Ljava/util/concurrent/ScheduledFuture;

.field private e:I

.field private f:Lcom/a/a/a/n;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/a/a/a/k;Lcom/a/a/a/bw;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/a/j;->e:I

    iput-object p1, p0, Lcom/a/a/a/j;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/a/a/a/j;->b:Lcom/a/a/a/k;

    iput-object p3, p0, Lcom/a/a/a/j;->c:Lcom/a/a/a/bw;

    return-void
.end method

.method private a(II)V
    .registers 10

    :try_start_0
    new-instance v1, Lcom/a/a/a/y;

    iget-object v0, p0, Lcom/a/a/a/j;->b:Lcom/a/a/a/k;

    invoke-direct {v1, v0, p0}, Lcom/a/a/a/y;-><init>(Lcom/a/a/a/k;Lcom/a/a/a/u;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Scheduling time based file roll over every "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " seconds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/bc;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/a/j;->a:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p1

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/j;->d:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2b
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_2b} :catch_2c

    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    const-string v0, "Crashlytics failed to schedule time based analytics file roll over"

    invoke-static {v0}, Lcom/a/a/a/bc;->d(Ljava/lang/String;)V

    goto :goto_2b
.end method


# virtual methods
.method public final a()V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/a/j;->f:Lcom/a/a/a/n;

    if-nez v0, :cond_b

    const-string v0, "skipping analytics files send because we don\'t yet know the target endpoint"

    invoke-static {v0}, Lcom/a/a/a/bc;->c(Ljava/lang/String;)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string v0, "Sending all analytics files"

    invoke-static {v0}, Lcom/a/a/a/bc;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/a/j;->b:Lcom/a/a/a/k;

    invoke-virtual {v0}, Lcom/a/a/a/k;->b()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    :goto_18
    :try_start_18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_86

    iget-object v1, p0, Lcom/a/a/a/j;->f:Lcom/a/a/a/n;

    invoke-static {}, Lcom/a/a/a/d;->a()Lcom/a/a/a/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/a/d;->z()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/a/a/a/cs;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Lcom/a/a/a/n;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_36} :catch_6b

    move-result v1

    add-int/2addr v1, v0

    :try_start_38
    iget-object v0, p0, Lcom/a/a/a/j;->b:Lcom/a/a/a/k;

    invoke-virtual {v0, v2}, Lcom/a/a/a/k;->a(Ljava/util/List;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_8f

    move v0, v1

    :cond_3e
    :try_start_3e
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "attempt to send batch of %d analytics files %s"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v2, 0x1

    if-eqz v3, :cond_68

    const-string v1, "succeeded"

    :goto_55
    aput-object v1, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/a/a/a/bc;->c(Ljava/lang/String;)V

    if-eqz v3, :cond_86

    iget-object v1, p0, Lcom/a/a/a/j;->b:Lcom/a/a/a/k;

    invoke-virtual {v1}, Lcom/a/a/a/k;->b()Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    goto :goto_18

    :cond_68
    const-string v1, "did not succeed"
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_6a} :catch_6b

    goto :goto_55

    :catch_6b
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    :goto_6f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Crashlytics failed to send batch of analytics files to server: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/bc;->d(Ljava/lang/String;)V

    move v0, v1

    :cond_86
    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/a/a/a/j;->b:Lcom/a/a/a/k;

    invoke-virtual {v0}, Lcom/a/a/a/k;->d()V

    goto/16 :goto_a

    :catch_8f
    move-exception v0

    goto :goto_6f
.end method

.method public final a(Lcom/a/a/a/al;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/a/a/a/h;

    iget-object v1, p1, Lcom/a/a/a/al;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/a/j;->c:Lcom/a/a/a/bw;

    invoke-direct {v0, p2, v1, v2}, Lcom/a/a/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/a/bw;)V

    iput-object v0, p0, Lcom/a/a/a/j;->f:Lcom/a/a/a/n;

    iget-object v0, p0, Lcom/a/a/a/j;->b:Lcom/a/a/a/k;

    invoke-virtual {v0, p1}, Lcom/a/a/a/k;->a(Lcom/a/a/a/al;)V

    iget v0, p1, Lcom/a/a/a/al;->b:I

    iput v0, p0, Lcom/a/a/a/j;->e:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/a/a/a/j;->e:I

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/j;->a(II)V

    return-void
.end method

.method public final a(Lcom/a/a/a/v;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/a/a/a/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/bc;->c(Ljava/lang/String;)V

    :try_start_9
    iget-object v0, p0, Lcom/a/a/a/j;->b:Lcom/a/a/a/k;

    invoke-virtual {v0, p1}, Lcom/a/a/a/k;->a(Lcom/a/a/a/v;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_24

    :goto_e
    iget v0, p0, Lcom/a/a/a/j;->e:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2b

    move v0, v1

    :goto_14
    iget-object v3, p0, Lcom/a/a/a/j;->d:Ljava/util/concurrent/ScheduledFuture;

    if-nez v3, :cond_2d

    :goto_18
    if-eqz v0, :cond_23

    if-eqz v1, :cond_23

    iget v0, p0, Lcom/a/a/a/j;->e:I

    iget v1, p0, Lcom/a/a/a/j;->e:I

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/j;->a(II)V

    :cond_23
    return-void

    :catch_24
    move-exception v0

    const-string v0, "Crashlytics failed to write session event."

    invoke-static {v0}, Lcom/a/a/a/bc;->d(Ljava/lang/String;)V

    goto :goto_e

    :cond_2b
    move v0, v2

    goto :goto_14

    :cond_2d
    move v1, v2

    goto :goto_18
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/j;->b:Lcom/a/a/a/k;

    invoke-virtual {v0}, Lcom/a/a/a/k;->c()V

    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/a/a/a/j;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_12

    const-string v0, "Cancelling time-based rollover because no events are currently being generated."

    invoke-static {v0}, Lcom/a/a/a/bc;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/a/j;->d:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/j;->d:Ljava/util/concurrent/ScheduledFuture;

    :cond_12
    return-void
.end method

.method public final d()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/j;->b:Lcom/a/a/a/k;

    invoke-virtual {v0}, Lcom/a/a/a/k;->a()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v0, "Crashlytics failed to roll analytics file over."

    invoke-static {v0}, Lcom/a/a/a/bc;->d(Ljava/lang/String;)V

    goto :goto_5
.end method
