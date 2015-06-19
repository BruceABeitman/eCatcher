.class public Lcom/facebook/katana/RotateBitmap;
.super Ljava/lang/Object;
.source "RotateBitmap.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RotateBitmap"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mRotation:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/katana/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/RotateBitmap;->mRotation:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/katana/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    rem-int/lit16 v0, p2, 0x168

    iput v0, p0, Lcom/facebook/katana/RotateBitmap;->mRotation:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/katana/RotateBitmap;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/katana/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/facebook/katana/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_c
.end method

.method public getRotateMatrix()Landroid/graphics/Matrix;
    .registers 6

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget v3, p0, Lcom/facebook/katana/RotateBitmap;->mRotation:I

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/facebook/katana/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    iget-object v3, p0, Lcom/facebook/katana/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v3, p0, Lcom/facebook/katana/RotateBitmap;->mRotation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, Lcom/facebook/katana/RotateBitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/facebook/katana/RotateBitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_37
    return-object v2
.end method

.method public getRotation()I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/RotateBitmap;->mRotation:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/katana/RotateBitmap;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/katana/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/facebook/katana/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_c
.end method

.method public isOrientationChanged()Z
    .registers 2

    iget v0, p0, Lcom/facebook/katana/RotateBitmap;->mRotation:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public recycle()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/katana/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    :cond_c
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setRotation(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/katana/RotateBitmap;->mRotation:I

    return-void
.end method
