.class public Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
.super Ljava/lang/Object;
.source "NativeImage.java"


# instance fields
.field private mBufferId:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->mBufferId:I

    iput p2, p0, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->mWidth:I

    iput p3, p0, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->mHeight:I

    return-void
.end method


# virtual methods
.method public assertDimensions(II)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_16

    move v0, v1

    :goto_9
    invoke-static {v0}, Lcom/instagram/common/i/a/f;->a(Z)V

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_18

    :goto_12
    invoke-static {v1}, Lcom/instagram/common/i/a/f;->a(Z)V

    return-void

    :cond_16
    move v0, v2

    goto :goto_9

    :cond_18
    move v1, v2

    goto :goto_12
.end method

.method public getBufferId()I
    .registers 2

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->mBufferId:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->mWidth:I

    return v0
.end method
