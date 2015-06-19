.class public final Lcom/instagram/creation/b/c/d;
.super Ljava/lang/Object;
.source "UploadReliabilityLogger.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/b/c/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/b/a/d;Lcom/instagram/creation/b/a/d;J)V
    .registers 9

    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "pending_media_process"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v1, "upload_id"

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "media_type"

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->m()Lcom/instagram/model/a/a;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "is_direct_share"

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "target"

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "from"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "to"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "duration_in_ms"

    invoke-virtual {v0, v1, p4, p5}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/b/c/d;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/instagram/b/b/a;->a(Lcom/instagram/common/analytics/b;Landroid/content/Context;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    return-void
.end method

.method public final a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/creation/b/c/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/common/u/g/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "media_upload_failure"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v1, "media_type"

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->m()Lcom/instagram/model/a/a;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    if-eqz p2, :cond_24

    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    :cond_24
    const-string v1, "upload_id"

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    :cond_34
    return-void
.end method
