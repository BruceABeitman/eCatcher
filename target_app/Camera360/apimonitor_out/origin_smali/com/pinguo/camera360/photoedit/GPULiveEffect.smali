.class public Lcom/pinguo/camera360/photoedit/GPULiveEffect;
.super Ljava/lang/Object;
.source "GPULiveEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;,
        Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sZoomScale:F


# instance fields
.field private buffer:[B

.field private effect:Lcom/pinguo/camera360/effect/model/entity/Effect;

.field private effectAppend:Lcom/pinguo/camera360/photoedit/effect/EffectAppend;

.field private effectMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;

.field private frontCamera:Z

.field private lastTextureIndex:I

.field private loadedTexture:Z

.field private lock:[B

.field private lockSetFrame:[B

.field private mCurMakeType:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mSceneFilePath:Ljava/lang/String;

.field private mSceneParam:Ljava/lang/String;

.field private mSceneRect:Landroid/graphics/Rect;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mirror:I

.field private needReloadResources:Z

.field private orientation:I

.field private previewFrame:I

.field private previewHeight:I

.field private previewWidth:I

.field private procScreenHeight:I

.field private procScreenWidth:I

.field private sceneMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;

.field private surfaceViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lus/pinguo/androidsdk/PGGLSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->TAG:Ljava/lang/String;

    const/high16 v0, 0x3f80

    sput v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->sZoomScale:F

    return-void
.end method

.method public constructor <init>(Lus/pinguo/androidsdk/PGGLSurfaceView;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->buffer:[B

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->surfaceViewRef:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->effectMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->sceneMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;

    sget-object v0, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mCurMakeType:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    iput v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->orientation:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mirror:I

    iput-boolean v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->loadedTexture:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lastTextureIndex:I

    sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->effect:Lcom/pinguo/camera360/effect/model/entity/Effect;

    iput-object v2, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->effectAppend:Lcom/pinguo/camera360/photoedit/effect/EffectAppend;

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lock:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lockSetFrame:[B

    iput-boolean v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->needReloadResources:Z

    iput-boolean v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->frontCamera:Z

    iput v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewFrame:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->surfaceViewRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;

    invoke-direct {v0, p0, v2}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;-><init>(Lcom/pinguo/camera360/photoedit/GPULiveEffect;Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;)V

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->effectMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;

    new-instance v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;

    invoke-direct {v0, p0, v2}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;-><init>(Lcom/pinguo/camera360/photoedit/GPULiveEffect;Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;)V

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->sceneMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)[B
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lockSetFrame:[B

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/photoedit/GPULiveEffect;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenWidth:I

    return-void
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/photoedit/GPULiveEffect;IIIII)Landroid/graphics/Rect;
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setPreviewFrameSize(IIIII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)[B
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->buffer:[B

    return-object v0
.end method

.method static synthetic access$12(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mPreviewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$13(I)F
    .registers 2

    invoke-static {p0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->getPreviewScale(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$14()F
    .registers 1

    sget v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->sZoomScale:F

    return v0
.end method

.method static synthetic access$15(F)V
    .registers 1

    sput p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->sZoomScale:F

    return-void
.end method

.method static synthetic access$16(FF)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->isEqual(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$17(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)[B
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lock:[B

    return-object v0
.end method

.method static synthetic access$18(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->loadedTexture:Z

    return v0
.end method

.method static synthetic access$19(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lastTextureIndex:I

    return v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/photoedit/GPULiveEffect;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenHeight:I

    return-void
.end method

.method static synthetic access$20(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)Lcom/pinguo/camera360/effect/model/entity/Effect;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->effect:Lcom/pinguo/camera360/effect/model/entity/Effect;

    return-object v0
.end method

.method static synthetic access$21(Lcom/pinguo/camera360/photoedit/GPULiveEffect;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lastTextureIndex:I

    return-void
.end method

.method static synthetic access$22(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->orientation:I

    return v0
.end method

.method static synthetic access$23(Lcom/pinguo/camera360/photoedit/GPULiveEffect;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->loadedTexture:Z

    return-void
.end method

.method static synthetic access$24(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mirror:I

    return v0
.end method

.method static synthetic access$25(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->procScreenWidth:I

    return v0
.end method

.method static synthetic access$26(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->procScreenHeight:I

    return v0
.end method

.method static synthetic access$27(Lcom/pinguo/camera360/photoedit/GPULiveEffect;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mSceneRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$28(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mSceneFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$29(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mSceneParam:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewFrame:I

    return v0
.end method

.method static synthetic access$30(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mSceneRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewWidth:I

    return v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewHeight:I

    return v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/photoedit/GPULiveEffect;IIII)Landroid/graphics/Rect;
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setSize(IIII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/photoedit/GPULiveEffect;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method private static getPreviewScale(I)F
    .registers 2

    const/high16 v0, -0x3d38

    packed-switch p0, :pswitch_data_14

    :goto_5
    :pswitch_5
    return v0

    :pswitch_6
    const v0, 0x3fe38e39

    goto :goto_5

    :pswitch_a
    const v0, 0x3faaaaab

    goto :goto_5

    :pswitch_e
    const/high16 v0, 0x3fc0

    goto :goto_5

    :pswitch_11
    const/high16 v0, 0x3f80

    goto :goto_5

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method private static isEqual(FF)Z
    .registers 4

    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private setPreviewFrameSize(IIIII)Landroid/graphics/Rect;
    .registers 22

    if-nez p5, :cond_7

    invoke-direct/range {p0 .. p4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setSize(IIII)Landroid/graphics/Rect;

    move-result-object v7

    :goto_6
    return-object v7

    :cond_7
    invoke-static/range {p5 .. p5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->getPreviewScale(I)F

    move-result v6

    float-to-double v12, v6

    const-wide v14, 0x3f847ae147ae147bL

    cmpg-double v12, v12, v14

    if-gez v12, :cond_1a

    invoke-direct/range {p0 .. p4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setSize(IIII)Landroid/graphics/Rect;

    move-result-object v7

    goto :goto_6

    :cond_1a
    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    div-float v5, v12, v13

    invoke-static {v5, v6}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->isEqual(FF)Z

    move-result v12

    if-eqz v12, :cond_2d

    invoke-direct/range {p0 .. p4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setSize(IIII)Landroid/graphics/Rect;

    move-result-object v7

    goto :goto_6

    :cond_2d
    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_73

    move/from16 v0, p3

    int-to-float v12, v0

    move/from16 v0, p4

    int-to-float v13, v0

    div-float v10, v12, v13

    cmpl-float v12, v10, v5

    if-lez v12, :cond_6b

    move/from16 v8, p4

    move/from16 v0, p4

    int-to-float v12, v0

    mul-float/2addr v12, v5

    float-to-int v9, v12

    :goto_46
    cmpl-float v12, v5, v6

    if-lez v12, :cond_8f

    move v4, v9

    int-to-float v12, v9

    mul-float/2addr v12, v6

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v3, v12

    :goto_51
    sub-int v12, p3, v4

    shr-int/lit8 v2, v12, 0x1

    sub-int v12, p4, v3

    shr-int/lit8 v11, v12, 0x1

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput v2, v7, Landroid/graphics/Rect;->left:I

    iput v11, v7, Landroid/graphics/Rect;->top:I

    add-int v12, v2, v4

    iput v12, v7, Landroid/graphics/Rect;->right:I

    add-int v12, v11, v3

    iput v12, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :cond_6b
    move/from16 v9, p3

    move/from16 v0, p3

    int-to-float v12, v0

    div-float/2addr v12, v5

    float-to-int v8, v12

    goto :goto_46

    :cond_73
    move/from16 v0, p4

    int-to-float v12, v0

    move/from16 v0, p3

    int-to-float v13, v0

    div-float v10, v12, v13

    cmpl-float v12, v10, v5

    if-lez v12, :cond_87

    move/from16 v9, p3

    move/from16 v0, p3

    int-to-float v12, v0

    mul-float/2addr v12, v5

    float-to-int v8, v12

    goto :goto_46

    :cond_87
    move/from16 v8, p4

    move/from16 v0, p4

    int-to-float v12, v0

    div-float/2addr v12, v5

    float-to-int v9, v12

    goto :goto_46

    :cond_8f
    const/high16 v12, 0x3f80

    div-float/2addr v12, v6

    int-to-float v13, v8

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v4, v12

    move v3, v8

    goto :goto_51
.end method

.method private setSize(IIII)Landroid/graphics/Rect;
    .registers 14

    int-to-float v7, p1

    int-to-float v8, p2

    div-float v1, v7, v8

    if-le p3, p4, :cond_31

    int-to-float v7, p3

    int-to-float v8, p4

    div-float v5, v7, v8

    cmpl-float v7, v5, v1

    if-lez v7, :cond_2c

    move v3, p4

    int-to-float v7, p4

    mul-float/2addr v7, v1

    float-to-int v4, v7

    :goto_12
    sub-int v7, p3, v4

    shr-int/lit8 v0, v7, 0x1

    sub-int v7, p4, v3

    shr-int/lit8 v6, v7, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput v0, v2, Landroid/graphics/Rect;->left:I

    iput v6, v2, Landroid/graphics/Rect;->top:I

    add-int v7, v0, v4

    iput v7, v2, Landroid/graphics/Rect;->right:I

    add-int v7, v6, v3

    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    return-object v2

    :cond_2c
    move v4, p3

    int-to-float v7, p3

    div-float/2addr v7, v1

    float-to-int v3, v7

    goto :goto_12

    :cond_31
    int-to-float v7, p4

    int-to-float v8, p3

    div-float v5, v7, v8

    cmpl-float v7, v5, v1

    if-lez v7, :cond_3e

    move v4, p3

    int-to-float v7, p3

    mul-float/2addr v7, v1

    float-to-int v3, v7

    goto :goto_12

    :cond_3e
    move v3, p4

    int-to-float v7, p4

    div-float/2addr v7, v1

    float-to-int v4, v7

    goto :goto_12
.end method

.method public static setZoomScale(F)V
    .registers 1

    sput p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->sZoomScale:F

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->buffer:[B

    return-object v0
.end method

.method public getFps()I
    .registers 3

    iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->surfaceViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/pinguo/androidsdk/PGGLSurfaceView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lus/pinguo/androidsdk/PGGLSurfaceView;->getFps()I

    move-result v1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public loadTemplate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mSceneFilePath:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, ";"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    const/4 v6, 0x0

    :goto_10
    if-lt v6, v7, :cond_3d

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mSceneParam:Ljava/lang/String;

    sget-object v6, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "loadTemplate finish, filePath:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mSceneFilePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\nparam:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mSceneParam:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3d
    aget-object v2, v3, v6

    const-string/jumbo v8, "effect="

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8d

    const-string/jumbo v8, "="

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectParamByOldParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_81

    invoke-static {v4}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_63
    if-eqz v0, :cond_86

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Effect="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_78
    const-string/jumbo v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_7e
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_81
    invoke-static {v1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_63

    :cond_86
    const-string/jumbo v8, "Effect=Normal"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_78

    :cond_8d
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7e
.end method

.method public makePreview()V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->surfaceViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/pinguo/androidsdk/PGGLSurfaceView;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->buffer:[B

    if-nez v1, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-boolean v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->needReloadResources:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->needReloadResources:Z

    :cond_16
    iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mCurMakeType:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    sget-object v2, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    if-ne v1, v2, :cond_2d

    iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->effectMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->effectMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;

    iget-boolean v2, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->frontCamera:Z

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->setFront(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->effectMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/PGGLSurfaceView;->renderAction(Lus/pinguo/androidsdk/PGRendererMethod;)V

    goto :goto_e

    :cond_2d
    iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mCurMakeType:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    sget-object v2, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_SCENE:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->sceneMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->sceneMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;

    iget-boolean v2, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->frontCamera:Z

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->setFront(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->sceneMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/PGGLSurfaceView;->renderAction(Lus/pinguo/androidsdk/PGRendererMethod;)V

    goto :goto_e
.end method

.method public setBuffer([B)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->buffer:[B

    return-void
.end method

.method public setEffectAlias(Ljava/lang/String;)V
    .registers 5

    sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_S5360:Z

    if-eqz v1, :cond_25

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderRealEnable()Z

    move-result v1

    if-nez v1, :cond_25

    sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;

    iget-object v2, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lock:[B

    monitor-enter v2

    :try_start_13
    iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->effect:Lcom/pinguo/camera360/effect/model/entity/Effect;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/effect/model/entity/Effect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->effect:Lcom/pinguo/camera360/effect/model/entity/Effect;

    :cond_1d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->loadedTexture:Z

    monitor-exit v2

    :goto_21
    return-void

    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_22

    throw v1

    :cond_25
    const/4 v0, 0x0

    const-string/jumbo v1, "C360_TiltShift_Other_Line"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;

    :cond_31
    :goto_31
    iget-object v2, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lock:[B

    monitor-enter v2

    :try_start_34
    iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->effect:Lcom/pinguo/camera360/effect/model/entity/Effect;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/effect/model/entity/Effect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->effect:Lcom/pinguo/camera360/effect/model/entity/Effect;

    :cond_3e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->loadedTexture:Z

    monitor-exit v2

    goto :goto_21

    :catchall_43
    move-exception v1

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_43

    throw v1

    :cond_46
    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectByKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/Effect;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/pinguo/camera360/effect/model/entity/Effect;->haveGPUCmd()Z

    move-result v1

    if-nez v1, :cond_31

    :cond_56
    sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;

    goto :goto_31
.end method

.method public setFront(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->frontCamera:Z

    return-void
.end method

.method public setMirror(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mirror:I

    return-void
.end method

.method public setOrientation(I)V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lock:[B

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->orientation:I

    if-eq v0, p1, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->loadedTexture:Z

    iput p1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->orientation:I

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public setPreviewFrame(I)V
    .registers 9

    iget-object v6, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lockSetFrame:[B

    monitor-enter v6

    :try_start_3
    iget v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewFrame:I

    if-ne v0, p1, :cond_9

    monitor-exit v6

    :goto_8
    return-void

    :cond_9
    iput p1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewFrame:I

    if-eqz p1, :cond_35

    iget v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewWidth:I

    if-lez v0, :cond_35

    iget v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewHeight:I

    if-lez v0, :cond_35

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_35

    iget v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewWidth:I

    iget v2, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewHeight:I

    iget v3, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenWidth:I

    iget v4, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenHeight:I

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setPreviewFrameSize(IIIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mPreviewRect:Landroid/graphics/Rect;

    :goto_29
    monitor-exit v6
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_44

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->sceneMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;

    invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->enableNeedCleanColor()V

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->effectMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;

    invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->enableNeedCleanColor()V

    goto :goto_8

    :cond_35
    :try_start_35
    iget v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewWidth:I

    iget v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewHeight:I

    iget v2, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenWidth:I

    iget v3, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setSize(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mPreviewRect:Landroid/graphics/Rect;

    goto :goto_29

    :catchall_44
    move-exception v0

    monitor-exit v6
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_44

    throw v0
.end method

.method public setPreviewSize(IIII)V
    .registers 12

    iget-object v6, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lockSetFrame:[B

    monitor-enter v6

    :try_start_3
    iput p1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewWidth:I

    iput p2, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewHeight:I

    iput p3, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenWidth:I

    iput p4, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenHeight:I

    sget-object v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "preview size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",screen size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewFrame:I

    if-nez v0, :cond_5e

    iget v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenWidth:I

    iget v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenHeight:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setSize(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mPreviewRect:Landroid/graphics/Rect;

    :goto_4f
    monitor-exit v6
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_6e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->loadedTexture:Z

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->sceneMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;

    invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->enableNeedCleanColor()V

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->effectMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;

    invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->enableNeedCleanColor()V

    return-void

    :cond_5e
    :try_start_5e
    iget v3, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenWidth:I

    iget v4, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenHeight:I

    iget v5, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewFrame:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setPreviewFrameSize(IIIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mPreviewRect:Landroid/graphics/Rect;

    goto :goto_4f

    :catchall_6e
    move-exception v0

    monitor-exit v6
    :try_end_70
    .catchall {:try_start_5e .. :try_end_70} :catchall_6e

    throw v0
.end method

.method public setRenderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Set render type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mCurMakeType:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    sget-object v1, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    if-ne v0, v1, :cond_24

    sget-object v0, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_SCENE:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    if-ne p1, v0, :cond_24

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->sceneMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;

    invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->resetRenderMethod()V

    :cond_24
    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mCurMakeType:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->sceneMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;

    invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->enableNeedCleanColor()V

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->effectMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;

    invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->enableNeedCleanColor()V

    return-void
.end method

.method public setSceneSize(IIII)V
    .registers 7

    iput p3, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->procScreenWidth:I

    iput p4, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->procScreenHeight:I

    if-ge p3, p4, :cond_a

    iput p4, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->procScreenWidth:I

    iput p3, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->procScreenHeight:I

    :cond_a
    iget v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->procScreenWidth:I

    iget v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->procScreenHeight:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setSize(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mSceneRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->sceneMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;

    invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->enableNeedCleanColor()V

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->effectMethod:Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;

    invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->enableNeedCleanColor()V

    return-void
.end method
