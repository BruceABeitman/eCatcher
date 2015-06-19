.class public Lcom/pinguo/camera360/gallery/ui/ExtTexture;
.super Lcom/pinguo/camera360/gallery/ui/BasicTexture;
.source "ExtTexture.java"


# static fields
.field private static sCropRect:[F

.field private static sTextureId:[I


# instance fields
.field private mTarget:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->sTextureId:[I

    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->sCropRect:[F

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;-><init>()V

    const/4 v0, 0x1

    sget-object v1, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->sTextureId:[I

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/GLId;->glGenTextures(I[II)V

    sget-object v0, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->sTextureId:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->mId:I

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->mTarget:I

    return-void
.end method

.method private uploadToCanvas(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
    .registers 12

    const v9, 0x812f

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x46180400

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->getHeight()I

    move-result v1

    sget-object v3, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->sCropRect:[F

    const/4 v4, 0x0

    aput v4, v3, v7

    sget-object v3, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->sCropRect:[F

    int-to-float v4, v1

    aput v4, v3, v8

    sget-object v3, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->sCropRect:[F

    const/4 v4, 0x2

    int-to-float v5, v2

    aput v5, v3, v4

    sget-object v3, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->sCropRect:[F

    const/4 v4, 0x3

    neg-int v5, v1

    int-to-float v5, v5

    aput v5, v3, v4

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->mTarget:I

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->mId:I

    invoke-interface {v0, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->mTarget:I

    const v4, 0x8b9d

    sget-object v5, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->sCropRect:[F

    invoke-interface {v0, v3, v4, v5, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->mTarget:I

    const/16 v4, 0x2802

    invoke-interface {v0, v3, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->mTarget:I

    const/16 v4, 0x2803

    invoke-interface {v0, v3, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->mTarget:I

    const/16 v4, 0x2801

    invoke-interface {v0, v3, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->mTarget:I

    const/16 v4, 0x2800

    invoke-interface {v0, v3, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->setAssociatedCanvas(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V

    iput v8, p0, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->mState:I

    return-void
.end method


# virtual methods
.method public bridge synthetic draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V

    return-void
.end method

.method public bridge synthetic draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V

    return-void
.end method

.method public bridge synthetic getHeight()I
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getId()I

    move-result v0

    return v0
.end method

.method public getTarget()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->mTarget:I

    return v0
.end method

.method public bridge synthetic getTextureHeight()I
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getTextureHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureWidth()I
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getTextureWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasBorder()Z
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->hasBorder()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLoaded()Z
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public isOpaque()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected onBind(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/ExtTexture;->uploadToCanvas(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic recycle()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->recycle()V

    return-void
.end method

.method public yield()V
    .registers 1

    return-void
.end method
