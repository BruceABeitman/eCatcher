.class public Lcom/pinguo/album/opengles/RawTexture;
.super Lcom/pinguo/album/opengles/BasicTexture;
.source "RawTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RawTexture"


# instance fields
.field private mIsFlipped:Z

.field private final mOpaque:Z


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4

    invoke-direct {p0}, Lcom/pinguo/album/opengles/BasicTexture;-><init>()V

    iput-boolean p3, p0, Lcom/pinguo/album/opengles/RawTexture;->mOpaque:Z

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/opengles/RawTexture;->setSize(II)V

    return-void
.end method


# virtual methods
.method protected getTarget()I
    .registers 2

    const/16 v0, 0xde1

    return v0
.end method

.method public isFlippedVertically()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/album/opengles/RawTexture;->mIsFlipped:Z

    return v0
.end method

.method public isOpaque()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/album/opengles/RawTexture;->mOpaque:Z

    return v0
.end method

.method protected onBind(Lcom/pinguo/album/opengles/GLESCanvas;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/RawTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const-string/jumbo v0, "RawTexture"

    const-string/jumbo v1, "lost the content due to context change"

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected prepare(Lcom/pinguo/album/opengles/GLESCanvas;)V
    .registers 5

    invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->getGLId()Lcom/pinguo/album/opengles/GLId;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/album/opengles/GLId;->generateTexture()I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/opengles/RawTexture;->mId:I

    const/16 v1, 0x1908

    const/16 v2, 0x1401

    invoke-interface {p1, p0, v1, v2}, Lcom/pinguo/album/opengles/GLESCanvas;->initializeTextureSize(Lcom/pinguo/album/opengles/BasicTexture;II)V

    invoke-interface {p1, p0}, Lcom/pinguo/album/opengles/GLESCanvas;->setTextureParameters(Lcom/pinguo/album/opengles/BasicTexture;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/pinguo/album/opengles/RawTexture;->mState:I

    invoke-virtual {p0, p1}, Lcom/pinguo/album/opengles/RawTexture;->setAssociatedCanvas(Lcom/pinguo/album/opengles/GLESCanvas;)V

    return-void
.end method

.method public setIsFlippedVertically(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/album/opengles/RawTexture;->mIsFlipped:Z

    return-void
.end method

.method public yield()V
    .registers 1

    return-void
.end method
