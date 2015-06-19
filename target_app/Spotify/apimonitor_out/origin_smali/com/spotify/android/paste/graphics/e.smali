.class public final Lcom/spotify/android/paste/graphics/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(FLandroid/content/res/Resources;)I
    .registers 3

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static b(FLandroid/content/res/Resources;)I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eqz v0, :cond_f

    :goto_e
    return v0

    :cond_f
    cmpl-float v0, p0, v1

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_e

    :cond_15
    cmpl-float v0, p0, v1

    if-lez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_e

    :cond_1b
    const/4 v0, -0x1

    goto :goto_e
.end method
