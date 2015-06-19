.class public final Lcom/pinguo/camera360/ui/AnimUtils;
.super Ljava/lang/Object;
.source "AnimUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;FFJ)V
    .registers 7

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/pinguo/camera360/ui/AnimUtils$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/AnimUtils$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;J)V
    .registers 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {p0, v0, v1, p1, p2}, Lcom/pinguo/camera360/ui/AnimUtils;->fadeIn(Landroid/view/View;FFJ)V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;)V
    .registers 7

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const-wide/16 v3, 0xc8

    new-instance v5, Lcom/pinguo/camera360/ui/AnimUtils$2;

    invoke-direct {v5, p0}, Lcom/pinguo/camera360/ui/AnimUtils$2;-><init>(Landroid/view/View;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/AnimUtils;->fadeOut(Landroid/view/View;FFJLandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;FFJLandroid/view/animation/Animation$AnimationListener;)V
    .registers 7

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, p5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static moveUpToCenter(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040049

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
