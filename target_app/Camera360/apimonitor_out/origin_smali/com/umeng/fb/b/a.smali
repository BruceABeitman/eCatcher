.class public Lcom/umeng/fb/b/a;
.super Ljava/lang/Object;
.source "AnimMapper.java"


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

    const-string/jumbo v1, "umeng_fb_slide_in_from_left"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v1, "umeng_fb_slide_in_from_right"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v1, "umeng_fb_slide_out_from_left"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v1, "umeng_fb_slide_out_from_right"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
