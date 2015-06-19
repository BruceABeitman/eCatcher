.class public Lcom/pinguo/album/animations/AlphaAnim;
.super Lcom/pinguo/album/animations/CanvasAnim;
.source "AlphaAnim.java"
.field private mCurrentAlpha:F
.field private final mEndAlpha:F
.field private final mStartAlpha:F
.method public constructor <init>(FF)V
.registers 3
invoke-direct {p0}, Lcom/pinguo/album/animations/CanvasAnim;-><init>()V
iput p1, p0, Lcom/pinguo/album/animations/AlphaAnim;->mStartAlpha:F
iput p2, p0, Lcom/pinguo/album/animations/AlphaAnim;->mEndAlpha:F
iput p1, p0, Lcom/pinguo/album/animations/AlphaAnim;->mCurrentAlpha:F
return-void
.end method
.method public apply(Lcom/pinguo/album/opengles/GLESCanvas;)V
.registers 3
iget v0, p0, Lcom/pinguo/album/animations/AlphaAnim;->mCurrentAlpha:F
invoke-interface {p1, v0}, Lcom/pinguo/album/opengles/GLESCanvas;->multiplyAlpha(F)V
return-void
.end method
.method public getCanvasSaveFlags()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected onCalculate(F)V
.registers 5
iget v0, p0, Lcom/pinguo/album/animations/AlphaAnim;->mStartAlpha:F
iget v1, p0, Lcom/pinguo/album/animations/AlphaAnim;->mEndAlpha:F
iget v2, p0, Lcom/pinguo/album/animations/AlphaAnim;->mStartAlpha:F
sub-float/2addr v1, v2
mul-float/2addr v1, p1
add-float/2addr v0, v1
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-static {v0, v1, v2}, Lcom/pinguo/album/utils/Utils;->clamp(FFF)F
move-result v0
iput v0, p0, Lcom/pinguo/album/animations/AlphaAnim;->mCurrentAlpha:F
return-void
.end method