.class public Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;
.super Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
.source "PGEditRendererMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PGEditTextureRendererMethod"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTextureDegree:I

.field private mTexturePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected clearIndex()V
    .registers 2

    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->clearIndex()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;->mTexturePath:Ljava/lang/String;

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;->clearImage(I)Z

    :cond_b
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected setPersonalValue(Z)Z
    .registers 15

    :try_start_0
    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;->mTexturePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;->mTextureDegree:I

    if-eqz v1, :cond_33

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;->mTextureDegree:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v11, v0

    move-object v0, v10

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    :cond_33
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v7, v12, v9}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;->setImageFromARGB(I[III)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string/jumbo v1, "setValueForImageFromARGB is fail"

    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4f} :catch_51

    const/4 v1, 0x0

    :goto_50
    return v1

    :catch_51
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v1, "setValueForImageFromARGB is IOException"

    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_50

    :cond_5d
    const/4 v1, 0x1

    goto :goto_50
.end method

.method public setTextureDegree(I)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;->mTextureDegree:I

    return-void
.end method

.method public setTexturePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;->mTexturePath:Ljava/lang/String;

    return-void
.end method
