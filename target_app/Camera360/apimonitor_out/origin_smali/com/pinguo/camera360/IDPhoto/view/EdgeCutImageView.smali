.class public Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
.super Landroid/view/View;
.source "EdgeCutImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;,
        Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TouchListener;,
        Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCALE:F = 3.0f

.field private static final DEFAULT_MIN_SCALE:F = 1.0f

.field private static final DEFAULT_ZOOM_DURATION:I = 0xc8

.field private static final ERASER:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final MAGNIFIER_RADIUS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MAGNIFIER_RECT_STROKE:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final MAX_TRANSLATE_DURING_TOUCH:F = 0.0f

.field private static final NONE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHADOW_CONNER_DEF_LENGTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHADOW_DEF_LENGTH:I = 0x0

.field private static final SIXTY_FPS_INTERVAL:I = 0x10

.field private static final ZOOM_TRANSLATE:I = 0x2


# instance fields
.field private isHide:Z

.field private mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

.field private final mBaseInverseMatrix:Landroid/graphics/Matrix;

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mBaseScale:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCacheBitmap:Landroid/graphics/Bitmap;

.field private mCacheCanvas:Landroid/graphics/Canvas;

.field private mClothesBaseMatrix:Landroid/graphics/Matrix;

.field private mClothesBitmap:Landroid/graphics/Bitmap;

.field private mClothesMatrix:Landroid/graphics/Matrix;

.field private mCurMode:I

.field private mCurTranslateRunnable:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

.field private mGestureEnabled:Z

.field private mIsEraserInit:Z

.field private mLRSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mLastEventPointer0:Landroid/graphics/PointF;

.field private mLastEventPointer1:Landroid/graphics/PointF;

.field private mMagnifierBitmap:Landroid/graphics/Bitmap;

.field private mMagnifierCanvas:Landroid/graphics/Canvas;

.field private mMagnifierRectPaint:Landroid/graphics/Paint;

.field private final mMatrixValues:[F

.field private mPath:Landroid/graphics/Path;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mRLSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private final mSuppInverseMatrix:Landroid/graphics/Matrix;

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mTBSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mTLBRSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mTRBLSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mTouchListener:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TouchListener;

.field private final sInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v2, 0x32

    const/4 v1, 0x2

    invoke-static {v2}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAX_TRANSLATE_DURING_TOUCH:F

    invoke-static {v2}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAGNIFIER_RADIUS:I

    invoke-static {v1}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAGNIFIER_RECT_STROKE:F

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->SHADOW_DEF_LENGTH:I

    invoke-static {v1}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->SHADOW_CONNER_DEF_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->sInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBaseInverseMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppInverseMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mDisplayRect:Landroid/graphics/RectF;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMatrixValues:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCurMode:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer0:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer1:Landroid/graphics/PointF;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBaseScale:F

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->sInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBaseInverseMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppInverseMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mDisplayRect:Landroid/graphics/RectF;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMatrixValues:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCurMode:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer0:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer1:Landroid/graphics/PointF;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBaseScale:F

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->sInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBaseInverseMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppInverseMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mDisplayRect:Landroid/graphics/RectF;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMatrixValues:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCurMode:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer0:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer1:Landroid/graphics/PointF;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBaseScale:F

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->init()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;)Landroid/graphics/Matrix;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->checkAndDisplayMatrix()V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;)Landroid/view/animation/Interpolator;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->sInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setImageMatrix()V

    return-void
.end method

.method private checkAndDisplayMatrix()V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->checkMatrixBounds()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setImageMatrix()V

    :cond_9
    return-void
.end method

