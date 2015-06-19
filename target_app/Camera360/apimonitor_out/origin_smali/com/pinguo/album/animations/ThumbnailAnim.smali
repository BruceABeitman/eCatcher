.class public abstract Lcom/pinguo/album/animations/ThumbnailAnim;
.super Lcom/pinguo/album/animations/Animation;
.source "ThumbnailAnim.java"


# instance fields
.field protected mProgress:F


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/pinguo/album/animations/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/album/animations/ThumbnailAnim;->mProgress:F

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4080

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/pinguo/album/animations/ThumbnailAnim;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v0, 0x5dc

    invoke-virtual {p0, v0}, Lcom/pinguo/album/animations/ThumbnailAnim;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public abstract apply(Lcom/pinguo/album/opengles/GLESCanvas;ILandroid/graphics/Rect;)V
.end method

.method protected onCalculate(F)V
    .registers 2

    iput p1, p0, Lcom/pinguo/album/animations/ThumbnailAnim;->mProgress:F

    return-void
.end method
