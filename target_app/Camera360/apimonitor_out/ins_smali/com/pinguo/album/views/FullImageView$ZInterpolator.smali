.class  Lcom/pinguo/album/views/FullImageView$ZInterpolator;
.super Ljava/lang/Object;
.source "FullImageView.java"
.field private focalLength:F
.method public constructor <init>(F)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/pinguo/album/views/FullImageView$ZInterpolator;->focalLength:F
return-void
.end method
.method public getInterpolation(F)F
.registers 6
const/high16 v3, 0x3f80
iget v0, p0, Lcom/pinguo/album/views/FullImageView$ZInterpolator;->focalLength:F
iget v1, p0, Lcom/pinguo/album/views/FullImageView$ZInterpolator;->focalLength:F
add-float/2addr v1, p1
div-float/2addr v0, v1
sub-float v0, v3, v0
iget v1, p0, Lcom/pinguo/album/views/FullImageView$ZInterpolator;->focalLength:F
iget v2, p0, Lcom/pinguo/album/views/FullImageView$ZInterpolator;->focalLength:F
add-float/2addr v2, v3
div-float/2addr v1, v2
sub-float v1, v3, v1
div-float/2addr v0, v1
return v0
.end method