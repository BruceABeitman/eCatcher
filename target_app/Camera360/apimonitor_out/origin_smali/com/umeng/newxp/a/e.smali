.class public Lcom/umeng/newxp/a/e;
.super Ljava/lang/Object;
.source "StringMapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v1, "umeng_xp_size"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v1, "umeng_xp_action_open"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v1, "umeng_xp_action_browse"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v1, "umeng_xp_action_download"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v1, "umeng_xp_action_callphone"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v1, "umeng_xp_back_to_top"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static g(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v1, "umeng_xp_more"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v1, "umeng_xp_info_banner_deprecated"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v1, "umeng_xp_network_break_alert"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
