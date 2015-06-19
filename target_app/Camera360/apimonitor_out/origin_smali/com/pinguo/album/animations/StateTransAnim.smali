.class public Lcom/pinguo/album/animations/StateTransAnim;
.super Lcom/pinguo/album/animations/Animation;
.source "StateTransAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/animations/StateTransAnim$Spec;,
        Lcom/pinguo/album/animations/StateTransAnim$Transition;
    }
.end annotation


# instance fields
.field private mCurrentBackgroundAlpha:F

.field private mCurrentBackgroundScale:F

.field private mCurrentContentAlpha:F

.field private mCurrentContentScale:F

.field private mCurrentOverlayAlpha:F

.field private mCurrentOverlayScale:F

.field private mOldScreenTexture:Lcom/pinguo/album/opengles/RawTexture;

.field private final mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;


# direct methods
.method public constructor <init>(Lcom/pinguo/album/animations/StateTransAnim$Spec;Lcom/pinguo/album/opengles/RawTexture;)V
    .registers 4

    invoke-direct {p0}, Lcom/pinguo/album/animations/Animation;-><init>()V

    if-eqz p1, :cond_18

    :goto_5
    iput-object p1, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget-object v0, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v0, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->duration:I

    invoke-virtual {p0, v0}, Lcom/pinguo/album/animations/StateTransAnim;->setDuration(I)V

    iget-object v0, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget-object v0, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcom/pinguo/album/animations/StateTransAnim;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/pinguo/album/animations/StateTransAnim;->mOldScreenTexture:Lcom/pinguo/album/opengles/RawTexture;

    return-void

    :cond_18
    sget-object p1, Lcom/pinguo/album/animations/StateTransAnim$Spec;->OUTGOING:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    goto :goto_5
.end method

.method public constructor <init>(Lcom/pinguo/album/animations/StateTransAnim$Transition;Lcom/pinguo/album/opengles/RawTexture;)V
    .registers 4

    #calls: Lcom/pinguo/album/animations/StateTransAnim$Spec;->specForTransition(Lcom/pinguo/album/animations/StateTransAnim$Transition;)Lcom/pinguo/album/animations/StateTransAnim$Spec;
    invoke-static {p1}, Lcom/pinguo/album/animations/StateTransAnim$Spec;->access$1(Lcom/pinguo/album/animations/StateTransAnim$Transition;)Lcom/pinguo/album/animations/StateTransAnim$Spec;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/pinguo/album/animations/StateTransAnim;-><init>(Lcom/pinguo/album/animations/StateTransAnim$Spec;Lcom/pinguo/album/opengles/RawTexture;)V

    return-void
.end method

