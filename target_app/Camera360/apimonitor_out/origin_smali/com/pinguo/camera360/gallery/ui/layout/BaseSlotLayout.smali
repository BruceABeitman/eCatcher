.class public abstract Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
.super Ljava/lang/Object;
.source "BaseSlotLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout$SlotPos;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseSlotLayout"


# instance fields
.field protected mCloumCount:I

.field protected mContentLength:I

.field protected mHeight:I

.field protected mScrollPosition:I

.field protected mSlotCount:I

.field protected mSlotGap:I

.field protected mSlotHeight:I

.field protected mSlotPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout$SlotPos;",
            ">;"
        }
    .end annotation
.end field

.field protected mSlotRenderer:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;

.field protected mSlotWidth:I

.field protected mSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

.field protected mVisibleSlotEnd:I

.field protected mVisibleSlotStart:I

.field protected mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public getGLCanvasHeight()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mHeight:I

    return v0
.end method

.method public getGLCanvasWidth()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mWidth:I

    return v0
.end method

.method public getGLContentLength()I
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mContentLength:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getScrollLimit()I
    .registers 4

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mContentLength:I

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mHeight:I

    sub-int v0, v1, v2

    if-gtz v0, :cond_9

    const/4 v0, 0x0

    :cond_9
    return v0
.end method

.method public getScrollPosition()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mScrollPosition:I

    return v0
.end method

.method public getSlotCount()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mSlotCount:I

    return v0
.end method

.method public getSlotHeight()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mSlotHeight:I

    return v0
.end method

.method public abstract getSlotIndexByPosition(FF)I
.end method

.method public getSlotPadding()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mSlotWidth:I

    return v0
.end method

.method public abstract getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method public getSlotSpec(Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;)Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    return-object v0
.end method

.method public getSlotWidth()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mSlotWidth:I

    return v0
.end method

.method public getVisibleSlotEnd()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mVisibleSlotEnd:I

    return v0
.end method

.method public getVisibleSlotStart()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mVisibleSlotStart:I

    return v0
.end method

.method protected abstract initLayoutParameters()V
.end method

.method public setScrollPosition(I)V
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mScrollPosition:I

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mScrollPosition:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->updateVisibleSlotRange()V

    goto :goto_4
.end method

.method public abstract setSize(II)V
.end method

.method public setSlotCount(I)Z
    .registers 6

    const/4 v3, 0x0

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mSlotCount:I

    if-ne p1, v0, :cond_6

    :goto_5
    return v3

    :cond_6
    const-string/jumbo v0, "BaseSlotLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "---------setSlotCount ,with slotCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mSlotCount:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->initLayoutParameters()V

    goto :goto_5
.end method

.method public setSlotRender(Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mSlotRenderer:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;

    return-void
.end method

.method public setSlotSpec(Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    return-void
.end method

.method protected setVisibleRange(II)V
    .registers 6

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mVisibleSlotStart:I

    if-ne p1, v0, :cond_9

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mVisibleSlotEnd:I

    if-ne p2, v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-ge p1, p2, :cond_1d

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mVisibleSlotStart:I

    iput p2, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mVisibleSlotEnd:I

    :goto_f
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mSlotRenderer:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mSlotRenderer:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mVisibleSlotStart:I

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mVisibleSlotEnd:I

    invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;->onVisibleSlotRangeChanged(II)V

    goto :goto_8

    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mVisibleSlotEnd:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->mVisibleSlotStart:I

    goto :goto_f
.end method

.method protected abstract updateVisibleSlotRange()V
.end method
