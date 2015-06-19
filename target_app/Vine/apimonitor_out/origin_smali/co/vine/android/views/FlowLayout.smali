.class public Lco/vine/android/views/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/views/FlowLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private debugDraw:Z

.field private horizontalSpacing:I

.field private orientation:I

.field private verticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lco/vine/android/views/FlowLayout;->horizontalSpacing:I

    iput v0, p0, Lco/vine/android/views/FlowLayout;->verticalSpacing:I

    iput v0, p0, Lco/vine/android/views/FlowLayout;->orientation:I

    iput-boolean v0, p0, Lco/vine/android/views/FlowLayout;->debugDraw:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/vine/android/views/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lco/vine/android/views/FlowLayout;->horizontalSpacing:I

    iput v0, p0, Lco/vine/android/views/FlowLayout;->verticalSpacing:I

    iput v0, p0, Lco/vine/android/views/FlowLayout;->orientation:I

    iput-boolean v0, p0, Lco/vine/android/views/FlowLayout;->debugDraw:Z

    invoke-direct {p0, p1, p2}, Lco/vine/android/views/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lco/vine/android/views/FlowLayout;->horizontalSpacing:I

    iput v0, p0, Lco/vine/android/views/FlowLayout;->verticalSpacing:I

    iput v0, p0, Lco/vine/android/views/FlowLayout;->orientation:I

    iput-boolean v0, p0, Lco/vine/android/views/FlowLayout;->debugDraw:Z

    invoke-direct {p0, p1, p2}, Lco/vine/android/views/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createPaint(I)Landroid/graphics/Paint;
    .registers 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object v0
.end method

