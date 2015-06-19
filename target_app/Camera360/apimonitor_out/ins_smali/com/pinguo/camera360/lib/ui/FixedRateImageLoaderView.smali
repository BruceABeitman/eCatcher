.class public Lcom/pinguo/camera360/lib/ui/FixedRateImageLoaderView;
.super Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
.source "FixedRateImageLoaderView.java"
.field private mRate:F
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/lib/ui/FixedRateImageLoaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/high16 v0, 0x3f80
iput v0, p0, Lcom/pinguo/camera360/lib/ui/FixedRateImageLoaderView;->mRate:F
return-void
.end method
.method protected onMeasure(II)V
.registers 7
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
int-to-float v2, v1
iget v3, p0, Lcom/pinguo/camera360/lib/ui/FixedRateImageLoaderView;->mRate:F
div-float/2addr v2, v3
float-to-int v0, v2
invoke-virtual {p0, v1, v0}, Lcom/pinguo/camera360/lib/ui/FixedRateImageLoaderView;->setMeasuredDimension(II)V
return-void
.end method
.method public setRate(F)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/lib/ui/FixedRateImageLoaderView;->mRate:F
return-void
.end method