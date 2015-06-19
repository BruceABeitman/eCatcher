.class public Lcom/glympse/android/controls/GlympseProgressBar;
.super Landroid/widget/ProgressBar;
.source "GlympseProgressBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlympseProgressBar"

.field private static final _showDebug:Z


# instance fields
.field protected _backgroundBmp:Landroid/graphics/Bitmap;

.field protected _leftBackground:Landroid/graphics/Rect;

.field protected _leftForeground:Landroid/graphics/Rect;

.field protected _paintDebug:Landroid/graphics/Paint;

.field protected _progress:I

.field protected _progressBmp:Landroid/graphics/Bitmap;

.field private _rectClip:Landroid/graphics/Rect;

.field private _rectScratch:Landroid/graphics/Rect;

.field private _rectScratch2:Landroid/graphics/Rect;

.field protected _rightBackground:Landroid/graphics/Rect;

.field protected _rightForeground:Landroid/graphics/Rect;

.field protected _stretchBackground:Landroid/graphics/Rect;

.field protected _stretchForeground:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_paintDebug:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_progressBmp:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_backgroundBmp:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_progress:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_leftBackground:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rightBackground:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_stretchBackground:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_leftForeground:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rightForeground:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_stretchForeground:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectClip:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch2:Landroid/graphics/Rect;

    sget-object v0, Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;->COLOR_BLUE:Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;

    invoke-virtual {p0, p1, v0}, Lcom/glympse/android/controls/GlympseProgressBar;->setColorSet(Landroid/content/Context;Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_paintDebug:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_progressBmp:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_backgroundBmp:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_progress:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_leftBackground:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rightBackground:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_stretchBackground:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_leftForeground:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rightForeground:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_stretchForeground:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectClip:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch2:Landroid/graphics/Rect;

    sget-object v0, Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;->COLOR_BLUE:Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;

    invoke-virtual {p0, p1, v0}, Lcom/glympse/android/controls/GlympseProgressBar;->setColorSet(Landroid/content/Context;Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getProgress()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_progress:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/glympse/android/controls/GlympseProgressBar;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_backgroundBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_leftBackground:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_leftBackground:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_stretchBackground:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_stretchBackground:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_stretchBackground:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rightBackground:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_backgroundBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_stretchBackground:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rightBackground:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_backgroundBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rightBackground:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/glympse/android/controls/GlympseProgressBar;->getProgress()I

    move-result v0

    mul-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x64

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_leftForeground:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-le v0, v2, :cond_6c

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_6c
    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_progressBmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_stretchBackground:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_stretchBackground:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_stretchBackground:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rightBackground:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v3, Landroid/graphics/Rect;->right:I

    if-ge v0, v2, :cond_b5

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-le v0, v2, :cond_a8

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_a8
    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_progressBmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_stretchForeground:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_b5
    if-ge v0, v2, :cond_e1

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rightForeground:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v2, v0

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rightForeground:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_progressBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch2:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rectScratch:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_e1
    return-void
.end method

.method public setColorSet(Landroid/content/Context;Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/glympse/android/controls/GlympseProgressBar$1;->$SwitchMap$com$glympse$android$controls$GlympseProgressBar$BAR_COLOR:[I

    invoke-virtual {p2}, Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_e4

    const-string v0, "GlympseProgressBar"

    const-string v1, "Couldn\'t set a color set! Did you create a new one without defining it in setColorSet()?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_leftForeground:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_progressBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_leftForeground:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_progressBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rightForeground:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_progressBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rightForeground:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_progressBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rightForeground:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_progressBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_stretchForeground:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_progressBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_stretchForeground:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_leftForeground:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_stretchForeground:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rightForeground:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_leftBackground:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_backgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_leftBackground:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_backgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rightBackground:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_backgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rightBackground:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_backgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rightBackground:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_backgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_stretchBackground:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_backgroundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_stretchBackground:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_leftBackground:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_stretchBackground:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_rightBackground:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    return-void

    :pswitch_bf
    sget v1, Lcom/glympse/android/controls/R$drawable;->glympse_bar_orange_fill:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_progressBmp:Landroid/graphics/Bitmap;

    sget v1, Lcom/glympse/android/controls/R$drawable;->glympse_bar_orange_bg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_backgroundBmp:Landroid/graphics/Bitmap;

    goto/16 :goto_16

    :pswitch_d1
    sget v1, Lcom/glympse/android/controls/R$drawable;->glympse_bar_blue_fill:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_progressBmp:Landroid/graphics/Bitmap;

    sget v1, Lcom/glympse/android/controls/R$drawable;->glympse_bar_blue_bg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_backgroundBmp:Landroid/graphics/Bitmap;

    goto/16 :goto_16

    nop

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_bf
        :pswitch_d1
    .end packed-switch
.end method

.method public setFGColor(I)V
    .registers 2

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/glympse/android/controls/GlympseProgressBar;->getProgress()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_39

    move-result v0

    if-ne p1, v0, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    if-nez p1, :cond_12

    :try_start_b
    const-string v0, "GlympseProgressBar"

    const-string v1, "Break here!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string v0, "GlympseProgressBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setProgress("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iput p1, p0, Lcom/glympse/android/controls/GlympseProgressBar;->_progress:I

    invoke-virtual {p0}, Lcom/glympse/android/controls/GlympseProgressBar;->postInvalidate()V
    :try_end_38
    .catchall {:try_start_b .. :try_end_38} :catchall_39

    goto :goto_7

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method
