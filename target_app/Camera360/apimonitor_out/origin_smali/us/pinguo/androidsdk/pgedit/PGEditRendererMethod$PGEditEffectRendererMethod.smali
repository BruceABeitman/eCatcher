.class public Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;
.super Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
.source "PGEditRendererMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PGEditEffectRendererMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod$PGEditRendererMethodAlphaActionListener;
    }
.end annotation


# static fields
.field protected static final CHANGE_ALPA:I = 0x3


# instance fields
.field private mRendererMethodAlphaActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod$PGEditRendererMethodAlphaActionListener;

.field private mTextureIndex:I

.field private mTexturePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V

    const/4 v0, 0x3

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mActionType:I

    return-void
.end method


# virtual methods
.method protected clearIndex()V
    .registers 2

    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->clearIndex()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mTexturePath:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mTextureIndex:I

    invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->clearImage(I)Z

    :cond_c
    return-void
.end method

.method public rendererAction()V
    .registers 8

    iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mActionType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_82

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->init()V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->clearIndex()V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mEditRendererMethodActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mEditRendererMethodActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

    invoke-interface {v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;->fail()V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    const/4 v3, 0x0

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v4

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->setImageFromARGB(I[III)Z

    move-result v3

    if-nez v3, :cond_45

    const-string/jumbo v3, "setImageFromARGB is fail"

    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mRendererMethodAlphaActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod$PGEditRendererMethodAlphaActionListener;

    if-eqz v3, :cond_45

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mRendererMethodAlphaActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod$PGEditRendererMethodAlphaActionListener;

    invoke-interface {v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod$PGEditRendererMethodAlphaActionListener;->fail()V

    :cond_45
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->rendererActionProcess(Z)Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mRendererMethodAlphaActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod$PGEditRendererMethodAlphaActionListener;

    if-eqz v3, :cond_55

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mRendererMethodAlphaActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod$PGEditRendererMethodAlphaActionListener;

    invoke-interface {v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod$PGEditRendererMethodAlphaActionListener;->fail()V

    :cond_55
    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->getMakedImage2Buffer()Lus/pinguo/androidsdk/PGColorBuffer;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_78

    invoke-virtual {v1}, Lus/pinguo/androidsdk/PGColorBuffer;->getColorBuffer()[I

    move-result-object v3

    invoke-virtual {v1}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageWidth()I

    move-result v4

    invoke-virtual {v1}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mRendererMethodAlphaActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod$PGEditRendererMethodAlphaActionListener;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mRendererMethodAlphaActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod$PGEditRendererMethodAlphaActionListener;

    invoke-interface {v3, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod$PGEditRendererMethodAlphaActionListener;->success(Landroid/graphics/Bitmap;)V

    goto :goto_1c

    :cond_78
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mEditRendererMethodActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mEditRendererMethodActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

    invoke-interface {v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;->fail()V

    goto :goto_1c

    :cond_82
    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->rendererAction()V

    goto :goto_1c
.end method

.method protected setPersonalValue(Z)Z
    .registers 7

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mTexturePath:Ljava/lang/String;

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mTexturePath:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mTextureIndex:I

    invoke-virtual {p0, v4, v0, v3, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->setImageFromARGB(I[III)Z

    move-result v4

    if-nez v4, :cond_2b

    const-string/jumbo v4, "PGEditEffectRendererMethod setImageFromARGB is fail"

    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_2a
    return v4

    :cond_2b
    const/4 v4, 0x1

    goto :goto_2a
.end method

.method public setRendererMethodAlphaActionListener(Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod$PGEditRendererMethodAlphaActionListener;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mRendererMethodAlphaActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod$PGEditRendererMethodAlphaActionListener;

    return-void
.end method

.method public setTextureIndex(I)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mTextureIndex:I

    return-void
.end method

.method public setTexturePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->mTexturePath:Ljava/lang/String;

    return-void
.end method
