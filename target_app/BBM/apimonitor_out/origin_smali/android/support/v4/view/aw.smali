.class Landroid/support/v4/view/aw;
.super Landroid/support/v4/view/av;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/view/av;-><init>()V

    return-void
.end method


# virtual methods
.method final a()J
    .registers 3

    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final f(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    return v0
.end method
