.class public Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;
.super Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
.source "ContractSlotLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContractSlotLayout"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;-><init>()V

    return-void
.end method


# virtual methods
.method public getSlotIndexByPosition(FF)I
    .registers 11

    const/4 v5, -0x1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/lit8 v0, v6, 0x0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mScrollPosition:I

    add-int v1, v6, v7

    if-ltz v0, :cond_13

    if-gez v1, :cond_14

    :cond_13
    :goto_13
    return v5

    :cond_14
    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotWidth:I

    iget v7, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v2, v0, v6

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotHeight:I

    iget v7, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v4, v1, v6

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mCloumCount:I

    if-ge v2, v6, :cond_13

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotWidth:I

    iget v7, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotGap:I

    add-int/2addr v6, v7

    rem-int v6, v0, v6

    iget v7, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotWidth:I

    if-ge v6, v7, :cond_13

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotHeight:I

    iget v7, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotGap:I

    add-int/2addr v6, v7

    rem-int v6, v1, v6

    iget v7, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotHeight:I

    if-ge v6, v7, :cond_13

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mCloumCount:I

    mul-int/2addr v6, v4

    add-int v3, v6, v2

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotCount:I

    if-lt v3, v6, :cond_46

    move v3, v5

    :cond_46
    move v5, v3

    goto :goto_13
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 9

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mCloumCount:I

    div-int v1, p1, v4

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mCloumCount:I

    mul-int/2addr v4, v1

    sub-int v0, p1, v4

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotWidth:I

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotGap:I

    add-int/2addr v4, v5

    mul-int v2, v0, v4

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotHeight:I

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotGap:I

    add-int/2addr v4, v5

    mul-int v3, v1, v4

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotWidth:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotHeight:I

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    return-object p2
.end method

.method protected initLayoutParameters()V
    .registers 7

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mWidth:I

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mHeight:I

    if-le v2, v3, :cond_5b

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    iget v0, v2, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->columsLand:I

    :goto_a
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    iget v2, v2, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->slotGap:I

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotGap:I

    const/4 v2, 0x1

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mWidth:I

    add-int/lit8 v4, v0, -0x1

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotGap:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    div-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotWidth:I

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotWidth:I

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    iget v3, v3, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->tagHeight:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotHeight:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mCloumCount:I

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotRenderer:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotRenderer:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotWidth:I

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotHeight:I

    invoke-interface {v2, v3, v4}, Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    :cond_38
    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotCount:I

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mCloumCount:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mCloumCount:I

    div-int v1, v2, v3

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotHeight:I

    mul-int/2addr v2, v1

    add-int/lit8 v3, v1, -0x1

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mContentLength:I

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mContentLength:I

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    iget v3, v3, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->rooter_bar_height:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mContentLength:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->updateVisibleSlotRange()V

    return-void

    :cond_5b
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    iget v0, v2, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->columsPort:I

    goto :goto_a
.end method

.method public setSize(II)V
    .registers 3

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mWidth:I

    iput p2, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mHeight:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->initLayoutParameters()V

    return-void
.end method

.method protected updateVisibleSlotRange()V
    .registers 9

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mScrollPosition:I

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotHeight:I

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotGap:I

    add-int/2addr v5, v6

    div-int v4, v2, v5

    const/4 v5, 0x0

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mCloumCount:I

    mul-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mHeight:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotGap:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotHeight:I

    iget v7, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v1, v5, v6

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mSlotCount:I

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->mCloumCount:I

    mul-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;->setVisibleRange(II)V

    return-void
.end method
