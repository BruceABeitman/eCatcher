.class public Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;
.super Lcom/pinguo/camera360/shop/view/AbsIndicator;
.source "IdPhotoGuideIndicator.java"
.field private mCount:I
.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;
.field private mIndDrawable:Landroid/graphics/drawable/Drawable;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 7
const/4 v3, 0x0
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/shop/view/AbsIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/16 v0, 0x9
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->setGap(I)V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f02027a
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->mIndDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f020279
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->mIndDrawable:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->mIndDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->mIndDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v2
invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v2
invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
return-void
.end method
.method public clear()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->mIndDrawable:Landroid/graphics/drawable/Drawable;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method public getCount()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->mCount:I
return v0
.end method
.method public getHighlight()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public getIndicator()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->mIndDrawable:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public setCount(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->mCount:I
return-void
.end method