.method private drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V
    .registers 18

    iget-boolean v0, p0, Lco/vine/android/views/FlowLayout;->debugDraw:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/16 v0, -0x100

    invoke-direct {p0, v0}, Lco/vine/android/views/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v5

    const v0, -0xff0100

    invoke-direct {p0, v0}, Lco/vine/android/views/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v12

    const/high16 v0, -0x1

    invoke-direct {p0, v0}, Lco/vine/android/views/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lco/vine/android/views/FlowLayout$LayoutParams;

    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {v13}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$200(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v0

    if-lez v0, :cond_10c

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v2, v0, v3

    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {v13}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$200(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    move-object/from16 v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {v13}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$200(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x4080

    sub-float v7, v0, v3

    const/high16 v0, 0x4080

    sub-float v8, v2, v0

    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {v13}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$200(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {v13}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$200(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x4080

    sub-float v7, v0, v3

    const/high16 v0, 0x4080

    add-float v8, v2, v0

    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {v13}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$200(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_7d
    :goto_7d
    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {v13}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$100(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v0

    if-lez v0, :cond_164

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v1, v0, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v2, v0

    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {v13}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$100(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v4, v2, v0

    move-object/from16 v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x4080

    sub-float v7, v1, v0

    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {v13}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$100(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x4080

    sub-float v8, v0, v3

    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {v13}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$100(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x4080

    add-float v7, v1, v0

    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {v13}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$100(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x4080

    sub-float v8, v0, v3

    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {v13}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$100(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_dc
    :goto_dc
    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->newLine:Z
    invoke-static {v13}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$000(Lco/vine/android/views/FlowLayout$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lco/vine/android/views/FlowLayout;->orientation:I

    if-nez v0, :cond_1bc

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v2, v0, v3

    const/high16 v0, 0x40c0

    sub-float v8, v2, v0

    const/high16 v0, 0x40c0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v7, v1

    move v9, v1

    move-object v11, v14

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_10c
    iget v0, p0, Lco/vine/android/views/FlowLayout;->horizontalSpacing:I

    if-lez v0, :cond_7d

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v2, v0, v3

    iget v0, p0, Lco/vine/android/views/FlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v7, v1

    move v8, v2

    move v10, v2

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lco/vine/android/views/FlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x4080

    sub-float v7, v0, v3

    const/high16 v0, 0x4080

    sub-float v8, v2, v0

    iget v0, p0, Lco/vine/android/views/FlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lco/vine/android/views/FlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x4080

    sub-float v7, v0, v3

    const/high16 v0, 0x4080

    add-float v8, v2, v0

    iget v0, p0, Lco/vine/android/views/FlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_7d

    :cond_164
    iget v0, p0, Lco/vine/android/views/FlowLayout;->verticalSpacing:I

    if-lez v0, :cond_dc

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v1, v0, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v2, v0

    iget v0, p0, Lco/vine/android/views/FlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v7, v1

    move v8, v2

    move v9, v1

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x4080

    sub-float v7, v1, v0

    iget v0, p0, Lco/vine/android/views/FlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x4080

    sub-float v8, v0, v3

    iget v0, p0, Lco/vine/android/views/FlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x4080

    add-float v7, v1, v0

    iget v0, p0, Lco/vine/android/views/FlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x4080

    sub-float v8, v0, v3

    iget v0, p0, Lco/vine/android/views/FlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_dc

    :cond_1bc
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v1, v0, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    const/high16 v0, 0x40c0

    sub-float v7, v1, v0

    const/high16 v0, 0x40c0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v8, v2

    move v10, v2

    move-object v11, v14

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4
.end method

.method private getHorizontalSpacing(Lco/vine/android/views/FlowLayout$LayoutParams;)I
    .registers 4

    invoke-virtual {p1}, Lco/vine/android/views/FlowLayout$LayoutParams;->horizontalSpacingSpecified()Z

    move-result v1

    if-eqz v1, :cond_b

    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {p1}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$200(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lco/vine/android/views/FlowLayout;->horizontalSpacing:I

    goto :goto_a
.end method

.method private getVerticalSpacing(Lco/vine/android/views/FlowLayout$LayoutParams;)I
    .registers 4

    invoke-virtual {p1}, Lco/vine/android/views/FlowLayout$LayoutParams;->verticalSpacingSpecified()Z

    move-result v1

    if-eqz v1, :cond_b

    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {p1}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$100(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lco/vine/android/views/FlowLayout;->verticalSpacing:I

    goto :goto_a
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/views/FlowLayout;->horizontalSpacing:I

    iput v0, p0, Lco/vine/android/views/FlowLayout;->verticalSpacing:I

    iput v0, p0, Lco/vine/android/views/FlowLayout;->orientation:I

    iput-boolean v0, p0, Lco/vine/android/views/FlowLayout;->debugDraw:Z

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Lco/vine/android/views/FlowLayout$LayoutParams;

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    invoke-direct {p0, p1, p2}, Lco/vine/android/views/FlowLayout;->drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Lco/vine/android/views/FlowLayout;->generateDefaultLayoutParams()Lco/vine/android/views/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lco/vine/android/views/FlowLayout$LayoutParams;
    .registers 3

    const/4 v1, -0x2

    new-instance v0, Lco/vine/android/views/FlowLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lco/vine/android/views/FlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Lco/vine/android/views/FlowLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lco/vine/android/views/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Lco/vine/android/views/FlowLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lco/vine/android/views/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lco/vine/android/views/FlowLayout$LayoutParams;
    .registers 4

    new-instance v0, Lco/vine/android/views/FlowLayout$LayoutParams;

    invoke-virtual {p0}, Lco/vine/android/views/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lco/vine/android/views/FlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lco/vine/android/views/FlowLayout$LayoutParams;
    .registers 3

    new-instance v0, Lco/vine/android/views/FlowLayout$LayoutParams;

    invoke-direct {v0, p1}, Lco/vine/android/views/FlowLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 15

    invoke-virtual {p0}, Lco/vine/android/views/FlowLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_31

    invoke-virtual {p0, v2}, Lco/vine/android/views/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lco/vine/android/views/FlowLayout$LayoutParams;

    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->x:I
    invoke-static {v3}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$300(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v4

    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->y:I
    invoke-static {v3}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$400(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v5

    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->x:I
    invoke-static {v3}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$300(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->y:I
    invoke-static {v3}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$400(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_31
    return-void
.end method

.method protected onMeasure(II)V
    .registers 37

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingLeft()I

    move-result v32

    sub-int v27, v31, v32

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingTop()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingBottom()I

    move-result v32

    sub-int v26, v31, v32

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/views/FlowLayout;->orientation:I

    move/from16 v31, v0

    if-nez v31, :cond_58

    move/from16 v25, v27

    move/from16 v18, v20

    :goto_34
    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/16 v24, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getChildCount()I

    move-result v10

    const/4 v12, 0x0

    :goto_41
    if-ge v12, v10, :cond_12e

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lco/vine/android/views/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5d

    :goto_55
    add-int/lit8 v12, v12, 0x1

    goto :goto_41

    :cond_58
    move/from16 v25, v26

    move/from16 v18, v19

    goto :goto_34

    :cond_5d
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lco/vine/android/views/FlowLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingLeft()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingRight()I

    move-result v32

    add-int v31, v31, v32

    move-object/from16 v0, v17

    iget v0, v0, Lco/vine/android/views/FlowLayout$LayoutParams;->width:I

    move/from16 v32, v0

    move/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lco/vine/android/views/FlowLayout;->getChildMeasureSpec(III)I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingTop()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingBottom()I

    move-result v33

    add-int v32, v32, v33

    move-object/from16 v0, v17

    iget v0, v0, Lco/vine/android/views/FlowLayout$LayoutParams;->height:I

    move/from16 v33, v0

    move/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lco/vine/android/views/FlowLayout;->getChildMeasureSpec(III)I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lco/vine/android/views/FlowLayout;->getHorizontalSpacing(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v11

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lco/vine/android/views/FlowLayout;->getVerticalSpacing(Lco/vine/android/views/FlowLayout$LayoutParams;)I

    move-result v30

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/views/FlowLayout;->orientation:I

    move/from16 v31, v0

    if-nez v31, :cond_115

    move v5, v7

    move v6, v4

    move/from16 v28, v11

    move/from16 v29, v30

    :goto_c4
    add-int v13, v14, v5

    add-int v14, v13, v28

    #getter for: Lco/vine/android/views/FlowLayout$LayoutParams;->newLine:Z
    invoke-static/range {v17 .. v17}, Lco/vine/android/views/FlowLayout$LayoutParams;->access$000(Lco/vine/android/views/FlowLayout$LayoutParams;)Z

    move-result v31

    if-nez v31, :cond_d4

    if-eqz v18, :cond_11c

    move/from16 v0, v25

    if-le v13, v0, :cond_11c

    :cond_d4
    const/16 v21, 0x1

    :goto_d6
    if-eqz v21, :cond_e0

    add-int v24, v24, v16

    move v15, v6

    move v13, v5

    add-int v16, v6, v29

    add-int v14, v13, v28

    :cond_e0
    add-int v31, v6, v29

    move/from16 v0, v16

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/views/FlowLayout;->orientation:I

    move/from16 v31, v0

    if-nez v31, :cond_11f

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingLeft()I

    move-result v31

    add-int v31, v31, v13

    sub-int v22, v31, v5

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingTop()I

    move-result v31

    add-int v23, v31, v24

    :goto_104
    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lco/vine/android/views/FlowLayout$LayoutParams;->setPosition(II)V

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int v9, v24, v15

    goto/16 :goto_55

    :cond_115
    move v5, v4

    move v6, v7

    move/from16 v28, v30

    move/from16 v29, v11

    goto :goto_c4

    :cond_11c
    const/16 v21, 0x0

    goto :goto_d6

    :cond_11f
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingLeft()I

    move-result v31

    add-int v22, v31, v24

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingTop()I

    move-result v31

    add-int v31, v31, v13

    sub-int v23, v31, v4

    goto :goto_104

    :cond_12e
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/views/FlowLayout;->orientation:I

    move/from16 v31, v0

    if-nez v31, :cond_16c

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingLeft()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingRight()I

    move-result v32

    add-int v31, v31, v32

    add-int v8, v8, v31

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingBottom()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingTop()I

    move-result v32

    add-int v31, v31, v32

    add-int v9, v9, v31

    :goto_14e
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/views/FlowLayout;->orientation:I

    move/from16 v31, v0

    if-nez v31, :cond_185

    move/from16 v0, p1

    invoke-static {v8, v0}, Lco/vine/android/views/FlowLayout;->resolveSize(II)I

    move-result v31

    move/from16 v0, p2

    invoke-static {v9, v0}, Lco/vine/android/views/FlowLayout;->resolveSize(II)I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/vine/android/views/FlowLayout;->setMeasuredDimension(II)V

    :goto_16b
    return-void

    :cond_16c
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingBottom()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingTop()I

    move-result v32

    add-int v31, v31, v32

    add-int v8, v8, v31

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingLeft()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/FlowLayout;->getPaddingRight()I

    move-result v32

    add-int v31, v31, v32

    add-int v9, v9, v31

    goto :goto_14e

    :cond_185
    move/from16 v0, p1

    invoke-static {v9, v0}, Lco/vine/android/views/FlowLayout;->resolveSize(II)I

    move-result v31

    move/from16 v0, p2

    invoke-static {v8, v0}, Lco/vine/android/views/FlowLayout;->resolveSize(II)I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lco/vine/android/views/FlowLayout;->setMeasuredDimension(II)V

    goto :goto_16b
.end method
