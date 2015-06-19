.class final Lcom/bbm/ui/g;
.super Landroid/view/animation/Animation;
.source "AnimationUtils.java"


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I


# direct methods
.method constructor <init>(ILandroid/view/View;I)V
    .registers 4

    iput p1, p0, Lcom/bbm/ui/g;->a:I

    iput-object p2, p0, Lcom/bbm/ui/g;->b:Landroid/view/View;

    iput p3, p0, Lcom/bbm/ui/g;->c:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 7

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_22

    iget v0, p0, Lcom/bbm/ui/g;->a:I

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/bbm/ui/g;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/bbm/ui/g;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/bbm/ui/g;->a:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/bbm/ui/g;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_11

    :cond_22
    iget-object v0, p0, Lcom/bbm/ui/g;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/bbm/ui/g;->c:I

    iget v2, p0, Lcom/bbm/ui/g;->c:I

    iget v3, p0, Lcom/bbm/ui/g;->a:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/bbm/ui/g;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_11
.end method

.method public final willChangeBounds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
