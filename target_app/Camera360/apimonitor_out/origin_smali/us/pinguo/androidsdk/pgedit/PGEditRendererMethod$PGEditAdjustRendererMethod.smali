.class public Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;
.super Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
.source "PGEditRendererMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PGEditAdjustRendererMethod"
.end annotation


# static fields
.field private static final FAST_ADJUST_CHANGE:I = 0x5

.field private static final FAST_ADJUST_INIT:I = 0x4

.field private static final FAST_ADJUST_REINIT:I = 0x6

.field private static final GAUSSIAN_BLU_EFFECT:Ljava/lang/String; = "Effect=GuassBlur_Fast"


# instance fields
.field private mAdjustBeanMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$FastAdjustBean;",
            ">;"
        }
    .end annotation
.end field

.field private mChildEffect:Ljava/lang/String;

.field private mParams:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap;)V
    .registers 5

    const-string/jumbo v0, "Effect=AdvanceAdjust|Effect=FastSharpen"

    invoke-direct {p0, v0, p1, p2, p3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mAdjustBeanMap:Ljava/util/Map;

    const/4 v0, 0x4

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mActionType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mAdjustBeanMap:Ljava/util/Map;

    const/4 v0, 0x4

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mActionType:I

    return-void
.end method

.method private initAdjust()V
    .registers 5

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->init()V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->clearIndex()V

    const/4 v0, 0x0

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->setImageFromARGB(I[III)Z

    move-result v0

    if-nez v0, :cond_26

    const-string/jumbo v0, "adjust GuassBlur setImageFromARGB  is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mEffect:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->setEffect(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string/jumbo v0, "adjust Effect=AdvanceAdjust|Effect=FastSharpen setEffect is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto :goto_25

    :cond_35
    const-string/jumbo v0, "AdvanceAdjust"

    const-string/jumbo v1, "Exposure=0;Shadow=0;Highlight=0;Contrast=0;Saturation=1;ColorTemp=0"

    invoke-virtual {p0, v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->setEffectParams(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string/jumbo v0, "adjust change setEffectParams is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto :goto_25

    :cond_48
    const-string/jumbo v0, "FastSharpen"

    const-string/jumbo v1, "sharpness=0"

    invoke-virtual {p0, v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->setEffectParams(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string/jumbo v0, "adjust change setEffectParams is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto :goto_25
.end method

.method private makeGaussian()Z
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->makeGaussian(Z)Z

    move-result v0

    return v0
.end method

.method private makeGaussian(Z)Z
    .registers 14

    const/4 v8, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "Effect=GuassBlur_Fast"

    invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->setEffect(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "adjust GuassBlur_FAST setEffect  is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    :cond_11
    :goto_11
    return v1

    :cond_12
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v1, v0, v2, v4}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->setImageFromARGB(I[III)Z

    move-result v0

    if-nez v0, :cond_39

    const-string/jumbo v0, "adjust GuassBlur setImageFromARGB  is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto :goto_11

    :cond_39
    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->make()Z

    move-result v0

    if-nez v0, :cond_46

    const-string/jumbo v0, "adjust GuassBlur make is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto :goto_11

    :cond_46
    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->getMakedImage2Buffer()Lus/pinguo/androidsdk/PGColorBuffer;

    move-result-object v11

    if-eqz v11, :cond_11

    invoke-virtual {v11}, Lus/pinguo/androidsdk/PGColorBuffer;->getColorBuffer()[I

    move-result-object v0

    invoke-virtual {v11}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageWidth()I

    move-result v2

    invoke-virtual {v11}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {p0, v8}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->clearImage(I)Z

    invoke-static {v10}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v9

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v8, v9, v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->setImageFromARGB(I[III)Z

    move-result v0

    if-nez v0, :cond_7d

    const-string/jumbo v0, "adjust 1 setImageFromARGB is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto :goto_11

    :cond_7d
    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->clearIndex()V

    if-eqz p1, :cond_aa

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v1, v0, v2, v4}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->setImageFromARGB(I[III)Z

    move-result v0

    if-nez v0, :cond_de

    const-string/jumbo v0, "adjust GuassBlur setImageFromARGB  is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_aa
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mPath:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->setImageFromPath(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ba

    const-string/jumbo v0, "adjust GuassBlur setImageFromARGB  is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_ba
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getRotatedDegree(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_de

    const/16 v0, 0xb4

    if-eq v3, v0, :cond_c8

    if-nez v3, :cond_dc

    :cond_c8
    move v2, v1

    :goto_c9
    const/4 v4, 0x0

    move-object v0, p0

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->adjustImage(IZILus/pinguo/androidsdk/PGRect;ZZIZ)Z

    move-result v0

    if-nez v0, :cond_de

    const-string/jumbo v0, "rotateMirror is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_dc
    move v2, v8

    goto :goto_c9

    :cond_de
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mEffect:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->setEffect(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ee

    const-string/jumbo v0, "adjust Effect=AdvanceAdjust|Effect=FastSharpen setEffect is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_ee
    const-string/jumbo v0, "AdvanceAdjust"

    const-string/jumbo v2, "Exposure=0;Shadow=0;Highlight=0;Contrast=0;Saturation=1;ColorTemp=0"

    invoke-virtual {p0, v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->setEffectParams(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_102

    const-string/jumbo v0, "adjust change setEffectParams is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_102
    const-string/jumbo v0, "FastSharpen"

    const-string/jumbo v2, "sharpness=0"

    invoke-virtual {p0, v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->setEffectParams(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_116

    const-string/jumbo v0, "adjust change setEffectParams is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_116
    move v1, v8

    goto/16 :goto_11
.end method


# virtual methods
.method public adjustChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mChildEffect:Ljava/lang/String;

    iput-object p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mParams:Ljava/lang/String;

    const/4 v1, 0x5

    iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mActionType:I

    const-string/jumbo v1, "="

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mAdjustBeanMap:Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    new-instance v3, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$FastAdjustBean;

    invoke-direct {v3, p1, p2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$FastAdjustBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reInit()V
    .registers 2

    const/4 v0, 0x6

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mActionType:I

    return-void
.end method

.method public rendererAction()V
    .registers 9

    const/4 v1, 0x0

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mActionType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_30

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->init()V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->clearIndex()V

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->makeGaussian()Z

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->make()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "change make is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mShowWidth:I

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mShowHeight:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->getMakedImage2Screen(IIIII)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "getMakedImage2Screen failed"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto :goto_1b

    :cond_30
    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mActionType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_67

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mChildEffect:Ljava/lang/String;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mParams:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->setEffectParams(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string/jumbo v0, "adjust change setEffectParams is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto :goto_1b

    :cond_46
    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->make()Z

    move-result v0

    if-nez v0, :cond_53

    const-string/jumbo v0, "change make is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto :goto_1b

    :cond_53
    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mShowWidth:I

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mShowHeight:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->getMakedImage2Screen(IIIII)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "getMakedImage2Screen failed"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto :goto_1b

    :cond_67
    const/4 v0, 0x6

    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mActionType:I

    if-ne v0, v2, :cond_c5

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->init()V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->clearIndex()V

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->makeGaussian()Z

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mAdjustBeanMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_92

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->make()Z

    move-result v0

    if-nez v0, :cond_b0

    const-string/jumbo v0, "change make is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto :goto_1b

    :cond_92
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mAdjustBeanMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$FastAdjustBean;

    iget-object v0, v6, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$FastAdjustBean;->effect:Ljava/lang/String;

    iget-object v2, v6, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$FastAdjustBean;->params:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->setEffectParams(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7f

    const-string/jumbo v0, "adjust change setEffectParams is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_b0
    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mShowWidth:I

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mShowHeight:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->getMakedImage2Screen(IIIII)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "getMakedImage2Screen failed"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_c5
    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->rendererAction()V

    goto/16 :goto_1b
.end method

.method protected setPersonalValue(Z)Z
    .registers 8

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->makeGaussian(Z)Z

    move-result v2

    if-nez v2, :cond_8

    :goto_7
    return v3

    :cond_8
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mAdjustBeanMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1a

    const/4 v3, 0x1

    goto :goto_7

    :cond_1a
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->mAdjustBeanMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$FastAdjustBean;

    iget-object v4, v0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$FastAdjustBean;->effect:Ljava/lang/String;

    iget-object v5, v0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$FastAdjustBean;->params:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->setEffectParams(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string/jumbo v4, "adjust change setEffectParams is fail"

    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    goto :goto_7
.end method
