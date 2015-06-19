.class public Lcom/pinguo/camera360/camera/view/ThumbnailView;
.super Landroid/widget/FrameLayout;
.source "ThumbnailView.java"
.field private static final TRAN_WHITE:I = 0x1affffff
.field private mBackground:Lcom/pinguo/camera360/lib/ui/RotateImageView;
.field private mForeGround:Lcom/pinguo/camera360/lib/ui/RotateImageView;
.field private mLastBitmap:Landroid/graphics/Bitmap;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/camera/view/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v0, 0x1
invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-virtual {p0, v0, v0, v0, v0}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setPadding(IIII)V
const/4 v0, -0x1
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setBackgroundColor(I)V
new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mBackground:Lcom/pinguo/camera360/lib/ui/RotateImageView;
new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mForeGround:Lcom/pinguo/camera360/lib/ui/RotateImageView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mBackground:Lcom/pinguo/camera360/lib/ui/RotateImageView;
sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mForeGround:Lcom/pinguo/camera360/lib/ui/RotateImageView;
sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mBackground:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mForeGround:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->addView(Landroid/view/View;)V
return-void
.end method
.method public getBackgroundView()Lcom/pinguo/camera360/lib/ui/RotateImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mBackground:Lcom/pinguo/camera360/lib/ui/RotateImageView;
return-object v0
.end method
.method public getForegroundView()Lcom/pinguo/camera360/lib/ui/RotateImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mForeGround:Lcom/pinguo/camera360/lib/ui/RotateImageView;
return-object v0
.end method
.method public setOrientation(IZ)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mBackground:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mForeGround:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V
return-void
.end method
.method public setThumb(Landroid/graphics/Bitmap;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mLastBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mLastBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v0
if-nez v0, :cond_11
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setThumb(Landroid/graphics/Bitmap;Z)V
:goto_10
return-void
:cond_11
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setThumb(Landroid/graphics/Bitmap;Z)V
goto :goto_10
.end method
.method public setThumb(Landroid/graphics/Bitmap;Z)V
.registers 5
const/4 v1, 0x0
if-eqz p1, :cond_2d
invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v0
if-nez v0, :cond_2d
const/4 v0, -0x1
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mLastBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mBackground:Lcom/pinguo/camera360/lib/ui/RotateImageView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mLastBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_18
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mForeGround:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
if-eqz p2, :cond_24
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mForeGround:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-static {v0}, Lcom/pinguo/camera360/ui/AnimUtils;->moveUpToCenter(Landroid/view/View;)V
:cond_24
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mLastBitmap:Landroid/graphics/Bitmap;
:goto_26
return-void
:cond_27
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mBackground:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_18
:cond_2d
const v0, 0x1affffff
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mForeGround:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mBackground:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/ThumbnailView;->mLastBitmap:Landroid/graphics/Bitmap;
goto :goto_26
.end method