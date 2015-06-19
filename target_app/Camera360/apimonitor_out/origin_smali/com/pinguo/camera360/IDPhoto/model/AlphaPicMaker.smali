.class public Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;
.super Ljava/lang/Object;
.source "AlphaPicMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;,
        Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$OnBitmapInvalidateListener;
    }
.end annotation


# static fields
.field private static final ERASE_COLOR:I = -0xf0f10

.field private static final RECOVER_COLOR:I = -0x7f001eea

.field private static final TOUCH_TOLERANCE:F = 4.0f


# instance fields
.field private mAllEntityList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBrush:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClearPaint:Landroid/graphics/Paint;

.field private mCurrentPath:Landroid/graphics/Path;

.field private mCurrentPathPaint:Landroid/graphics/Paint;

.field private mDownX:F

.field private mDownY:F

.field private mEdgeCutStack:Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;

.field private mHistoryPath:Landroid/graphics/Path;

.field public mListener:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$OnBitmapInvalidateListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathErasePaint:Landroid/graphics/Paint;

.field private mPathRecoverPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;->erase:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mBrush:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->initPaint()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCurrentPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mHistoryPath:Landroid/graphics/Path;

    new-instance v0, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;

    invoke-direct {v0}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mEdgeCutStack:Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mAllEntityList:Ljava/util/LinkedList;

    return-void
.end method

.method public static getBlurRadiusWFromStrokeW(F)I
    .registers 3

    const v0, 0x3da3d70a

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private initPaint()V
    .registers 6

    const/4 v4, 0x4

    const/high16 v3, 0x41f0

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathErasePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathErasePaint:Landroid/graphics/Paint;

    const v1, -0xf0f10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathErasePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathErasePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathErasePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathRecoverPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathRecoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathRecoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathRecoverPaint:Landroid/graphics/Paint;

    const v1, -0x7f001eea

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathRecoverPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathRecoverPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathRecoverPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathRecoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathRecoverPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mClearPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mClearPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathErasePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCurrentPathPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private makeBitmapAndCallListener(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mListener:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$OnBitmapInvalidateListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mListener:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$OnBitmapInvalidateListener;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, p1}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$OnBitmapInvalidateListener;->onBitmapInvalidate(Landroid/graphics/Bitmap;I)V

    :cond_b
    return-void
.end method

.method private radiusPaint()V
    .registers 8

    const/4 v4, 0x0

    const/high16 v6, 0x4000

    iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mRadius:F

    mul-float/2addr v2, v6

    const v3, 0x3f4ccccd

    mul-float v1, v2, v3

    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->getBlurRadiusWFromStrokeW(F)I

    move-result v0

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-lez v0, :cond_3e

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathErasePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_35
    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathRecoverPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mRadius:F

    mul-float/2addr v3, v6

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :cond_3e
    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_35
.end method

.method private scalePaint(F)V
    .registers 9

    const/4 v4, 0x0

    const/high16 v6, 0x4000

    iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mRadius:F

    mul-float/2addr v2, v6

    const v3, 0x3f733333

    mul-float/2addr v2, v3

    div-float v1, v2, p1

    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->getBlurRadiusWFromStrokeW(F)I

    move-result v0

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-lez v0, :cond_40

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathErasePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_36
    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathRecoverPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mRadius:F

    mul-float/2addr v3, v6

    div-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :cond_40
    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_36
.end method

.method private touch_cancel(FF)V
    .registers 8

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mHistoryPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iput p1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mX:F

    iput p2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mY:F

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mDownX:F

    iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mDownY:F

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_56

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCurrentPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCurrentPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mEdgeCutStack:Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mBrush:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    invoke-static {v4}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->getBlurRadiusWFromStrokeW(F)I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->push(Landroid/graphics/Path;Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;FI)V

    :cond_56
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->makeBitmapAndCallListener(I)V

    return-void
.end method

