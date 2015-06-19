.class public Lcom/pinguo/lib/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field public static final ALPHA_10P:F = 0.18f

.field public static final ALPHA_OPAQUE:F = 1.0f

.field private static final ALPHA_TRANSLUCENT:F = 0.5f

.field private static final COLOR_DISABLE:I

.field private static final COLOR_NORMAL:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xab

    const/16 v1, 0xb2

    const/16 v2, 0xba

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/pinguo/lib/util/ViewUtils;->COLOR_NORMAL:I

    const/16 v0, 0x70

    const/16 v1, 0x7d

    const/16 v2, 0x78

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/pinguo/lib/util/ViewUtils;->COLOR_DISABLE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;)V
    .registers 7

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const-wide/16 v3, 0x190

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/pinguo/lib/util/ViewUtils;->fadeIn(Landroid/view/View;FFJLandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;FFJLandroid/view/animation/Animation$AnimationListener;)V
    .registers 8

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    :goto_6
    return-void

    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    if-eqz p5, :cond_15

    invoke-virtual {v0, p5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_15
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6
.end method

.method public static fadeOut(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/pinguo/lib/util/ViewUtils;->fadeOutWithListener(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public static fadeOutWithInvisiable(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method public static fadeOutWithListener(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    if-eqz p1, :cond_14

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_14
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method public static setDelayedClickable(Landroid/view/View;ZI)V
    .registers 7

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/pinguo/lib/util/ViewUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/pinguo/lib/util/ViewUtils$1;-><init>(Landroid/view/View;Z)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static setViewAlpha(Landroid/view/View;F)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v3, 0x1

    if-nez p0, :cond_4

    :goto_3
    return-void

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_e

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_e
    const/4 v0, 0x0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3
.end method

.method public static setViewClickable(Landroid/widget/TextView;Z)V
    .registers 3

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    if-eqz p1, :cond_e

    sget v0, Lcom/pinguo/lib/util/ViewUtils;->COLOR_NORMAL:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_a
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_2

    :cond_e
    sget v0, Lcom/pinguo/lib/util/ViewUtils;->COLOR_DISABLE:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a
.end method
