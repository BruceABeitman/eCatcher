.class public Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;
.super Ljava/lang/Object;
.source "ScrollerHelper.java"
.field private mOverflingDistance:I
.field private mOverflingEnabled:Z
.field private mScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->mScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->mOverflingDistance:I
return-void
.end method
.method public advanceAnimation(J)Z
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->mScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->computeScrollOffset()Z
move-result v0
return v0
.end method
.method public fling(III)V
.registers 15
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->getPosition()I
move-result v2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->mScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->mOverflingEnabled:Z
if-eqz v3, :cond_18
iget v9, p0, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->mOverflingDistance:I
:goto_d
move v3, v1
move v4, p1
move v5, v1
move v6, v1
move v7, p2
move v8, p3
move v10, v1
invoke-virtual/range {v0 .. v10}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->fling(IIIIIIIIII)V
return-void
:cond_18
move v9, v1
goto :goto_d
.end method
.method public forceFinished()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->mScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->forceFinished(Z)V
return-void
.end method
.method public getCurrVelocity()F
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->mScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->getCurrVelocity()F
move-result v0
return v0
.end method
.method public getPosition()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->mScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->getCurrY()I
move-result v0
return v0
.end method
.method public isFinished()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->mScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->isFinished()Z
move-result v0
return v0
.end method
.method public setOverfling(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->mOverflingEnabled:Z
return-void
.end method
.method public setPosition(I)V
.registers 8
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->mScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
move v2, p1
move v3, v1
move v4, v1
move v5, v1
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->startScroll(IIIII)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->mScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->abortAnimation()V
return-void
.end method
.method public startScroll(III)I
.registers 12
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->mScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->getCurrY()I
move-result v2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->mScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->isFinished()Z
move-result v0
if-eqz v0, :cond_25
move v6, v2
:goto_10
add-int v0, v6, p1
invoke-static {v0, p2, p3}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(III)I
move-result v7
if-eq v7, v2, :cond_21
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->mScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
sub-int v4, v7, v2
move v3, v1
move v5, v1
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->startScroll(IIIII)V
:cond_21
add-int v0, v6, p1
sub-int/2addr v0, v7
return v0
:cond_25
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->mScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->getFinalY()I
move-result v6
goto :goto_10
.end method