.method private touch_move(FF)V
    .registers 8

    const/high16 v3, 0x4080

    iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v0, v3

    if-gez v2, :cond_1a

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_47

    :cond_1a
    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mHistoryPath:Landroid/graphics/Path;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iput p1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mX:F

    iput p2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mY:F

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mListener:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$OnBitmapInvalidateListener;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mListener:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$OnBitmapInvalidateListener;

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCurrentPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCurrentPathPaint:Landroid/graphics/Paint;

    invoke-interface {v2, v3, v4}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$OnBitmapInvalidateListener;->onPathInvalidate(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_35
    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCurrentPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mX:F

    iget v4, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mHistoryPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mX:F

    iget v4, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_47
    return-void
.end method

.method private touch_start(FF)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mHistoryPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->setLastPoint(FF)V

    iput p1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mX:F

    iput p2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mY:F

    iput p1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mDownX:F

    iput p2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mDownY:F

    return-void
.end method

.method private touch_up(FF)V
    .registers 9

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mHistoryPath:Landroid/graphics/Path;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iput p1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mX:F

    iput p2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mY:F

    iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mDownX:F

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4e

    iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mDownY:F

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4e

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCanvas:Landroid/graphics/Canvas;

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mX:F

    iget v4, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mY:F

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mX:F

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mY:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mEdgeCutStack:Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mBrush:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    invoke-static {v5}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->getBlurRadiusWFromStrokeW(F)I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->push(Landroid/graphics/PointF;Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;FI)V

    :goto_49
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->makeBitmapAndCallListener(I)V

    return-void

    :cond_4e
    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCurrentPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCurrentPath:Landroid/graphics/Path;

    invoke-direct {v0, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mEdgeCutStack:Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mBrush:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    invoke-static {v5}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->getBlurRadiusWFromStrokeW(F)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->push(Landroid/graphics/Path;Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;FI)V

    goto :goto_49
.end method


# virtual methods
.method public canNext()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mEdgeCutStack:Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->canNext()Z

    move-result v0

    return v0
.end method

.method public canPrev()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mEdgeCutStack:Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->canPrev()Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCanvas:Landroid/graphics/Canvas;

    :cond_c
    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public doneGetEdgeCutList()Ljava/util/LinkedList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack$EdgeCutEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mAllEntityList:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mEdgeCutStack:Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;

    invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->doneGetAll()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mAllEntityList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public next()V
    .registers 3

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mEdgeCutStack:Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;

    invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->next()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_b
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->makeBitmapAndCallListener(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;F)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->scalePaint(F)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_28

    :goto_12
    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->radiusPaint()V

    const/4 v2, 0x1

    return v2

    :pswitch_17
    invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->touch_start(FF)V

    goto :goto_12

    :pswitch_1b
    invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->touch_move(FF)V

    goto :goto_12

    :pswitch_1f
    invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->touch_up(FF)V

    goto :goto_12

    :pswitch_23
    invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->touch_cancel(FF)V

    goto :goto_12

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1f
        :pswitch_1b
        :pswitch_23
    .end packed-switch
.end method

.method public prev()V
    .registers 3

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mEdgeCutStack:Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;

    invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->prev()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_b
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->makeBitmapAndCallListener(I)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 6

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v2, p1, :cond_6

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const/4 v1, 0x0

    :goto_8
    const/4 v2, 0x3

    if-lt v1, v2, :cond_15

    :goto_b
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCanvas:Landroid/graphics/Canvas;

    goto :goto_6

    :cond_15
    :try_start_15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    if-nez v2, :cond_2a

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_24
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_24} :catch_25

    goto :goto_b

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_8

    :cond_2a
    :try_start_2a
    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_2c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2a .. :try_end_2c} :catch_25

    goto :goto_b
.end method

.method public setBrush(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mBrush:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mBrush:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;

    sget-object v1, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;->erase:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathErasePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCurrentPathPaint:Landroid/graphics/Paint;

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mBrush:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;

    sget-object v1, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;->recover:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mPathRecoverPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mCurrentPathPaint:Landroid/graphics/Paint;

    goto :goto_13
.end method

.method public setOnBitmapInvalidateListener(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$OnBitmapInvalidateListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mListener:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$OnBitmapInvalidateListener;

    return-void
.end method

.method public setOrgBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mEdgeCutStack:Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/IDPhoto/model/EdgeCutStack;->setOrgBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setRadius(I)V
    .registers 3

    int-to-float v0, p1

    iput v0, p0, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->mRadius:F

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->radiusPaint()V

    return-void
.end method
