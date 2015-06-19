.class abstract Lcom/pinguo/album/opengles/CanvasTexture;
.super Lcom/pinguo/album/opengles/UploadedTexture;
.source "CanvasTexture.java"
.field protected mCanvas:Landroid/graphics/Canvas;
.field private final mConfig:Landroid/graphics/Bitmap$Config;
.method public constructor <init>(II)V
.registers 4
invoke-direct {p0}, Lcom/pinguo/album/opengles/UploadedTexture;-><init>()V
sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v0, p0, Lcom/pinguo/album/opengles/CanvasTexture;->mConfig:Landroid/graphics/Bitmap$Config;
invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/opengles/CanvasTexture;->setSize(II)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/album/opengles/CanvasTexture;->setOpaque(Z)V
return-void
.end method
.method protected abstract onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
.end method
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
.registers 3
invoke-static {}, Lcom/pinguo/album/opengles/CanvasTexture;->inFinalizer()Z
move-result v0
if-nez v0, :cond_9
invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
:cond_9
return-void
.end method
.method protected onGetBitmap()Landroid/graphics/Bitmap;
.registers 5
iget v1, p0, Lcom/pinguo/album/opengles/CanvasTexture;->mWidth:I
iget v2, p0, Lcom/pinguo/album/opengles/CanvasTexture;->mHeight:I
iget-object v3, p0, Lcom/pinguo/album/opengles/CanvasTexture;->mConfig:Landroid/graphics/Bitmap$Config;
invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
new-instance v1, Landroid/graphics/Canvas;
invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
iput-object v1, p0, Lcom/pinguo/album/opengles/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;
iget-object v1, p0, Lcom/pinguo/album/opengles/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;
invoke-virtual {p0, v1, v0}, Lcom/pinguo/album/opengles/CanvasTexture;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
return-object v0
.end method