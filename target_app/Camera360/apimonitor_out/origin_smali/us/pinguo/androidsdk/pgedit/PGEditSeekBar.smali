.class public Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
.super Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;
.source "PGEditSeekBar.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnDrawListener;


# static fields
.field private static final DEFALUT_RATE:F = -1.0f

.field private static final HIDE:I = 0x2

.field private static final OPERATION_START_HIDE:I = 0x1


# instance fields
.field private canAniamtion:Z

.field private hideAnimation:Landroid/view/animation/AlphaAnimation;

.field private isOperationStart:Z

.field private mDefalutLinePaint:Landroid/graphics/Paint;

.field private mDefaultValueRate:F

.field private mHandler:Landroid/os/Handler;

.field private mValueChangedListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;

.field private showAnimation:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x4080

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mDefaultValueRate:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mDefalutLinePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mDefalutLinePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mDefalutLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mDefalutLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar$1;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setmOnDrawListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnDrawListener;)V

    invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->editInit(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x4080

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mDefaultValueRate:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mDefalutLinePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mDefalutLinePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mDefalutLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mDefalutLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar$1;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setmOnDrawListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnDrawListener;)V

    invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->editInit(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;)Z
    .registers 2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->isOperationStart:Z

    return v0
.end method

.method static synthetic access$1(Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;)Z
    .registers 2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->canAniamtion:Z

    return v0
.end method

.method static synthetic access$2(Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;)Landroid/view/animation/AlphaAnimation;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->hideAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method


# virtual methods
.method public clearDefaultValueRate()V
    .registers 2

    const/high16 v0, -0x4080

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mDefaultValueRate:F

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->invalidate()V

    return-void
.end method

.method public editInit(Landroid/content/Context;)V
    .registers 11

    const-wide/16 v7, 0x320

    const/4 v6, 0x1

    const/high16 v5, 0x3f80

    const v4, 0x3ecccccd

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "pg_sdk_edit_txt_selected"

    invoke-static {p1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v3}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setOrientation(Z)V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->getLinePaint1()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->hideAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->hideAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->hideAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->hideAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->showAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->showAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->showAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->showAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    return-void
.end method

.method public endAnimation()V
    .registers 5

    const/4 v3, 0x0

    iput-boolean v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->canAniamtion:Z

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ecccccd

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public getProgress()I
    .registers 3

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->getCurrentSeekValue()F

    move-result v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public onHorizontalDrawLineFinish(Landroid/graphics/Canvas;IIII)V
    .registers 15

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mDefaultValueRate:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->getPaddingTop()I

    move-result v8

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mThumbRadius:I

    mul-int/lit8 v0, v0, 0x2

    add-int v6, v0, v8

    sub-int v0, p5, p2

    int-to-float v0, v0

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mDefaultValueRate:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int v7, v0, p2

    if-lt v7, p2, :cond_2d

    if-gt v7, p3, :cond_2d

    int-to-float v1, v7

    int-to-float v2, v8

    int-to-float v3, v7

    int-to-float v4, v6

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mDefalutLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    if-lt v7, p4, :cond_2c

    if-gt v7, p5, :cond_2c

    int-to-float v1, v7

    int-to-float v2, v8

    int-to-float v3, v7

    int-to-float v4, v6

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mDefalutLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2c
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    :goto_7
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->isOperationStart:Z

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->showAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7

    :pswitch_1d
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_e
        :pswitch_1d
    .end packed-switch
.end method

.method public setCurrentSeekValue(F)V
    .registers 3

    invoke-super {p0, p1}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->setCurrentSeekValue(F)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mValueChangedListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mValueChangedListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;

    invoke-interface {v0, p1}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;->onSeekValueChanged(F)V

    :cond_c
    return-void
.end method

.method public setDefaultValueRate(F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mDefaultValueRate:F

    return-void
.end method

.method public setOnSeekChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->setOnSeekChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V

    invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setValueChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V

    return-void
.end method

.method public setProgress(I)V
    .registers 4

    int-to-float v0, p1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setCurrentSeekValue(F)V

    return-void
.end method

.method public setValueChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mValueChangedListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;

    return-void
.end method

.method public startHideAnimation()V
    .registers 5

    const/4 v3, 0x1

    iput-boolean v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->canAniamtion:Z

    iput-boolean v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->isOperationStart:Z

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
