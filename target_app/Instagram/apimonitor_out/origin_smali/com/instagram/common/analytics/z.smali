.class final Lcom/instagram/common/analytics/z;
.super Ljava/lang/Object;
.source "InstagramAnalyticsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/analytics/x;


# direct methods
.method private constructor <init>(Lcom/instagram/common/analytics/x;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/common/analytics/z;->a:Lcom/instagram/common/analytics/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/analytics/x;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/common/analytics/z;-><init>(Lcom/instagram/common/analytics/x;)V

    return-void
.end method

.method private a()V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/common/analytics/z;->a:Lcom/instagram/common/analytics/x;

    invoke-static {v0}, Lcom/instagram/common/analytics/x;->d(Lcom/instagram/common/analytics/x;)Lcom/instagram/common/analytics/f;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/instagram/common/analytics/z;->a:Lcom/instagram/common/analytics/x;

    invoke-static {v0}, Lcom/instagram/common/analytics/x;->d(Lcom/instagram/common/analytics/x;)Lcom/instagram/common/analytics/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/f;->e()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3f

    :try_start_1e
    iget-object v0, p0, Lcom/instagram/common/analytics/z;->a:Lcom/instagram/common/analytics/x;

    invoke-static {v0}, Lcom/instagram/common/analytics/x;->e(Lcom/instagram/common/analytics/x;)Lcom/instagram/common/analytics/h;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/common/analytics/z;->a:Lcom/instagram/common/analytics/x;

    invoke-static {v2}, Lcom/instagram/common/analytics/x;->d(Lcom/instagram/common/analytics/x;)Lcom/instagram/common/analytics/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/common/analytics/h;->a(Lcom/instagram/common/analytics/f;)Ljava/io/File;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/common/analytics/z;->a:Lcom/instagram/common/analytics/x;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/instagram/common/analytics/x;->a(Lcom/instagram/common/analytics/x;Lcom/instagram/common/analytics/f;)Lcom/instagram/common/analytics/f;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_34} :catch_40

    :goto_34
    if-eqz v1, :cond_3f

    iget-object v0, p0, Lcom/instagram/common/analytics/z;->a:Lcom/instagram/common/analytics/x;

    invoke-static {v0}, Lcom/instagram/common/analytics/x;->f(Lcom/instagram/common/analytics/x;)Lcom/instagram/common/analytics/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/common/analytics/j;->a(Ljava/io/File;)V

    :cond_3f
    return-void

    :catch_40
    move-exception v0

    const-string v2, "InstagramAnalyticsLogger"

    const-string v3, "Unable to store batch"

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_34
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/analytics/z;->a:Lcom/instagram/common/analytics/x;

    invoke-static {v0}, Lcom/instagram/common/analytics/x;->b(Lcom/instagram/common/analytics/x;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_a
    iget-object v0, p0, Lcom/instagram/common/analytics/z;->a:Lcom/instagram/common/analytics/x;

    invoke-static {v0}, Lcom/instagram/common/analytics/x;->c(Lcom/instagram/common/analytics/x;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/instagram/common/analytics/z;->a:Lcom/instagram/common/analytics/x;

    invoke-static {v0}, Lcom/instagram/common/analytics/x;->c(Lcom/instagram/common/analytics/x;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_a

    :cond_26
    invoke-direct {p0}, Lcom/instagram/common/analytics/z;->a()V

    return-void
.end method
