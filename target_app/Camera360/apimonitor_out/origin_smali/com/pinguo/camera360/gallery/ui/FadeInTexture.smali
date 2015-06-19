.class public Lcom/pinguo/camera360/gallery/ui/FadeInTexture;
.super Lcom/pinguo/camera360/gallery/ui/FadeTexture;
.source "FadeInTexture.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/ui/Texture;


# instance fields
.field private final mColor:I


# direct methods
.method public constructor <init>(ILcom/pinguo/camera360/gallery/ui/BasicTexture;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/gallery/ui/FadeTexture;-><init>(Lcom/pinguo/camera360/gallery/ui/BasicTexture;)V

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/FadeInTexture;->mColor:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V
    .registers 14

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/FadeInTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/FadeInTexture;->mTexture:Lcom/pinguo/camera360/gallery/ui/BasicTexture;

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/FadeInTexture;->mColor:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/FadeInTexture;->getRatio()F

    move-result v3

    move-object v0, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->drawMixed(Lcom/pinguo/camera360/gallery/ui/BasicTexture;IFIIII)V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/FadeInTexture;->mTexture:Lcom/pinguo/camera360/gallery/ui/BasicTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/BasicTexture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V

    goto :goto_16
.end method
