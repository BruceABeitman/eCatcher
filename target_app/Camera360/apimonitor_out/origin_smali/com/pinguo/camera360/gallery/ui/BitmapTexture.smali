.class public Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
.super Lcom/pinguo/camera360/gallery/ui/UploadedTexture;
.source "BitmapTexture.java"


# instance fields
.field protected mContentBitmap:Landroid/graphics/Bitmap;

.field protected mIsRecycled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;-><init>(Z)V

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;->mIsRecycled:Z

    return-void

    :cond_15
    move v0, v1

    goto :goto_d
.end method


# virtual methods
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

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
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
    .registers 2

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public recycle()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;->mIsRecycled:Z

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->recycle()V

    return-void
.end method

.method public bridge synthetic setOpaque(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->setOpaque(Z)V

    return-void
.end method

.method public updateContent(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
    .registers 3

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;->mIsRecycled:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-super {p0, p1}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->updateContent(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V

    goto :goto_4
.end method

.method public bridge synthetic yield()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->yield()V

    return-void
.end method
