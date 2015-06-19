.class public Lcom/pinguo/share/ui/dialog/ShareRotateLayout;
.super Landroid/view/ViewGroup;
.source "ShareRotateLayout.java"

# interfaces
.implements Lcom/pinguo/share/ui/dialog/ShareRotatable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static LOWER_HONEYCOMB:Z


# instance fields
.field protected mChild:Landroid/view/View;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->LOWER_HONEYCOMB:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->setBackgroundResource(I)V

    return-void
.end method

.method private getCoordOrientation(F)F
    .registers 9

    const v2, 0x3fc90fdb

    const-wide v5, 0x400921fb54442d18L

    move v0, p1

    iget v1, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mOrientation:I

    sparse-switch v1, :sswitch_data_32

    :goto_e
    float-to-double v1, v0

    const-wide v3, -0x4006de04abbbd2e8L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_24

    float-to-double v1, v0

    add-double/2addr v1, v5

    double-to-float v0, v1

    :cond_1b
    :goto_1b
    return v0

    :sswitch_1c
    sub-float v0, p1, v2

    goto :goto_e

    :sswitch_1f
    add-float v0, p1, v2

    goto :goto_e

    :sswitch_22
    neg-float v0, p1

    goto :goto_e

    :cond_24
    float-to-double v1, v0

    const-wide v3, 0x3ff921fb54442d18L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1b

    float-to-double v1, v0

    sub-double/2addr v1, v5

    double-to-float v0, v1

    goto :goto_1b

    :sswitch_data_32
    .sparse-switch
        0x5a -> :sswitch_1c
        0xb4 -> :sswitch_22
        0x10e -> :sswitch_1f
    .end sparse-switch
.end method

.method private getMtionEvent(Landroid/view/MotionEvent;IFF)Landroid/view/MotionEvent;
    .registers 27
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    move/from16 v0, p2

    new-array v8, v0, [I

    move/from16 v0, p2

    new-array v9, v0, [Landroid/view/MotionEvent$PointerCoords;

    const/16 v18, 0x0

    :goto_a
    move/from16 v0, v18

    move/from16 v1, p2

    if-lt v0, v1, :cond_3f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    move/from16 v7, p2

    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v19

    return-object v19

    :cond_3f
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    aput v2, v8, v18

    new-instance v17, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v17 .. v17}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_126

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    :goto_7d
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolMajor(I)F

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolMinor(I)F

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    aput-object v17, v9, v18

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_a

    :sswitch_cb
    sub-float v2, p3, v20

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v2, p4, v21

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v2

    neg-float v2, v2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_7d

    :sswitch_e5
    sub-float v2, p4, v21

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->getCoordOrientation(F)F

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto/16 :goto_7d

    :sswitch_105
    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v2, p3, v20

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->getCoordOrientation(F)F

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto/16 :goto_7d

    nop

    :sswitch_data_126
    .sparse-switch
        0x5a -> :sswitch_e5
        0xb4 -> :sswitch_cb
        0x10e -> :sswitch_105
    .end sparse-switch
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const/high16 v3, 0x4000

    sget-boolean v0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->LOWER_HONEYCOMB:Z

    if-eqz v0, :cond_75

    iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mOrientation:I

    sparse-switch v0, :sswitch_data_7a

    :goto_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_14
    return-void

    :sswitch_15
    iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_b

    :sswitch_2d
    iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_b

    :sswitch_45
    iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_b

    :sswitch_5d
    iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_b

    :cond_75
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_14

    nop

    :sswitch_data_7a
    .sparse-switch
        0x0 -> :sswitch_15
        0x5a -> :sswitch_45
        0xb4 -> :sswitch_2d
        0x10e -> :sswitch_5d
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    iget v6, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mOrientation:I

    if-nez v6, :cond_9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    :goto_8
    return v6

    :cond_9
    sget-boolean v6, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->LOWER_HONEYCOMB:Z

    if-eqz v6, :cond_64

    invoke-virtual {p0}, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->getWidth()I

    move-result v6

    int-to-float v3, v6

    invoke-virtual {p0}, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->getHeight()I

    move-result v6

    int-to-float v1, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_49

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mOrientation:I

    sparse-switch v6, :sswitch_data_6a

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    :goto_2e
    iget-object v6, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_8

    :sswitch_35
    sub-float v6, v3, v4

    sub-float v7, v1, v5

    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_2e

    :sswitch_3d
    sub-float v6, v1, v5

    invoke-virtual {p1, v6, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_2e

    :sswitch_43
    sub-float v6, v3, v4

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_2e

    :cond_49
    const/4 v6, 0x2

    if-ne v0, v6, :cond_5d

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v6, v7, :cond_5d

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->getMtionEvent(Landroid/view/MotionEvent;IFF)Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v6, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_8

    :cond_5d
    iget-object v6, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_8

    :cond_64
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_8

    nop

    :sswitch_data_6a
    .sparse-switch
        0x5a -> :sswitch_3d
        0xb4 -> :sswitch_35
        0x10e -> :sswitch_43
    .end sparse-switch
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 6

    const/4 v2, 0x0

    sget-boolean v0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->LOWER_HONEYCOMB:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    sget-boolean v0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->LOWER_HONEYCOMB:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_16
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    const/4 v3, 0x0

    sub-int v1, p4, p2

    sub-int v0, p5, p3

    iget v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_1c

    :goto_a
    return-void

    :sswitch_b
    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_a

    :sswitch_11
    :try_start_11
    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_19

    goto :goto_a

    :catch_19
    move-exception v2

    goto :goto_a

    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_b
        0x5a -> :sswitch_11
        0xb4 -> :sswitch_b
        0x10e -> :sswitch_11
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 8

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_76

    :goto_8
    invoke-virtual {p0, v1, v0}, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->setMeasuredDimension(II)V

    sget-boolean v2, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->LOWER_HONEYCOMB:Z

    if-nez v2, :cond_72

    iget v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_88

    :goto_14
    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    iget v3, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    :goto_1d
    return-void

    :sswitch_1e
    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->measureChild(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_8

    :sswitch_30
    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p2, p1}, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->measureChild(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_8

    :sswitch_42
    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_14

    :sswitch_4d
    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_14

    :sswitch_59
    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_14

    :sswitch_66
    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_14

    :cond_72
    invoke-virtual {p0}, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->invalidate()V

    goto :goto_1d

    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_1e
        0x5a -> :sswitch_30
        0xb4 -> :sswitch_1e
        0x10e -> :sswitch_30
    .end sparse-switch

    :sswitch_data_88
    .sparse-switch
        0x0 -> :sswitch_42
        0x5a -> :sswitch_4d
        0xb4 -> :sswitch_59
        0x10e -> :sswitch_66
    .end sparse-switch
.end method

.method public setOrientation(IZ)V
    .registers 4

    rem-int/lit16 p1, p1, 0x168

    iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mOrientation:I

    if-ne v0, p1, :cond_7

    :goto_6
    return-void

    :cond_7
    iput p1, p0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->mOrientation:I

    invoke-virtual {p0}, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;->requestLayout()V

    goto :goto_6
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
