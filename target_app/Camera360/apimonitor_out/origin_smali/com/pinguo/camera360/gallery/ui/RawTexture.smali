.class public Lcom/pinguo/camera360/gallery/ui/RawTexture;
.super Lcom/pinguo/camera360/gallery/ui/BasicTexture;
.source "RawTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RawTexture"

.field private static final sCropRect:[F

.field private static final sTextureId:[I


# instance fields
.field private final mOpaque:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/pinguo/camera360/gallery/ui/RawTexture;->sTextureId:[I

    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/pinguo/camera360/gallery/ui/RawTexture;->sCropRect:[F

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 4

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;-><init>()V

    iput-boolean p3, p0, Lcom/pinguo/camera360/gallery/ui/RawTexture;->mOpaque:Z

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/RawTexture;->setSize(II)V

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

.method protected getTarget()I
    .registers 2

    const/16 v0, 0xde1

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

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/RawTexture;->mOpaque:Z

    return v0
.end method

.method protected onBind(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/RawTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const-string/jumbo v0, "RawTexture"

    const-string/jumbo v1, "lost the content due to context change"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected prepare(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
    .registers 13

    const/16 v3, 0x1908

    const v7, 0x46180400

    const/4 v10, 0x1

    const/16 v1, 0xde1

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v0

    sget-object v4, Lcom/pinguo/camera360/gallery/ui/RawTexture;->sCropRect:[F

    const/4 v5, 0x0

    aput v5, v4, v2

    sget-object v4, Lcom/pinguo/camera360/gallery/ui/RawTexture;->sCropRect:[F

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/RawTexture;->mHeight:I

    int-to-float v5, v5

    aput v5, v4, v10

    sget-object v4, Lcom/pinguo/camera360/gallery/ui/RawTexture;->sCropRect:[F

    const/4 v5, 0x2

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/RawTexture;->mWidth:I

    int-to-float v6, v6

    aput v6, v4, v5

    sget-object v4, Lcom/pinguo/camera360/gallery/ui/RawTexture;->sCropRect:[F

    const/4 v5, 0x3

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/RawTexture;->mHeight:I

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v4, v5

    sget-object v4, Lcom/pinguo/camera360/gallery/ui/RawTexture;->sTextureId:[I

    invoke-static {v10, v4, v2}, Lcom/pinguo/camera360/gallery/ui/GLId;->glGenTextures(I[II)V

    sget-object v4, Lcom/pinguo/camera360/gallery/ui/RawTexture;->sTextureId:[I

    aget v4, v4, v2

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    const v4, 0x8b9d

    sget-object v5, Lcom/pinguo/camera360/gallery/ui/RawTexture;->sCropRect:[F

    invoke-interface {v0, v1, v4, v5, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    const/16 v4, 0x2802

    const v5, 0x812f

    invoke-interface {v0, v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    const/16 v4, 0x2803

    const v5, 0x812f

    invoke-interface {v0, v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    const/16 v4, 0x2801

    invoke-interface {v0, v1, v4, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    const/16 v4, 0x2800

    invoke-interface {v0, v1, v4, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/RawTexture;->getTextureWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/RawTexture;->getTextureHeight()I

    move-result v5

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move v6, v2

    move v7, v3

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    sget-object v1, Lcom/pinguo/camera360/gallery/ui/RawTexture;->sTextureId:[I

    aget v1, v1, v2

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/RawTexture;->mId:I

    iput v10, p0, Lcom/pinguo/camera360/gallery/ui/RawTexture;->mState:I

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/ui/RawTexture;->setAssociatedCanvas(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V

    return-void
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
