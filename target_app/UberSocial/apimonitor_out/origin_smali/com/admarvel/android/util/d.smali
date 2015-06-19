.class public Lcom/admarvel/android/util/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(FLandroid/content/Context;)F
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static b(FLandroid/content/Context;)I
    .registers 4

    invoke-static {p0, p1}, Lcom/admarvel/android/util/d;->a(FLandroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
