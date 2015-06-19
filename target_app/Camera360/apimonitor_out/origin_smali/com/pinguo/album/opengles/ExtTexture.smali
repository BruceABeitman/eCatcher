.class public Lcom/pinguo/album/opengles/ExtTexture;
.super Lcom/pinguo/album/opengles/BasicTexture;
.source "ExtTexture.java"


# instance fields
.field private mTarget:I


# direct methods
.method public constructor <init>(Lcom/pinguo/album/opengles/GLESCanvas;I)V
    .registers 5

    invoke-direct {p0}, Lcom/pinguo/album/opengles/BasicTexture;-><init>()V

    invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->getGLId()Lcom/pinguo/album/opengles/GLId;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/album/opengles/GLId;->generateTexture()I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/opengles/ExtTexture;->mId:I

    iput p2, p0, Lcom/pinguo/album/opengles/ExtTexture;->mTarget:I

    return-void
.end method

.method private uploadToCanvas(Lcom/pinguo/album/opengles/GLESCanvas;)V
    .registers 3

    invoke-interface {p1, p0}, Lcom/pinguo/album/opengles/GLESCanvas;->setTextureParameters(Lcom/pinguo/album/opengles/BasicTexture;)V

    invoke-virtual {p0, p1}, Lcom/pinguo/album/opengles/ExtTexture;->setAssociatedCanvas(Lcom/pinguo/album/opengles/GLESCanvas;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/pinguo/album/opengles/ExtTexture;->mState:I

    return-void
.end method


# virtual methods
.method public getTarget()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/opengles/ExtTexture;->mTarget:I

    return v0
.end method

.method public isOpaque()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected onBind(Lcom/pinguo/album/opengles/GLESCanvas;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/ExtTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Lcom/pinguo/album/opengles/ExtTexture;->uploadToCanvas(Lcom/pinguo/album/opengles/GLESCanvas;)V

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public yield()V
    .registers 1

    return-void
.end method
