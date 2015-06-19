.class public Landroid/support/v7/internal/view/menu/ActionMenuView;
.super Landroid/support/v7/internal/widget/LinearLayoutICS;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Landroid/support/v7/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;,
        Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMaxItemHeight:I

.field private mMeasuredExtraWidth:I

.field private mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field private mMinCellSize:I

.field private mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/LinearLayoutICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v4}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4260

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMinCellSize:I

    const/high16 v2, 0x4080

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v3, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .registers 18

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    instance-of v11, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_61

    move-object v11, p0

    check-cast v11, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    :goto_1c
    if-eqz v7, :cond_63

    invoke-virtual {v7}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_63

    const/4 v6, 0x1

    :goto_25
    const/4 v0, 0x0

    if-lez p2, :cond_4a

    if-eqz v6, :cond_2d

    const/4 v11, 0x2

    if-lt p2, v11, :cond_4a

    :cond_2d
    mul-int v11, p1, p2

    const/high16 v12, -0x8000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int v0, v9, p1

    rem-int v11, v9, p1

    if-eqz v11, :cond_44

    add-int/lit8 v0, v0, 0x1

    :cond_44
    if-eqz v6, :cond_4a

    const/4 v11, 0x2

    if-ge v0, v11, :cond_4a

    const/4 v0, 0x2

    :cond_4a
    iget-boolean v11, v8, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_65

    if-eqz v6, :cond_65

    const/4 v5, 0x1

    :goto_51
    iput-boolean v5, v8, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    iput v0, v8, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v10, v0, p1

    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    return v0

    :cond_61
    const/4 v7, 0x0

    goto :goto_1c

    :cond_63
    const/4 v6, 0x0

    goto :goto_25

    :cond_65
    const/4 v5, 0x0

    goto :goto_51
.end method

.method private onMeasureExactFormat(II)V
    .registers 45

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    const/high16 v38, 0x4000

    move/from16 v0, v17

    move/from16 v1, v38

    if-ne v0, v1, :cond_50

    sub-int v38, v19, v18

    const/high16 v39, 0x4000

    invoke-static/range {v38 .. v39}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    :goto_30
    sub-int v37, v37, v36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    if-nez v4, :cond_63

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    :goto_4f
    return-void

    :cond_50
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    move/from16 v38, v0

    sub-int v39, v19, v18

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->min(II)I

    move-result v38

    const/high16 v39, -0x8000

    invoke-static/range {v38 .. v39}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    goto :goto_30

    :cond_63
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    move v8, v4

    const/16 v25, 0x0

    const/16 v24, 0x0

    const/4 v14, 0x0

    const/16 v34, 0x0

    const/16 v16, 0x0

    const-wide/16 v32, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v12

    const/16 v20, 0x0

    :goto_7f
    move/from16 v0, v20

    if-ge v0, v12, :cond_157

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_9a

    :cond_97
    :goto_97
    add-int/lit8 v20, v20, 0x1

    goto :goto_7f

    :cond_9a
    instance-of v0, v11, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    add-int/lit8 v34, v34, 0x1

    if-eqz v21, :cond_bd

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_bd
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    if-eqz v21, :cond_152

    move-object/from16 v38, v11

    check-cast v38, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_152

    const/16 v38, 0x1

    :goto_101
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_155

    const/4 v7, 0x1

    :goto_110
    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_128

    add-int/lit8 v14, v14, 0x1

    :cond_128
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_132

    const/16 v16, 0x1

    :cond_132
    sub-int/2addr v8, v9

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_97

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_97

    :cond_152
    const/16 v38, 0x0

    goto :goto_101

    :cond_155
    move v7, v8

    goto :goto_110

    :cond_157
    if-eqz v16, :cond_18e

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_18e

    const/4 v10, 0x1

    :goto_162
    const/16 v30, 0x0

    :goto_164
    if-lez v14, :cond_1ce

    if-lez v8, :cond_1ce

    const v26, 0x7fffffff

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v20, 0x0

    :goto_171
    move/from16 v0, v20

    if-ge v0, v12, :cond_1c8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_190

    :cond_18b
    :goto_18b
    add-int/lit8 v20, v20, 0x1

    goto :goto_171

    :cond_18e
    const/4 v10, 0x0

    goto :goto_162

    :cond_190
    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_1ae

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v27, v0

    const/16 v29, 0x1

    goto :goto_18b

    :cond_1ae
    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_18b

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v27, v27, v38

    add-int/lit8 v29, v29, 0x1

    goto :goto_18b

    :cond_1c8
    or-long v32, v32, v27

    move/from16 v0, v29

    if-le v0, v8, :cond_27c

    :cond_1ce
    if-nez v16, :cond_307

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_307

    const/16 v31, 0x1

    :goto_1da
    if-lez v8, :cond_387

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_387

    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_1f2

    if-nez v31, :cond_1f2

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_387

    :cond_1f2
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    if-nez v31, :cond_250

    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_221

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_221

    const/high16 v38, 0x3f00

    sub-float v13, v13, v38

    :cond_221
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_250

    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_250

    const/high16 v38, 0x3f00

    sub-float v13, v13, v38

    :cond_250
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_30b

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    :goto_262
    const/16 v20, 0x0

    :goto_264
    move/from16 v0, v20

    if-ge v0, v12, :cond_386

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_30e

    :cond_279
    :goto_279
    add-int/lit8 v20, v20, 0x1

    goto :goto_264

    :cond_27c
    add-int/lit8 v26, v26, 0x1

    const/16 v20, 0x0

    :goto_280
    move/from16 v0, v20

    if-ge v0, v12, :cond_303

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v27

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_2bd

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_2ba

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    :cond_2ba
    :goto_2ba
    add-int/lit8 v20, v20, 0x1

    goto :goto_280

    :cond_2bd
    if-eqz v10, :cond_2ea

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_2ea

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_2ea

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_2ea
    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    add-int/lit8 v8, v8, -0x1

    goto :goto_2ba

    :cond_303
    const/16 v30, 0x1

    goto/16 :goto_164

    :cond_307
    const/16 v31, 0x0

    goto/16 :goto_1da

    :cond_30b
    const/4 v15, 0x0

    goto/16 :goto_262

    :cond_30e
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    instance-of v0, v11, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_347

    move-object/from16 v0, v23

    iput v15, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v20, :cond_343

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_343

    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_343
    const/16 v30, 0x1

    goto/16 :goto_279

    :cond_347
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_36a

    move-object/from16 v0, v23

    iput v15, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    const/16 v30, 0x1

    goto/16 :goto_279

    :cond_36a
    if-eqz v20, :cond_374

    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_374
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v20

    move/from16 v1, v38

    if-eq v0, v1, :cond_279

    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_279

    :cond_386
    const/4 v8, 0x0

    :cond_387
    if-eqz v30, :cond_3ca

    const/16 v20, 0x0

    :goto_38b
    move/from16 v0, v20

    if-ge v0, v12, :cond_3ca

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_3a8

    :goto_3a5
    add-int/lit8 v20, v20, 0x1

    goto :goto_38b

    :cond_3a8
    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    const/high16 v38, 0x4000

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_3a5

    :cond_3ca
    const/high16 v38, 0x4000

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_3d4

    move/from16 v19, v25

    :cond_3d4
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    mul-int v38, v8, v5

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMeasuredExtraWidth:I

    goto/16 :goto_4f
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    if-eqz p1, :cond_8

    instance-of v0, p1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
    .registers 3

    const/4 v1, -0x2

    new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
    .registers 4

    new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
    .registers 4

    instance-of v1, p1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_14

    new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;)V

    iget v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_13

    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    :cond_13
    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_13
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object v0
.end method

