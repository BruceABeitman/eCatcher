.class public Lcom/pinguo/camera360/puzzle/PuzzleSystemView;
.super Landroid/view/SurfaceView;
.source "PuzzleSystemView.java"

# interfaces
.implements Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$OnRequestLayoutListener;


# static fields
.field private static final TAP:Ljava/lang/String;


# instance fields
.field private mLayoutRadioInTemplate:F

.field private mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->TAP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->mLayoutRadioInTemplate:F

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->mLayoutRadioInTemplate:F

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->mLayoutRadioInTemplate:F

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public drawOutputPhoto()Landroid/graphics/Bitmap;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->drawOutputPhoto()Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    throw v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public drawTempPhoto()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->drawTempPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPuzzleSystem()Lcom/pinguo/camera360/puzzle/PuzzleSystem;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    return-object v0
.end method

.method public getPuzzleTemplate()Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->getPuzzleTemplate()Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 20

    sget-object v14, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->TAP:Ljava/lang/String;

    const-string/jumbo v15, " --- start ---- >"

    invoke-static {v14, v15}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->mLayoutRadioInTemplate:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_1d

    invoke-super/range {p0 .. p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    sget-object v14, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->TAP:Ljava/lang/String;

    const-string/jumbo v15, " --- onMeasure by system method"

    invoke-static {v14, v15}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    return-void

    :cond_1d
    sget-object v14, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->TAP:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, " --- onMeasure by puzzle tempalte BL : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->mLayoutRadioInTemplate:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->mLayoutRadioInTemplate:F

    const/16 v3, 0x64

    const/16 v2, 0x64

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    const/high16 v14, 0x4000

    if-ne v12, v14, :cond_dd

    move v11, v13

    :goto_55
    const/high16 v14, 0x4000

    if-ne v7, v14, :cond_ea

    move v6, v8

    :goto_5a
    sget-object v14, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->TAP:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, " --- onMeasure, size org : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " x "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", bl = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v11

    move v4, v6

    if-le v11, v6, :cond_f7

    int-to-float v14, v11

    div-float/2addr v14, v1

    float-to-int v4, v14

    if-le v4, v6, :cond_99

    const/high16 v14, 0x3f80

    int-to-float v15, v6

    mul-float/2addr v14, v15

    int-to-float v15, v4

    div-float v10, v14, v15

    move v4, v6

    int-to-float v14, v11

    mul-float/2addr v14, v10

    float-to-int v5, v14

    :cond_99
    :goto_99
    const/high16 v14, 0x3f80

    int-to-float v15, v5

    mul-float/2addr v14, v15

    int-to-float v15, v4

    div-float v9, v14, v15

    sget-object v14, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->TAP:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, " --- onMeasure, size = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " x "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", bl = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", real bl = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->setMeasuredDimension(II)V

    goto/16 :goto_1c

    :cond_dd
    const/high16 v14, -0x8000

    if-ne v12, v14, :cond_e7

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto/16 :goto_55

    :cond_e7
    move v11, v3

    goto/16 :goto_55

    :cond_ea
    const/high16 v14, -0x8000

    if-ne v7, v14, :cond_f4

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto/16 :goto_5a

    :cond_f4
    move v6, v2

    goto/16 :goto_5a

    :cond_f7
    int-to-float v14, v6

    mul-float/2addr v14, v1

    float-to-int v5, v14

    if-le v5, v11, :cond_99

    const/high16 v14, 0x3f80

    int-to-float v15, v11

    mul-float/2addr v14, v15

    int-to-float v15, v5

    div-float v10, v14, v15

    move v5, v11

    int-to-float v14, v6

    mul-float/2addr v14, v10

    float-to-int v4, v14

    goto :goto_99
.end method

.method public onRequestLayout(Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;)V
    .registers 3

    invoke-virtual {p1}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->getLayoutRadioInTemplate()F

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->mLayoutRadioInTemplate:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->TAP:Ljava/lang/String;

    const-string/jumbo v1, " get a request layout msg"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/SurfaceView;->requestLayout()V

    return-void
.end method

.method public setPuzzleTempalte(Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->setPuzzleTempalte(Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;)V

    invoke-virtual {p1, p0}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->setRequstListener(Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$OnRequestLayoutListener;)V

    return-void
.end method
