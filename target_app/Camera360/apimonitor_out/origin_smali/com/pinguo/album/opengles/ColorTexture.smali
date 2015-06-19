.class public Lcom/pinguo/album/opengles/ColorTexture;
.super Ljava/lang/Object;
.source "ColorTexture.java"

# interfaces
.implements Lcom/pinguo/album/opengles/Texture;


# instance fields
.field private final mColor:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pinguo/album/opengles/ColorTexture;->mColor:I

    iput v0, p0, Lcom/pinguo/album/opengles/ColorTexture;->mWidth:I

    iput v0, p0, Lcom/pinguo/album/opengles/ColorTexture;->mHeight:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/pinguo/album/opengles/GLESCanvas;II)V
    .registers 10

    iget v4, p0, Lcom/pinguo/album/opengles/ColorTexture;->mWidth:I

    iget v5, p0, Lcom/pinguo/album/opengles/ColorTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/album/opengles/ColorTexture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;IIII)V

    return-void
.end method

.method public draw(Lcom/pinguo/album/opengles/GLESCanvas;IIII)V
    .registers 12

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    iget v5, p0, Lcom/pinguo/album/opengles/ColorTexture;->mColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/pinguo/album/opengles/GLESCanvas;->fillRect(FFFFI)V

    return-void
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/opengles/ColorTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/opengles/ColorTexture;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .registers 2

    iget v0, p0, Lcom/pinguo/album/opengles/ColorTexture;->mColor:I

    invoke-static {v0}, Lcom/pinguo/album/utils/Utils;->isOpaque(I)Z

    move-result v0

    return v0
.end method

.method public setSize(II)V
    .registers 3

    iput p1, p0, Lcom/pinguo/album/opengles/ColorTexture;->mWidth:I

    iput p2, p0, Lcom/pinguo/album/opengles/ColorTexture;->mHeight:I

    return-void
.end method