.method public getWindowAnimations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .registers 6

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1c

    instance-of v3, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1c

    check-cast v1, Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v1}, Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_1c
    if-lez p1, :cond_29

    instance-of v3, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_29

    check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_29
    return v2
.end method

.method public initialize(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_9

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_9
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    :cond_25
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    move/from16 v28, v0

    if-nez v28, :cond_c

    invoke-super/range {p0 .. p5}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onLayout(ZIIII)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    add-int v28, p3, p5

    div-int/lit8 v14, v28, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getSupportDividerWidth()I

    move-result v7

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    sub-int v28, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v29

    sub-int v27, v28, v29

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_2d
    if-ge v10, v6, :cond_b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_44

    :goto_41
    add-int/lit8 v10, v10, 0x1

    goto :goto_2d

    :cond_44
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8b

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/internal/view/menu/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v28

    if-eqz v28, :cond_60

    add-int v17, v17, v7

    :cond_60
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v29, v0

    sub-int v19, v28, v29

    sub-int v11, v19, v17

    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    add-int v5, v24, v9

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    sub-int v27, v27, v17

    const/4 v8, 0x1

    goto :goto_41

    :cond_8b
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v29, v0

    add-int v20, v28, v29

    add-int v16, v16, v20

    sub-int v27, v27, v20

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/internal/view/menu/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v28

    if-eqz v28, :cond_ad

    add-int v16, v16, v7

    :cond_ad
    add-int/lit8 v15, v15, 0x1

    goto :goto_41

    :cond_b0
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v6, v0, :cond_e7

    if-nez v8, :cond_e7

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int v28, p4, p2

    div-int/lit8 v13, v28, 0x2

    div-int/lit8 v28, v26, 0x2

    sub-int v11, v13, v28

    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    add-int v28, v11, v26

    add-int v29, v24, v9

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_b

    :cond_e7
    if-eqz v8, :cond_123

    const/16 v28, 0x0

    :goto_eb
    sub-int v21, v15, v28

    const/16 v29, 0x0

    if-lez v21, :cond_126

    div-int v28, v27, v21

    :goto_f3
    move/from16 v0, v29

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v23

    const/4 v10, 0x0

    :goto_100
    if-ge v10, v6, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_120

    iget-boolean v0, v12, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v28, v0

    if-eqz v28, :cond_129

    :cond_120
    :goto_120
    add-int/lit8 v10, v10, 0x1

    goto :goto_100

    :cond_123
    const/16 v28, 0x1

    goto :goto_eb

    :cond_126
    const/16 v28, 0x0

    goto :goto_f3

    :cond_129
    iget v0, v12, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v28, v0

    add-int v23, v23, v28

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    add-int v28, v23, v26

    add-int v29, v24, v9

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget v0, v12, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v28, v0

    add-int v28, v28, v26

    add-int v28, v28, v22

    add-int v23, v23, v28

    goto :goto_120
.end method

.method protected onMeasure(II)V
    .registers 13

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-boolean v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x4000

    if-ne v6, v9, :cond_34

    move v6, v7

    :goto_d
    iput-boolean v6, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    iget-boolean v6, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_15

    iput v8, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    :cond_15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    iget-boolean v6, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_2c

    iget-object v6, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_2c

    iget v6, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_2c

    iput v5, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    iget-object v6, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_2c
    iget-boolean v6, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_36

    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    :goto_33
    return-void

    :cond_34
    move v6, v8

    goto :goto_d

    :cond_36
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_3b
    if-ge v2, v1, :cond_4e

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    iput v8, v3, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    iput v8, v3, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4e
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onMeasure(II)V

    goto :goto_33
.end method

.method public setOverflowReserved(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return-void
.end method

.method public setPresenter(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    return-void
.end method
