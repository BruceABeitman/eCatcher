.class public Lcom/pinguo/album/views/utils/ViewScrollerHelper;
.super Ljava/lang/Object;
.source "ViewScrollerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOverflingDistance:I

.field private mOverflingEnabled:Z

.field private mScroller:Landroid/widget/OverScroller;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->mOverflingDistance:I

    return-void
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public fling(III)V
    .registers 15

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->getPosition()I

    move-result v1

    iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    iget-boolean v3, p0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->mOverflingEnabled:Z

    if-eqz v3, :cond_18

    iget v9, p0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->mOverflingDistance:I

    :goto_d
    move v3, p1

    move v4, v2

    move v5, p2

    move v6, p3

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    return-void

    :cond_18
    move v9, v2

    goto :goto_d
.end method

.method public forceFinished()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    return-void
.end method

.method public getCurrVelocity()F
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method

.method public getPosition()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public setOverfling(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->mOverflingEnabled:Z

    return-void
.end method

.method public setPosition(I)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method

.method public startScroll(III)I
    .registers 12

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_25

    move v6, v1

    :goto_10
    add-int v0, v6, p1

    invoke-static {v0, p2, p3}, Lcom/pinguo/album/utils/Utils;->clamp(III)I

    move-result v7

    if-eq v7, v1, :cond_21

    iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    sub-int v3, v7, v1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    :cond_21
    add-int v0, v6, p1

    sub-int/2addr v0, v7

    return v0

    :cond_25
    iget-object v0, p0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v6

    goto :goto_10
.end method
