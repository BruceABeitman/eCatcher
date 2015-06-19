.class public Lcom/pinguo/camera360/gallery/anim/AlphaAnimation;
.super Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;
.source "AlphaAnimation.java"
.field private mCurrentAlpha:F
.field private final mEndAlpha:F
.field private final mStartAlpha:F
.method public constructor <init>(FF)V
.registers 3
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;-><init>()V
iput p1, p0, Lcom/pinguo/camera360/gallery/anim/AlphaAnimation;->mStartAlpha:F
iput p2, p0, Lcom/pinguo/camera360/gallery/anim/AlphaAnimation;->mEndAlpha:F
iput p1, p0, Lcom/pinguo/camera360/gallery/anim/AlphaAnimation;->mCurrentAlpha:F
return-void
.end method
.method public apply(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
.registers 3
iget v0, p0, Lcom/pinguo/camera360/gallery/anim/AlphaAnimation;->mCurrentAlpha:F
invoke-interface {p1, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->multiplyAlpha(F)V
return-void
.end method
.method public getCanvasSaveFlags()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected onCalculate(F)V
.registers 5
iget v0, p0, Lcom/pinguo/camera360/gallery/anim/AlphaAnimation;->mStartAlpha:F
iget v1, p0, Lcom/pinguo/camera360/gallery/anim/AlphaAnimation;->mEndAlpha:F
iget v2, p0, Lcom/pinguo/camera360/gallery/anim/AlphaAnimation;->mStartAlpha:F
sub-float/2addr v1, v2
mul-float/2addr v1, p1
add-float/2addr v0, v1
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(FFF)F
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/anim/AlphaAnimation;->mCurrentAlpha:F
return-void
.end method