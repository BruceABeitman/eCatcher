.class public final Lcom/instagram/feed/c/f;
.super Ljava/lang/Object;
.source "VideoAnalyticsUtil.java"


# direct methods
.method private static a()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x3

    invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
    .registers 4

    invoke-static {p1, p2}, Lcom/instagram/feed/c/e;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instagram/common/analytics/d;->b(Lcom/instagram/common/analytics/b;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    goto :goto_d
.end method

.method public static a(Lcom/instagram/feed/d/l;IIIIZLcom/instagram/feed/g/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    new-instance v0, Lcom/instagram/feed/c/h;

    const-string v1, "video_paused"

    invoke-direct {v0, v1, p6}, Lcom/instagram/feed/c/h;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {v0, p0}, Lcom/instagram/feed/c/h;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/instagram/feed/c/h;->a(I)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/feed/c/h;->b(I)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/instagram/feed/c/h;->c(I)Lcom/instagram/feed/c/h;

    move-result-object v0

    int-to-double v1, p1

    int-to-double v3, p3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/c/h;->a(D)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/feed/c/h;->d(I)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-static {}, Lcom/instagram/feed/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/c/h;->a(Ljava/lang/String;)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/instagram/feed/c/h;->a(Z)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/instagram/feed/c/h;->b(Ljava/lang/String;)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/instagram/feed/c/h;->c(Ljava/lang/String;)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/h;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-static {v0, p0, p6}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    return-void
.end method

.method public static a(Lcom/instagram/feed/d/l;IIILcom/instagram/feed/g/a;)V
    .registers 7

    new-instance v0, Lcom/instagram/feed/c/h;

    const-string v1, "video_finished_playing"

    invoke-direct {v0, v1, p4}, Lcom/instagram/feed/c/h;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {v0, p0}, Lcom/instagram/feed/c/h;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/feed/c/h;->b(I)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/instagram/feed/c/h;->d(I)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/feed/c/h;->a(I)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/h;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-static {v0, p0, p4}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    return-void
.end method

.method public static a(Lcom/instagram/feed/d/l;IIIZLcom/instagram/feed/g/a;Ljava/lang/String;)V
    .registers 12

    new-instance v0, Lcom/instagram/feed/c/h;

    const-string v1, "video_unpaused"

    invoke-direct {v0, v1, p5}, Lcom/instagram/feed/c/h;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {v0, p0}, Lcom/instagram/feed/c/h;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/instagram/feed/c/h;->a(I)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/feed/c/h;->b(I)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/feed/c/h;->c(I)Lcom/instagram/feed/c/h;

    move-result-object v0

    int-to-double v1, p1

    int-to-double v3, p2

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/c/h;->a(D)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-static {}, Lcom/instagram/feed/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/c/h;->a(Ljava/lang/String;)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/instagram/feed/c/h;->a(Z)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/instagram/feed/c/h;->c(Ljava/lang/String;)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/h;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-static {v0, p0, p5}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    return-void
.end method

.method public static a(Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V
    .registers 5

    new-instance v0, Lcom/instagram/feed/c/h;

    const-string v1, "video_audio_enabled"

    invoke-direct {v0, v1, p2}, Lcom/instagram/feed/c/h;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {v0, p0}, Lcom/instagram/feed/c/h;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/feed/c/h;->a(I)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-static {}, Lcom/instagram/feed/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/c/h;->a(Ljava/lang/String;)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/h;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-static {v0, p0, p2}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    return-void
.end method

.method public static a(Lcom/instagram/feed/d/l;IZLcom/instagram/feed/g/a;)V
    .registers 6

    new-instance v0, Lcom/instagram/feed/c/h;

    const-string v1, "video_displayed"

    invoke-direct {v0, v1, p3}, Lcom/instagram/feed/c/h;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {v0, p0}, Lcom/instagram/feed/c/h;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/feed/c/h;->a(I)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/feed/c/h;->b(Z)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/h;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-static {v0, p0, p3}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    return-void
.end method

.method public static a(Lcom/instagram/feed/d/l;IZLcom/instagram/feed/g/a;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/instagram/feed/c/h;

    const-string v1, "video_started_playing"

    invoke-direct {v0, v1, p3}, Lcom/instagram/feed/c/h;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {v0, p0}, Lcom/instagram/feed/c/h;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-static {}, Lcom/instagram/feed/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/c/h;->a(Ljava/lang/String;)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/feed/c/h;->a(I)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/feed/c/h;->a(Z)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/instagram/feed/c/h;->c(Ljava/lang/String;)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/h;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-static {v0, p0, p3}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    return-void
.end method

.method public static a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
    .registers 4

    new-instance v0, Lcom/instagram/feed/c/h;

    const-string v1, "video_should_start"

    invoke-direct {v0, v1, p1}, Lcom/instagram/feed/c/h;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {v0, p0}, Lcom/instagram/feed/c/h;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/h;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    return-void
.end method

.method public static b(Lcom/instagram/feed/d/l;IIILcom/instagram/feed/g/a;)V
    .registers 7

    new-instance v0, Lcom/instagram/feed/c/h;

    const-string v1, "video_failed_playing"

    invoke-direct {v0, v1, p4}, Lcom/instagram/feed/c/h;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    invoke-virtual {v0, p0}, Lcom/instagram/feed/c/h;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/instagram/feed/c/h;->a(I)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instagram/feed/c/h;->a(II)Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/h;->a()Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-static {v0, p0, p4}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    return-void
.end method
