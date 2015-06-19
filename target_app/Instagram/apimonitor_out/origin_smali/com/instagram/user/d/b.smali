.class public final Lcom/instagram/user/d/b;
.super Ljava/lang/Object;
.source "RecommendedUserAnalyticsUtil.java"


# direct methods
.method public static a(Lcom/instagram/common/analytics/e;Lcom/instagram/user/d/a;I)V
    .registers 5

    const-string v0, "recommended_user_dismissed"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/instagram/user/d/b;->a(Lcom/instagram/common/analytics/e;Ljava/lang/String;Lcom/instagram/user/d/a;IZ)V

    return-void
.end method

.method public static a(Lcom/instagram/common/analytics/e;Lcom/instagram/user/d/a;IZ)V
    .registers 5

    const-string v0, "recommended_user_impression"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/instagram/user/d/b;->a(Lcom/instagram/common/analytics/e;Ljava/lang/String;Lcom/instagram/user/d/a;IZ)V

    return-void
.end method

.method private static a(Lcom/instagram/common/analytics/e;Ljava/lang/String;Lcom/instagram/user/d/a;IZ)V
    .registers 9

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v1

    new-instance v0, Lcom/instagram/common/analytics/b;

    invoke-direct {v0, p1, p0}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v2, "uid"

    invoke-virtual {p2}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v2, "position"

    invoke-virtual {v0, v2, p3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v3, "view"

    if-eqz p4, :cond_35

    const-string v0, "fullscreen"

    :goto_23
    invoke-virtual {v2, v3, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v2, "algorithm"

    invoke-virtual {p2}, Lcom/instagram/user/d/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    return-void

    :cond_35
    const-string v0, "feed_aysf"

    goto :goto_23
.end method

.method public static b(Lcom/instagram/common/analytics/e;Lcom/instagram/user/d/a;IZ)V
    .registers 5

    const-string v0, "recommended_username_tapped"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/instagram/user/d/b;->a(Lcom/instagram/common/analytics/e;Ljava/lang/String;Lcom/instagram/user/d/a;IZ)V

    return-void
.end method

.method public static c(Lcom/instagram/common/analytics/e;Lcom/instagram/user/d/a;IZ)V
    .registers 5

    const-string v0, "recommended_follow_button_tapped"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/instagram/user/d/b;->a(Lcom/instagram/common/analytics/e;Ljava/lang/String;Lcom/instagram/user/d/a;IZ)V

    return-void
.end method
