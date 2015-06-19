.class public Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;
.super Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
.source "CorpTopBottomImageLoaderView.java"
.field private mCorpType:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$CorpType;
.field private mFitType:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$FitType;
.field private mRate:F
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/high16 v0, 0x3f80
iput v0, p0, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->mRate:F
sget-object v0, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$CorpType;->TOP_CROP:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$CorpType;
iput-object v0, p0, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->mCorpType:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$CorpType;
sget-object v0, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$FitType;->TOP_FIT:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$FitType;
iput-object v0, p0, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->mFitType:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$FitType;
return-void
.end method
.method public setFillType(Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$CorpType;Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$FitType;)V
.registers 4
sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
iput-object p1, p0, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->mCorpType:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$CorpType;
iput-object p2, p0, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->mFitType:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$FitType;
return-void
.end method
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
.registers 13
const/high16 v10, 0x3f00
const/4 v9, 0x0
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v1
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->getMeasuredWidth()I
move-result v6
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->getMeasuredHeight()I
move-result v5
const/4 v2, 0x0
int-to-float v7, v6
int-to-float v8, v1
div-float v4, v7, v8
int-to-float v7, v5
int-to-float v8, v0
mul-float/2addr v8, v4
sub-float v2, v7, v8
new-instance v3, Landroid/graphics/Matrix;
invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V
invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V
cmpl-float v7, v2, v9
if-lez v7, :cond_3d
iget-object v7, p0, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->mFitType:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$FitType;
sget-object v8, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$FitType;->BOTTOM_FIT:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$FitType;
if-ne v7, v8, :cond_36
add-float v7, v2, v10
float-to-int v7, v7
int-to-float v7, v7
invoke-virtual {v3, v9, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z
:cond_36
:goto_36
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->setImageMatrix(Landroid/graphics/Matrix;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageBitmap(Landroid/graphics/Bitmap;)V
return-void
:cond_3d
iget-object v7, p0, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->mCorpType:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$CorpType;
sget-object v8, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$CorpType;->TOP_CROP:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$CorpType;
if-ne v7, v8, :cond_36
add-float v7, v2, v10
float-to-int v7, v7
int-to-float v7, v7
invoke-virtual {v3, v9, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z
goto :goto_36
.end method
.method public setRate(F)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->mRate:F
return-void
.end method