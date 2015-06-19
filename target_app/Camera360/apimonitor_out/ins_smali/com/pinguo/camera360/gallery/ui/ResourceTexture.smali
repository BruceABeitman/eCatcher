.class public Lcom/pinguo/camera360/gallery/ui/ResourceTexture;
.super Lcom/pinguo/camera360/gallery/ui/UploadedTexture;
.source "ResourceTexture.java"
.field protected final mContext:Landroid/content/Context;
.field protected final mResId:I
.method public constructor <init>(Landroid/content/Context;I)V
.registers 4
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;-><init>()V
invoke-static {p1}, Lcom/pinguo/camera360/gallery/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->mContext:Landroid/content/Context;
iput p2, p0, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->mResId:I
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->setOpaque(Z)V
return-void
.end method
.method public bridge synthetic draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
.registers 4
invoke-super {p0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
return-void
.end method
.method public bridge synthetic draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V
.registers 6
invoke-super/range {p0 .. p5}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V
return-void
.end method
.method public bridge synthetic getHeight()I
.registers 2
invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->getHeight()I
move-result v0
return v0
.end method
.method public bridge synthetic getId()I
.registers 2
invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->getId()I
move-result v0
return v0
.end method
.method public bridge synthetic getTextureHeight()I
.registers 2
invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->getTextureHeight()I
move-result v0
return v0
.end method
.method public bridge synthetic getTextureWidth()I
.registers 2
invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->getTextureWidth()I
move-result v0
return v0
.end method
.method public bridge synthetic getWidth()I
.registers 2
invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->getWidth()I
move-result v0
return v0
.end method
.method public bridge synthetic hasBorder()Z
.registers 2
invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->hasBorder()Z
move-result v0
return v0
.end method
.method public bridge synthetic isContentValid()Z
.registers 2
invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->isContentValid()Z
move-result v0
return v0
.end method
.method public bridge synthetic isLoaded()Z
.registers 2
invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->isLoaded()Z
move-result v0
return v0
.end method
.method public bridge synthetic isOpaque()Z
.registers 2
invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->isOpaque()Z
move-result v0
return v0
.end method
.method public bridge synthetic isUploading()Z
.registers 2
invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->isUploading()Z
move-result v0
return v0
.end method
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->inFinalizer()Z
move-result v0
if-nez v0, :cond_9
invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
:cond_9
return-void
.end method
.method protected onGetBitmap()Landroid/graphics/Bitmap;
.registers 4
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
iget v2, p0, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->mResId:I
invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
return-object v1
.end method
.method public bridge synthetic recycle()V
.registers 1
invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->recycle()V
return-void
.end method
.method public bridge synthetic setOpaque(Z)V
.registers 2
invoke-super {p0, p1}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->setOpaque(Z)V
return-void
.end method
.method public bridge synthetic updateContent(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
.registers 2
invoke-super {p0, p1}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->updateContent(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
return-void
.end method
.method public bridge synthetic yield()V
.registers 1
invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->yield()V
return-void
.end method