.method private applyOldTexture(Lcom/pinguo/album/views/GLBaseView;Lcom/pinguo/album/opengles/GLESCanvas;FFZ)V
    .registers 11

    iget-object v2, p0, Lcom/pinguo/album/animations/StateTransAnim;->mOldScreenTexture:Lcom/pinguo/album/opengles/RawTexture;

    if-nez v2, :cond_5

    :goto_4
    return-void

    :cond_5
    if-eqz p5, :cond_e

    invoke-virtual {p1}, Lcom/pinguo/album/views/GLBaseView;->getBackgroundColor()[F

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/pinguo/album/opengles/GLESCanvas;->clearBuffer([F)V

    :cond_e
    invoke-interface {p2}, Lcom/pinguo/album/opengles/GLESCanvas;->save()V

    invoke-interface {p2, p3}, Lcom/pinguo/album/opengles/GLESCanvas;->setAlpha(F)V

    invoke-virtual {p1}, Lcom/pinguo/album/views/GLBaseView;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    invoke-virtual {p1}, Lcom/pinguo/album/views/GLBaseView;->getHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    int-to-float v2, v0

    int-to-float v3, v1

    invoke-interface {p2, v2, v3}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V

    const/high16 v2, 0x3f80

    invoke-interface {p2, p4, p4, v2}, Lcom/pinguo/album/opengles/GLESCanvas;->scale(FFF)V

    iget-object v2, p0, Lcom/pinguo/album/animations/StateTransAnim;->mOldScreenTexture:Lcom/pinguo/album/opengles/RawTexture;

    neg-int v3, v0

    neg-int v4, v1

    invoke-virtual {v2, p2, v3, v4}, Lcom/pinguo/album/opengles/RawTexture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;II)V

    invoke-interface {p2}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V

    goto :goto_4
.end method


# virtual methods
.method public applyBackground(Lcom/pinguo/album/views/GLBaseView;Lcom/pinguo/album/opengles/GLESCanvas;)V
    .registers 9

    iget v0, p0, Lcom/pinguo/album/animations/StateTransAnim;->mCurrentBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    iget v3, p0, Lcom/pinguo/album/animations/StateTransAnim;->mCurrentBackgroundAlpha:F

    iget v4, p0, Lcom/pinguo/album/animations/StateTransAnim;->mCurrentBackgroundScale:F

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/album/animations/StateTransAnim;->applyOldTexture(Lcom/pinguo/album/views/GLBaseView;Lcom/pinguo/album/opengles/GLESCanvas;FFZ)V

    :cond_12
    return-void
.end method

.method public applyContentTransform(Lcom/pinguo/album/views/GLBaseView;Lcom/pinguo/album/opengles/GLESCanvas;)V
    .registers 8

    invoke-virtual {p1}, Lcom/pinguo/album/views/GLBaseView;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    invoke-virtual {p1}, Lcom/pinguo/album/views/GLBaseView;->getHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    int-to-float v2, v0

    int-to-float v3, v1

    invoke-interface {p2, v2, v3}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V

    iget v2, p0, Lcom/pinguo/album/animations/StateTransAnim;->mCurrentContentScale:F

    iget v3, p0, Lcom/pinguo/album/animations/StateTransAnim;->mCurrentContentScale:F

    const/high16 v4, 0x3f80

    invoke-interface {p2, v2, v3, v4}, Lcom/pinguo/album/opengles/GLESCanvas;->scale(FFF)V

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-interface {p2, v2, v3}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V

    iget v2, p0, Lcom/pinguo/album/animations/StateTransAnim;->mCurrentContentAlpha:F

    invoke-interface {p2, v2}, Lcom/pinguo/album/opengles/GLESCanvas;->setAlpha(F)V

    return-void
.end method

.method public applyOverlay(Lcom/pinguo/album/views/GLBaseView;Lcom/pinguo/album/opengles/GLESCanvas;)V
    .registers 9

    iget v0, p0, Lcom/pinguo/album/animations/StateTransAnim;->mCurrentOverlayAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    iget v3, p0, Lcom/pinguo/album/animations/StateTransAnim;->mCurrentOverlayAlpha:F

    iget v4, p0, Lcom/pinguo/album/animations/StateTransAnim;->mCurrentOverlayScale:F

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/album/animations/StateTransAnim;->applyOldTexture(Lcom/pinguo/album/views/GLBaseView;Lcom/pinguo/album/opengles/GLESCanvas;FFZ)V

    :cond_12
    return-void
.end method

.method public calculate(J)Z
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/pinguo/album/animations/Animation;->calculate(J)Z

    move-result v0

    invoke-virtual {p0}, Lcom/pinguo/album/animations/StateTransAnim;->isActive()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/pinguo/album/animations/StateTransAnim;->mOldScreenTexture:Lcom/pinguo/album/opengles/RawTexture;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/pinguo/album/animations/StateTransAnim;->mOldScreenTexture:Lcom/pinguo/album/opengles/RawTexture;

    invoke-virtual {v1}, Lcom/pinguo/album/opengles/RawTexture;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pinguo/album/animations/StateTransAnim;->mOldScreenTexture:Lcom/pinguo/album/opengles/RawTexture;

    :cond_16
    return v0
.end method

.method protected onCalculate(F)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v0, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->contentScaleFrom:F

    iget-object v1, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v1, v1, Lcom/pinguo/album/animations/StateTransAnim$Spec;->contentScaleTo:F

    iget-object v2, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v2, v2, Lcom/pinguo/album/animations/StateTransAnim$Spec;->contentScaleFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pinguo/album/animations/StateTransAnim;->mCurrentContentScale:F

    iget-object v0, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v0, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->contentAlphaFrom:F

    iget-object v1, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v1, v1, Lcom/pinguo/album/animations/StateTransAnim$Spec;->contentAlphaTo:F

    iget-object v2, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v2, v2, Lcom/pinguo/album/animations/StateTransAnim$Spec;->contentAlphaFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pinguo/album/animations/StateTransAnim;->mCurrentContentAlpha:F

    iget-object v0, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v0, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->backgroundAlphaFrom:F

    iget-object v1, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v1, v1, Lcom/pinguo/album/animations/StateTransAnim$Spec;->backgroundAlphaTo:F

    iget-object v2, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v2, v2, Lcom/pinguo/album/animations/StateTransAnim$Spec;->backgroundAlphaFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pinguo/album/animations/StateTransAnim;->mCurrentBackgroundAlpha:F

    iget-object v0, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v0, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->backgroundScaleFrom:F

    iget-object v1, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v1, v1, Lcom/pinguo/album/animations/StateTransAnim$Spec;->backgroundScaleTo:F

    iget-object v2, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v2, v2, Lcom/pinguo/album/animations/StateTransAnim$Spec;->backgroundScaleFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pinguo/album/animations/StateTransAnim;->mCurrentBackgroundScale:F

    iget-object v0, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v0, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->overlayScaleFrom:F

    iget-object v1, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v1, v1, Lcom/pinguo/album/animations/StateTransAnim$Spec;->overlayScaleTo:F

    iget-object v2, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v2, v2, Lcom/pinguo/album/animations/StateTransAnim$Spec;->overlayScaleFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pinguo/album/animations/StateTransAnim;->mCurrentOverlayScale:F

    iget-object v0, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v0, v0, Lcom/pinguo/album/animations/StateTransAnim$Spec;->overlayAlphaFrom:F

    iget-object v1, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v1, v1, Lcom/pinguo/album/animations/StateTransAnim$Spec;->overlayAlphaTo:F

    iget-object v2, p0, Lcom/pinguo/album/animations/StateTransAnim;->mTransitionSpec:Lcom/pinguo/album/animations/StateTransAnim$Spec;

    iget v2, v2, Lcom/pinguo/album/animations/StateTransAnim$Spec;->overlayAlphaFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pinguo/album/animations/StateTransAnim;->mCurrentOverlayAlpha:F

    return-void
.end method
