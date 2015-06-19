.class public Lcom/pinguo/camera360/gallery/ui/FadeOutTexture;
.super Lcom/pinguo/camera360/gallery/ui/FadeTexture;
.source "FadeOutTexture.java"


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/ui/BasicTexture;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/FadeTexture;-><init>(Lcom/pinguo/camera360/gallery/ui/BasicTexture;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V
    .registers 12

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/FadeOutTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->save(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/FadeOutTexture;->getRatio()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->setAlpha(F)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/FadeOutTexture;->mTexture:Lcom/pinguo/camera360/gallery/ui/BasicTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V

    :cond_1e
    return-void
.end method
