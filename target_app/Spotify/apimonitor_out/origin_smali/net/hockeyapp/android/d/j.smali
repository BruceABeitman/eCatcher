.class public final Lnet/hockeyapp/android/d/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Landroid/graphics/drawable/Drawable;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    return-object v1

    :array_e
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