.method private checkAndDisplayMatrixWithAnim()Z
    .registers 12

    const/high16 v10, 0x4000

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v3

    if-nez v3, :cond_f

    const/4 v7, 0x0

    :goto_e
    return v7

    :cond_f
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getImageViewHeight()I

    move-result v4

    int-to-float v7, v4

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_4c

    int-to-float v7, v4

    sub-float/2addr v7, v2

    div-float/2addr v7, v10

    iget v8, v3, Landroid/graphics/RectF;->top:F

    sub-float v1, v7, v8

    :cond_29
    :goto_29
    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getImageViewWidth()I

    move-result v5

    int-to-float v7, v5

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_63

    int-to-float v7, v5

    sub-float/2addr v7, v6

    div-float/2addr v7, v10

    iget v8, v3, Landroid/graphics/RectF;->left:F

    sub-float v0, v7, v8

    :cond_39
    :goto_39
    new-instance v7, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;

    invoke-direct {v7, p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;-><init>(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;)V

    iput-object v7, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCurTranslateRunnable:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCurTranslateRunnable:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;

    invoke-virtual {v7, v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->start(FF)V

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCurTranslateRunnable:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;

    invoke-virtual {p0, v7}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->post(Ljava/lang/Runnable;)Z

    const/4 v7, 0x1

    goto :goto_e

    :cond_4c
    iget v7, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_56

    iget v7, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v7

    goto :goto_29

    :cond_56
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v4

    cmpg-float v7, v7, v8

    if-gez v7, :cond_29

    int-to-float v7, v4

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v7, v8

    goto :goto_29

    :cond_63
    iget v7, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_6d

    iget v7, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v7

    goto :goto_39

    :cond_6d
    iget v7, v3, Landroid/graphics/RectF;->right:F

    int-to-float v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_39

    int-to-float v7, v5

    iget v8, v3, Landroid/graphics/RectF;->right:F

    sub-float v0, v7, v8

    goto :goto_39
.end method

.method private checkMatrixBounds()Z
    .registers 12

    const/high16 v10, 0x4000

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v3

    if-nez v3, :cond_f

    const/4 v7, 0x0

    :goto_e
    return v7

    :cond_f
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getImageViewHeight()I

    move-result v4

    int-to-float v7, v4

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_40

    int-to-float v7, v4

    sub-float/2addr v7, v2

    div-float/2addr v7, v10

    iget v8, v3, Landroid/graphics/RectF;->top:F

    sub-float v1, v7, v8

    :cond_29
    :goto_29
    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getImageViewWidth()I

    move-result v5

    int-to-float v7, v5

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_57

    int-to-float v7, v5

    sub-float/2addr v7, v6

    div-float/2addr v7, v10

    iget v8, v3, Landroid/graphics/RectF;->left:F

    sub-float v0, v7, v8

    :cond_39
    :goto_39
    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v7, 0x1

    goto :goto_e

    :cond_40
    iget v7, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4a

    iget v7, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v7

    goto :goto_29

    :cond_4a
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v4

    cmpg-float v7, v7, v8

    if-gez v7, :cond_29

    int-to-float v7, v4

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v7, v8

    goto :goto_29

    :cond_57
    iget v7, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_61

    iget v7, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v7

    goto :goto_39

    :cond_61
    iget v7, v3, Landroid/graphics/RectF;->right:F

    int-to-float v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_39

    int-to-float v7, v5

    iget v8, v3, Landroid/graphics/RectF;->right:F

    sub-float v0, v7, v8

    goto :goto_39
.end method

.method private dispatchTouchEraserAndMaker(Landroid/view/MotionEvent;)V
    .registers 7

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    invoke-virtual {v3, p1}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->onTouch(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getTouchToOrgBitmap(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getScale()F

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->onTouchEvent(Landroid/view/MotionEvent;F)Z

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-void
.end method

.method private distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .registers 7

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float v0, v2, v3

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float v1, v2, v3

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mDisplayRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mDisplayRect:Landroid/graphics/RectF;

    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private getImageViewHeight()I
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getImageViewWidth()I
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getMagnifierCanvas()Landroid/graphics/Canvas;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMagnifierBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3e

    sget v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAGNIFIER_RADIUS:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAGNIFIER_RADIUS:I

    mul-int/lit8 v1, v1, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMagnifierBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMagnifierBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMagnifierCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMagnifierRectPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMagnifierRectPaint:Landroid/graphics/Paint;

    sget v1, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAGNIFIER_RECT_STROKE:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMagnifierRectPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMagnifierRectPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMagnifierRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_3e
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMagnifierCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method private getRealDrawBitmap()Landroid/graphics/Bitmap;
    .registers 7

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    :goto_6
    return-object v0

    :cond_7
    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPathPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPath:Landroid/graphics/Path;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_17
    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mClothesBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_ac

    :cond_1b
    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_4c

    :cond_23
    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    :cond_4c
    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v5, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPathPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_80

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPath:Landroid/graphics/Path;

    if-eqz v1, :cond_80

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_80

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    if-eqz v1, :cond_a2

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheCanvas:Landroid/graphics/Canvas;

    const/16 v2, 0x1f

    invoke-virtual {v1, v0, v0, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_80
    :goto_80
    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mClothesBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mClothesBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mClothesBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mClothesMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_9e
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_6

    :cond_a2
    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_80

    :cond_ac
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_6
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method private init()V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v4, 0x0

    new-instance v1, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;

    sget-object v2, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;->erase:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;-><init>(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;I)V

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_5c

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLRSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLRSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mRLSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mRLSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mTBSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mTBSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mTLBRSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mTLBRSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mTRBLSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mTRBLSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->enterNormalMode()V

    return-void

    :array_5c
    .array-data 0x4
        0x33t 0x33t 0x33t 0x50t
        0x33t 0x33t 0x33t 0x0t
    .end array-data
.end method

.method private releaseEdgeCutResource()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mIsEraserInit:Z

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPath:Landroid/graphics/Path;

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mClothesBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mClothesBaseMatrix:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mClothesMatrix:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheBitmap:Landroid/graphics/Bitmap;

    :cond_19
    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCacheCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMagnifierBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMagnifierBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMagnifierBitmap:Landroid/graphics/Bitmap;

    :cond_26
    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMagnifierCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method private resetMatrix()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setImageMatrix()V

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->checkMatrixBounds()Z

    return-void
.end method

.method private setGestureEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mGestureEnabled:Z

    return-void
.end method

.method private setImageMatrix()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getDrawMatrix()Landroid/graphics/Matrix;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private setScale(FFF)V
    .registers 6

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x4040

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_10

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_15

    :cond_10
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_15
    return-void
.end method

.method private setTranslate(FF)Z
    .registers 11

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getScale()F

    move-result v5

    const v6, 0x3f8ccccd

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6f

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_47

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getImageViewHeight()I

    move-result v3

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sget v6, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAX_TRANSLATE_DURING_TOUCH:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_49

    iget v5, v2, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    sget v6, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAX_TRANSLATE_DURING_TOUCH:F

    add-float v1, v5, v6

    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getImageViewWidth()I

    move-result v4

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sget v6, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAX_TRANSLATE_DURING_TOUCH:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5c

    iget v5, v2, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    sget v6, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAX_TRANSLATE_DURING_TOUCH:F

    add-float v0, v5, v6

    :cond_42
    :goto_42
    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_47
    const/4 v5, 0x1

    :goto_48
    return v5

    :cond_49
    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v3

    sget v7, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAX_TRANSLATE_DURING_TOUCH:F

    sub-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2f

    int-to-float v5, v3

    sget v6, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAX_TRANSLATE_DURING_TOUCH:F

    sub-float/2addr v5, v6

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v5, v6

    goto :goto_2f

    :cond_5c
    iget v5, v2, Landroid/graphics/RectF;->right:F

    int-to-float v6, v4

    sget v7, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAX_TRANSLATE_DURING_TOUCH:F

    sub-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_42

    int-to-float v5, v4

    sget v6, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAX_TRANSLATE_DURING_TOUCH:F

    sub-float/2addr v5, v6

    iget v6, v2, Landroid/graphics/RectF;->right:F

    sub-float v0, v5, v6

    goto :goto_42

    :cond_6f
    const/4 v5, 0x0

    goto :goto_48
.end method

.method private updateBaseMatrix()V
    .registers 12

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getImageViewWidth()I

    move-result v7

    int-to-float v6, v7

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getImageViewHeight()I

    move-result v7

    int-to-float v5, v7

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const-string/jumbo v7, "cx"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "drawableWidth:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",drawableHeight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v7, v1

    int-to-float v8, v0

    invoke-direct {v3, v10, v10, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v10, v10, v6, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v7, v3, v2, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBaseInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/16 v7, 0x9

    new-array v4, v7, [F

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v4}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v7, 0x0

    aget v7, v4, v7

    iput v7, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBaseScale:F

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->resetMatrix()V

    goto :goto_5
.end method


# virtual methods
.method public enterEdgeCutMode(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setGestureEnabled(Z)V

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    return-void
.end method

.method public enterEdgeCutMode(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->enterEdgeCutMode(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;)V

    invoke-virtual {p0, p2, p3}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setClothesTexture(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public enterNormalMode()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->releaseEdgeCutResource()V

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setGestureEnabled(Z)V

    iput v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCurMode:I

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->updateBaseMatrix()V

    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDrawMatrix()Landroid/graphics/Matrix;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getScale()F
    .registers 7

    const-wide/high16 v4, 0x4000

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getTouchToOrgBitmap(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBaseInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance v1, Landroid/graphics/PointF;

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method public isEdgeCutMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mGestureEnabled:Z

    return v0
.end method

.method public isHide()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->isHide:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_a1

    invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getRealDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    new-instance v4, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCurMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v8

    iget v4, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    invoke-virtual {v5}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->getRadius()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, v8, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    invoke-virtual {v6}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->getRadius()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, v8, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    invoke-virtual {v7}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->getRadius()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, v8, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->getRadius()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v7, v7, v18

    invoke-virtual {v8, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    invoke-virtual {v4}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->getCenter()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    invoke-virtual {v5}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->getCenter()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_a2

    :cond_a1
    :goto_a1
    return-void

    :cond_a2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    invoke-virtual {v4}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->getCenter()Landroid/graphics/PointF;

    move-result-object v4

    iget v0, v4, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    invoke-virtual {v4}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->getCenter()Landroid/graphics/PointF;

    move-result-object v4

    iget v0, v4, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getMagnifierCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    move/from16 v0, v16

    neg-float v4, v0

    sget v5, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAGNIFIER_RADIUS:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move/from16 v0, v17

    neg-float v5, v0

    sget v6, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAGNIFIER_RADIUS:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v13, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    invoke-virtual {v4, v2}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    sget v4, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAGNIFIER_RECT_STROKE:F

    const/high16 v5, 0x4000

    div-float v3, v4, v5

    sget v4, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAGNIFIER_RADIUS:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v5, v4, v3

    sget v4, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAGNIFIER_RADIUS:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v6, v4, v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMagnifierRectPaint:Landroid/graphics/Paint;

    move v4, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v4, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAGNIFIER_RADIUS:I

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    cmpg-float v4, v16, v4

    if-gez v4, :cond_167

    sget v4, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAGNIFIER_RADIUS:I

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    cmpg-float v4, v17, v4

    if-gez v4, :cond_167

    move/from16 v0, v16

    float-to-double v4, v0

    invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getImageViewWidth()I

    move-result v6

    int-to-double v6, v6

    const-wide v18, 0x400199999999999aL

    sget v20, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAGNIFIER_RADIUS:I

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    sub-double v6, v6, v18

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_15d

    move/from16 v0, v17

    float-to-double v4, v0

    const-wide v6, 0x400199999999999aL

    sget v18, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAGNIFIER_RADIUS:I

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v6, v6, v18

    cmpg-double v4, v4, v6

    if-lez v4, :cond_167

    :cond_15d
    invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getImageViewWidth()I

    move-result v4

    sget v5, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAGNIFIER_RADIUS:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v14, v4

    :cond_167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mMagnifierBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14, v15, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    float-to-int v10, v14

    sget v4, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAGNIFIER_RADIUS:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v14

    float-to-int v11, v4

    float-to-int v12, v15

    sget v4, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->MAGNIFIER_RADIUS:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v15

    float-to-int v9, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLRSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget v5, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->SHADOW_DEF_LENGTH:I

    add-int/2addr v5, v11

    invoke-virtual {v4, v11, v12, v5, v9}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mRLSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget v5, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->SHADOW_DEF_LENGTH:I

    sub-int v5, v10, v5

    invoke-virtual {v4, v5, v12, v10, v9}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mTBSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget v5, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->SHADOW_DEF_LENGTH:I

    add-int/2addr v5, v9

    invoke-virtual {v4, v10, v9, v11, v5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mTLBRSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget v5, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->SHADOW_CONNER_DEF_LENGTH:I

    add-int/2addr v5, v11

    sget v6, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->SHADOW_CONNER_DEF_LENGTH:I

    add-int/2addr v6, v9

    invoke-virtual {v4, v11, v9, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mTRBLSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget v5, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->SHADOW_CONNER_DEF_LENGTH:I

    sub-int v5, v10, v5

    sget v6, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->SHADOW_CONNER_DEF_LENGTH:I

    add-int/2addr v6, v9

    invoke-virtual {v4, v5, v9, v10, v6}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLRSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mRLSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mTBSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mTLBRSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mTRBLSlideShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_a1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 24

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mGestureEnabled:Z

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mIsEraserInit:Z

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    if-eqz v3, :cond_23

    const/4 v14, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_218

    :cond_23
    :goto_23
    :pswitch_23
    return v14

    :pswitch_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer0:Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer1:Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCurMode:I

    invoke-direct/range {p0 .. p1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->dispatchTouchEraserAndMaker(Landroid/view/MotionEvent;)V

    const-wide/16 v3, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->postInvalidateDelayed(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mTouchListener:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TouchListener;

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mTouchListener:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TouchListener;

    invoke-interface {v3}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TouchListener;->onTouchBegin()V

    goto :goto_23

    :pswitch_53
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCurMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_61

    invoke-direct/range {p0 .. p1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->dispatchTouchEraserAndMaker(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->postInvalidate()V

    goto :goto_23

    :cond_61
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCurMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer0:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer1:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v15

    invoke-direct/range {p0 .. p1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->distance(Landroid/view/MotionEvent;)F

    move-result v16

    div-float v19, v16, v15

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v11, v3, v4

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v12, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer0:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer1:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v9, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer0:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer1:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v10, v3, v4

    sub-float v20, v11, v9

    sub-float v21, v12, v10

    const/4 v13, 0x0

    sub-float v3, v16, v15

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_da

    const/4 v3, 0x0

    cmpl-float v3, v20, v3

    if-nez v3, :cond_da

    const/4 v3, 0x0

    cmpl-float v3, v21, v3

    if-eqz v3, :cond_e4

    :cond_da
    sub-float v3, v16, v15

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_133

    const v13, 0x7f7fffff

    :cond_e4
    :goto_e4
    const/high16 v3, 0x4000

    cmpg-float v3, v13, v3

    if-gez v3, :cond_f1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v11, v12}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setScale(FFF)V

    :cond_f1
    const/4 v3, 0x0

    cmpl-float v3, v20, v3

    if-eqz v3, :cond_104

    const/4 v3, 0x0

    cmpl-float v3, v21, v3

    if-eqz v3, :cond_104

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setTranslate(FF)Z

    :cond_104
    invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setImageMatrix()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer0:Landroid/graphics/PointF;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer1:Landroid/graphics/PointF;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_23

    :cond_133
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float v4, v16, v15

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float v13, v3, v4

    goto :goto_e4

    :pswitch_148
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCurMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_163

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct/range {p0 .. p1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->dispatchTouchEraserAndMaker(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_163
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCurMode:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer0:Landroid/graphics/PointF;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer1:Landroid/graphics/PointF;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->postInvalidate()V

    goto/16 :goto_23

    :pswitch_197
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCurMode:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer0:Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer1:Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->postInvalidate()V

    goto/16 :goto_23

    :pswitch_1b3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCurMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1bd

    invoke-direct/range {p0 .. p1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->dispatchTouchEraserAndMaker(Landroid/view/MotionEvent;)V

    :cond_1bd
    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getScale()F

    move-result v3

    const/high16 v4, 0x3f80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_20d

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v18

    if-eqz v18, :cond_1e7

    new-instance v3, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getScale()F

    move-result v5

    const/high16 v6, 0x3f80

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;-><init>(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;FFFF)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->post(Ljava/lang/Runnable;)Z

    :cond_1e7
    :goto_1e7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mCurMode:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer0:Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mLastEventPointer1:Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mTouchListener:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TouchListener;

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mTouchListener:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TouchListener;

    invoke-interface {v3}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TouchListener;->onTouchEnd()V

    goto/16 :goto_23

    :cond_20d
    invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->checkAndDisplayMatrixWithAnim()Z

    move-result v3

    if-nez v3, :cond_1e7

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->postInvalidate()V

    goto :goto_1e7

    nop

    :pswitch_data_218
    .packed-switch 0x0
        :pswitch_24
        :pswitch_1b3
        :pswitch_53
        :pswitch_1b3
        :pswitch_23
        :pswitch_148
        :pswitch_197
    .end packed-switch
.end method

.method public release()V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->releaseEdgeCutResource()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setGestureEnabled(Z)V

    return-void
.end method

.method public setClothesTexture(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    if-eqz p1, :cond_a

    if-nez p2, :cond_11

    :cond_a
    iput-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mClothesBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mClothesBaseMatrix:Landroid/graphics/Matrix;

    iput-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mClothesMatrix:Landroid/graphics/Matrix;

    :goto_10
    return-void

    :cond_11
    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mClothesBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mClothesBaseMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mClothesBaseMatrix:Landroid/graphics/Matrix;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v1, v0, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mClothesMatrix:Landroid/graphics/Matrix;

    goto :goto_10
.end method

.method public setEraser(Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->getCenter()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->setCenter(FF)V

    :cond_1a
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->copyFrom(Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mIsEraserInit:Z

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->getBrush()Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->setBrush(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->getRadius()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBaseScale:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->setRadius(I)V

    :cond_44
    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->postInvalidate()V

    goto :goto_2
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->updateBaseMatrix()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method public setTouchListener(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TouchListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mTouchListener:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TouchListener;

    return-void
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->checkAndDisplayMatrix()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method public updateDrawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0, p2}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->updatePathPaint(Landroid/graphics/Paint;)V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public updatePathPaint(Landroid/graphics/Paint;)V
    .registers 6

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPathPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_2c

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPathPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_2c
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    return-void
.end method
