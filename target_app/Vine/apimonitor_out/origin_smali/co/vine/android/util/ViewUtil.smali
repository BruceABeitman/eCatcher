.class public Lco/vine/android/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/util/ViewUtil$ResizeAnimationType;
    }
.end annotation


# static fields
.field public static final EMPTY_VIEW_CLICK_LISTENER:Landroid/view/View$OnClickListener;

.field private static sActionBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lco/vine/android/util/ViewUtil;->sActionBarHeight:I

    new-instance v0, Lco/vine/android/util/ViewUtil$1;

    invoke-direct {v0}, Lco/vine/android/util/ViewUtil$1;-><init>()V

    sput-object v0, Lco/vine/android/util/ViewUtil;->EMPTY_VIEW_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V
    .registers 6

    instance-of v1, p3, Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    check-cast p3, Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p3, v0}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_b
.end method

.method public static getActionBarHeight(Landroid/content/Context;)I
    .registers 6

    const/4 v4, 0x0

    sget v1, Lco/vine/android/util/ViewUtil;->sActionBarHeight:I

    if-gez v1, :cond_21

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10102eb

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v1, -0x4080

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lco/vine/android/util/ViewUtil;->sActionBarHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_21
    sget v1, Lco/vine/android/util/ViewUtil;->sActionBarHeight:I

    return v1
.end method

.method public static getFontScale(Landroid/content/Context;)F
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    return v0
.end method

.method public static getPecentageColor(FI)I
    .registers 3

    const/high16 v0, 0x437f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, p1

    return v0
.end method

.method public static makeResizeAnimation(Lco/vine/android/util/ViewUtil$ResizeAnimationType;Landroid/view/View;I)Landroid/view/animation/Animation;
    .registers 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lco/vine/android/util/ViewUtil;->makeResizeAnimation(Lco/vine/android/util/ViewUtil$ResizeAnimationType;Landroid/view/View;IILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public static makeResizeAnimation(Lco/vine/android/util/ViewUtil$ResizeAnimationType;Landroid/view/View;II)Landroid/view/animation/Animation;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lco/vine/android/util/ViewUtil;->makeResizeAnimation(Lco/vine/android/util/ViewUtil$ResizeAnimationType;Landroid/view/View;IILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public static makeResizeAnimation(Lco/vine/android/util/ViewUtil$ResizeAnimationType;Landroid/view/View;IILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .registers 13

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    sget-object v7, Lco/vine/android/util/ViewUtil$ResizeAnimationType;->EXPAND_WIDTH:Lco/vine/android/util/ViewUtil$ResizeAnimationType;

    if-eq p0, v7, :cond_e

    sget-object v7, Lco/vine/android/util/ViewUtil$ResizeAnimationType;->COLLAPSE_WIDTH:Lco/vine/android/util/ViewUtil$ResizeAnimationType;

    if-ne p0, v7, :cond_30

    :cond_e
    move v4, v6

    :goto_f
    sget-object v7, Lco/vine/android/util/ViewUtil$ResizeAnimationType;->EXPAND_WIDTH:Lco/vine/android/util/ViewUtil$ResizeAnimationType;

    if-eq p0, v7, :cond_17

    sget-object v7, Lco/vine/android/util/ViewUtil$ResizeAnimationType;->EXPAND_HEIGHT:Lco/vine/android/util/ViewUtil$ResizeAnimationType;

    if-ne p0, v7, :cond_32

    :cond_17
    move v3, v6

    :goto_18
    if-eqz v3, :cond_37

    if-eqz v4, :cond_34

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1e
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lco/vine/android/util/ViewUtil$3;

    invoke-direct {v0, v4, v2, p2, p1}, Lco/vine/android/util/ViewUtil$3;-><init>(ZLandroid/view/ViewGroup$LayoutParams;ILandroid/view/View;)V

    :goto_26
    if-lez p3, :cond_2c

    int-to-long v5, p3

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_2c
    invoke-virtual {v0, p4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0

    :cond_30
    move v4, v5

    goto :goto_f

    :cond_32
    move v3, v5

    goto :goto_18

    :cond_34
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1e

    :cond_37
    if-eqz v4, :cond_43

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_3d
    new-instance v0, Lco/vine/android/util/ViewUtil$4;

    invoke-direct {v0, p1, v4, v2, v1}, Lco/vine/android/util/ViewUtil$4;-><init>(Landroid/view/View;ZLandroid/view/ViewGroup$LayoutParams;I)V

    goto :goto_26

    :cond_43
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_3d
.end method

.method public static varargs reduceTextSizeViaFontScaleIfNeeded(Landroid/content/Context;FF[Landroid/widget/TextView;)V
    .registers 10

    invoke-static {p0}, Lco/vine/android/util/ViewUtil;->getFontScale(Landroid/content/Context;)F

    move-result v1

    cmpl-float v5, v1, p1

    if-lez v5, :cond_15

    move-object v0, p3

    array-length v3, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v3, :cond_15

    aget-object v4, v0, v2

    invoke-static {v4, v1, p2}, Lco/vine/android/util/ViewUtil;->stepDownViaFontScale(Landroid/widget/TextView;FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    return-void
.end method

.method public static setActionBarHeight(Landroid/support/v7/app/ActionBarActivity;Landroid/view/View;)V
    .registers 4

    invoke-static {p0}, Lco/vine/android/util/ViewUtil;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_c
    return-void

    :cond_d
    invoke-static {p0, p1}, Lco/vine/android/util/ViewUtil;->setActionBarHeightWhenReady(Landroid/support/v7/app/ActionBarActivity;Landroid/view/View;)V

    goto :goto_c
.end method

.method public static setActionBarHeightWhenReady(Landroid/support/v7/app/ActionBarActivity;Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Lco/vine/android/util/ViewUtil$2;

    invoke-direct {v1, p0, p1, v0}, Lco/vine/android/util/ViewUtil$2;-><init>(Landroid/support/v7/app/ActionBarActivity;Landroid/view/View;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_e
    return-void
.end method

.method public static setBackground(Landroid/content/res/Resources;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 4

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {p1, v0}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9
.end method

.method public static stepDownViaFontScale(Landroid/widget/TextView;FF)V
    .registers 14

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-double v1, v0

    float-to-double v3, p2

    const-wide/high16 v5, 0x3ff0

    const-wide/high16 v7, 0x3ff8

    float-to-double v9, p1

    sub-double/2addr v7, v9

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-float v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
