.class public abstract Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;
.super Lcom/pinguo/camera360/gallery/anim/Animation;
.source "SlotView.java"
.field protected mProgress:F
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/anim/Animation;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;->mProgress:F
new-instance v0, Landroid/view/animation/DecelerateInterpolator;
const/high16 v1, 0x4080
invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
const/16 v0, 0x3e8
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;->setDuration(I)V
return-void
.end method
.method public abstract apply(Lcom/pinguo/camera360/gallery/ui/GLCanvas;ILandroid/graphics/Rect;)V
.end method
.method protected onCalculate(F)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;->mProgress:F
return-void
.end method