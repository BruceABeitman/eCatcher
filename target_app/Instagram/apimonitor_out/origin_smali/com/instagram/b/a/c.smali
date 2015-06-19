.class final Lcom/instagram/b/a/c;
.super Ljava/lang/Object;
.source "InstagramDeviceInfoReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/b/a/b;


# direct methods
.method constructor <init>(Lcom/instagram/b/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/b/a/c;->a:Lcom/instagram/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v3

    new-instance v4, Lcom/instagram/common/analytics/b;

    const-string v0, "device_info"

    invoke-direct {v4, v0, v6}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v5, "sound"

    invoke-virtual {v3}, Lcom/instagram/k/b/a;->v()Z

    move-result v0

    if-eqz v0, :cond_99

    move v0, v1

    :goto_17
    invoke-virtual {v4, v5, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v4

    const-string v5, "save_originals"

    invoke-virtual {v3}, Lcom/instagram/k/b/a;->x()Z

    move-result v0

    if-eqz v0, :cond_9c

    move v0, v1

    :goto_24
    invoke-virtual {v4, v5, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v4, "low_bandwidth"

    invoke-static {}, Lcom/instagram/creation/c/a;->c()Z

    move-result v5

    if-eqz v5, :cond_9e

    :goto_30
    invoke-virtual {v0, v4, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "image_cache_size"

    invoke-static {}, Lcom/instagram/common/e/b/h;->a()Lcom/instagram/common/e/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/common/e/b/h;->b()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "video_cache_size"

    invoke-static {}, Lcom/instagram/common/e/c/a;->a()Lcom/instagram/common/e/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/common/e/c/a;->b()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "badge_count"

    invoke-virtual {v3}, Lcom/instagram/k/b/a;->A()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    new-instance v1, Lcom/instagram/b/a/a;

    iget-object v2, p0, Lcom/instagram/b/a/c;->a:Lcom/instagram/b/a/b;

    invoke-static {v2}, Lcom/instagram/b/a/b;->a(Lcom/instagram/b/a/b;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/b/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/instagram/b/a/a;->a(Lcom/instagram/common/analytics/b;)V

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    invoke-static {}, Lcom/instagram/api/g/n;->a()Lcom/instagram/api/g/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/g/n;->b()V

    iget-object v0, p0, Lcom/instagram/b/a/c;->a:Lcom/instagram/b/a/b;

    invoke-static {v0}, Lcom/instagram/b/a/b;->a(Lcom/instagram/b/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/j/a;->a(Landroid/content/Context;)Lcom/instagram/j/a;

    move-result-object v0

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v1

    new-instance v2, Lcom/instagram/common/analytics/b;

    const-string v3, "app_performance"

    invoke-direct {v2, v3, v6}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v3, "data_usage"

    invoke-virtual {v0}, Lcom/instagram/j/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    return-void

    :cond_99
    move v0, v2

    goto/16 :goto_17

    :cond_9c
    move v0, v2

    goto :goto_24

    :cond_9e
    move v2, v1

    goto :goto_30
.end method
