.class public Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;
.super Landroid/view/SurfaceView;
.source "SonyLiveviewSurfaceView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFramePaint:Landroid/graphics/Paint;

.field private mLiveviewFrame:Landroid/graphics/Rect;

.field private mPreviousHeight:I

.field private mPreviousWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mPreviousWidth:I

    iput v0, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mPreviousHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mLiveviewFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mFramePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mPreviousWidth:I

    iput v0, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mPreviousHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mLiveviewFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mFramePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mPreviousWidth:I

    iput v0, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mPreviousHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mLiveviewFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mFramePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method private drawBlackFrame()V
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_b
.end method

.method private onDetectedFrameSizeChanged(II)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Change of aspect ratio detected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mPreviousWidth:I

    iput p2, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mPreviousHeight:I

    invoke-direct {p0}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->drawBlackFrame()V

    invoke-direct {p0}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->drawBlackFrame()V

    invoke-direct {p0}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->drawBlackFrame()V

    return-void
.end method


# virtual methods
.method public drawFrame(Landroid/graphics/Bitmap;)V
    .registers 13

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mPreviousWidth:I

    if-ne v8, v9, :cond_11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mPreviousHeight:I

    if-eq v8, v9, :cond_1d

    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->onDetectedFrameSizeChanged(II)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    invoke-virtual {p0}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v10, v10, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v7

    div-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v3

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->getWidth()I

    move-result v8

    int-to-float v9, v7

    mul-float/2addr v9, v0

    float-to-int v9, v9

    sub-int/2addr v8, v9

    div-int/lit8 v4, v8, 0x2

    invoke-virtual {p0}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->getHeight()I

    move-result v8

    int-to-float v9, v3

    mul-float/2addr v9, v0

    float-to-int v9, v9

    sub-int/2addr v8, v9

    div-int/lit8 v5, v8, 0x2

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->getWidth()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {p0}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->getHeight()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-direct {v2, v4, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mLiveviewFrame:Landroid/graphics/Rect;

    const/high16 v8, -0x100

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v8, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v6, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_1c
.end method

.method public getLiveviewFrame()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyLiveviewSurfaceView;->mLiveviewFrame:Landroid/graphics/Rect;

    return-object v0
.end method
