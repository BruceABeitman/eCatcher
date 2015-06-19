.class public Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;
.super Lcom/pinguo/camera360/gallery/ui/ResourceTexture;
.source "NinePatchTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache;
    }
.end annotation


# instance fields
.field private mChunk:Lcom/pinguo/camera360/gallery/ui/NinePatchChunk;

.field private mInstanceCache:Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache",
            "<",
            "Lcom/pinguo/camera360/gallery/ui/NinePatchInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache;-><init>(Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mInstanceCache:Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache;

    return-void
.end method

.method private findInstance(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)Lcom/pinguo/camera360/gallery/ui/NinePatchInstance;
    .registers 8

    move v1, p2

    shl-int/lit8 v3, v1, 0x10

    or-int v1, v3, p3

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mInstanceCache:Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache;

    invoke-virtual {v3, v1}, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/ui/NinePatchInstance;

    if-nez v0, :cond_21

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/NinePatchInstance;

    invoke-direct {v0, p0, p2, p3}, Lcom/pinguo/camera360/gallery/ui/NinePatchInstance;-><init>(Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;II)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mInstanceCache:Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache;

    invoke-virtual {v3, v1, v0}, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/gallery/ui/NinePatchInstance;

    if-eqz v2, :cond_21

    invoke-virtual {v2, p1}, Lcom/pinguo/camera360/gallery/ui/NinePatchInstance;->recycle(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V

    :cond_21
    return-object v0
.end method


# virtual methods
.method public bridge synthetic draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V

    return-void
.end method

.method public draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V
    .registers 7

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mInstanceCache:Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache;->clear()V

    :cond_b
    if-eqz p4, :cond_16

    if-eqz p5, :cond_16

    invoke-direct {p0, p1, p4, p5}, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->findInstance(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)Lcom/pinguo/camera360/gallery/ui/NinePatchInstance;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/pinguo/camera360/gallery/ui/NinePatchInstance;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;II)V

    :cond_16
    return-void
.end method

.method public bridge synthetic getHeight()I
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->getId()I

    move-result v0

    return v0
.end method

.method public getNinePatchChunk()Lcom/pinguo/camera360/gallery/ui/NinePatchChunk;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mChunk:Lcom/pinguo/camera360/gallery/ui/NinePatchChunk;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    :cond_7
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mChunk:Lcom/pinguo/camera360/gallery/ui/NinePatchChunk;

    return-object v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mChunk:Lcom/pinguo/camera360/gallery/ui/NinePatchChunk;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    :cond_7
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mChunk:Lcom/pinguo/camera360/gallery/ui/NinePatchChunk;

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/ui/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public bridge synthetic getTextureHeight()I
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->getTextureHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureWidth()I
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->getTextureWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasBorder()Z
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->hasBorder()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isContentValid()Z
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->isContentValid()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLoaded()Z
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpaque()Z
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isUploading()Z
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->isUploading()Z

    move-result v0

    return v0
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .registers 7

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    :cond_6
    return-object v0

    :cond_7
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mResId:I

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->setSize(II)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    if-nez v1, :cond_4e

    const/4 v3, 0x0

    :goto_30
    iput-object v3, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mChunk:Lcom/pinguo/camera360/gallery/ui/NinePatchChunk;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mChunk:Lcom/pinguo/camera360/gallery/ui/NinePatchChunk;

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "invalid nine-patch image: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mResId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4e
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/NinePatchChunk;->deserialize([B)Lcom/pinguo/camera360/gallery/ui/NinePatchChunk;

    move-result-object v3

    goto :goto_30
.end method

.method public recycle()V
    .registers 6

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->recycle()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mCanvasRef:Lcom/pinguo/camera360/gallery/ui/GLCanvas;

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mInstanceCache:Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache;

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_f
    if-lt v1, v3, :cond_17

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mInstanceCache:Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache;

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache;->clear()V

    goto :goto_7

    :cond_17
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;->mInstanceCache:Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache;

    invoke-virtual {v4, v1}, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture$SmallCache;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/gallery/ui/NinePatchInstance;

    invoke-virtual {v2, v0}, Lcom/pinguo/camera360/gallery/ui/NinePatchInstance;->recycle(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public bridge synthetic setOpaque(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->setOpaque(Z)V

    return-void
.end method

.method public bridge synthetic updateContent(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->updateContent(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V

    return-void
.end method

.method public bridge synthetic yield()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;->yield()V

    return-void
.end method
