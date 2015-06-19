.class public final Lcom/bbm/ui/d;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# direct methods
.method public static a(Landroid/view/View;I)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    new-instance v1, Lcom/bbm/ui/g;

    invoke-direct {v1, p1, p0, v0}, Lcom/bbm/ui/g;-><init>(ILandroid/view/View;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/bbm/ui/f;

    invoke-direct {v0, p0, p2, p1}, Lcom/bbm/ui/f;-><init>(Landroid/view/View;II)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
