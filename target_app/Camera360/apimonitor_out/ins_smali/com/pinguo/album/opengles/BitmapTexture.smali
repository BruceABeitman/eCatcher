.class public Lcom/pinguo/album/opengles/BitmapTexture;
.super Lcom/pinguo/album/opengles/UploadedTexture;
.source "BitmapTexture.java"
.field protected mContentBitmap:Landroid/graphics/Bitmap;
.field protected mIsRecycled:Z
.method public constructor <init>(Landroid/graphics/Bitmap;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/album/opengles/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V
return-void
.end method
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0, p2}, Lcom/pinguo/album/opengles/UploadedTexture;-><init>(Z)V
if-eqz p1, :cond_15
invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v0
if-nez v0, :cond_15
const/4 v0, 0x1
:goto_d
invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V
iput-object p1, p0, Lcom/pinguo/album/opengles/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;
iput-boolean v1, p0, Lcom/pinguo/album/opengles/BitmapTexture;->mIsRecycled:Z
return-void
:cond_15
move v0, v1
goto :goto_d
.end method
.method public getBitmap()Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/opengles/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
.registers 2
return-void
.end method
.method protected onGetBitmap()Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/opengles/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method public recycle()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/opengles/BitmapTexture;->mIsRecycled:Z
invoke-super {p0}, Lcom/pinguo/album/opengles/UploadedTexture;->recycle()V
return-void
.end method
.method public updateContent(Lcom/pinguo/album/opengles/GLESCanvas;)V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/album/opengles/BitmapTexture;->mIsRecycled:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
invoke-super {p0, p1}, Lcom/pinguo/album/opengles/UploadedTexture;->updateContent(Lcom/pinguo/album/opengles/GLESCanvas;)V
goto :goto_4
.end method