.class public final Lcom/instagram/api/d/a;
.super Ljava/lang/Object;
.source "NetworkSpeedThrottle.java"


# direct methods
.method public static a()V
    .registers 2

    invoke-static {}, Lcom/instagram/common/o/a;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/instagram/k/a/a;->a()Lcom/instagram/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/16 v0, 0x7d0

    :try_start_12
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15
.end method
