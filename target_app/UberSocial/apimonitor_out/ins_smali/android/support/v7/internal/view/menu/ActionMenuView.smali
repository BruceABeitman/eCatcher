.class public Landroid/support/v7/internal/view/menu/ActionMenuView;
.super Landroid/support/v7/internal/widget/LinearLayoutICS;
.source "SourceFile"
.implements Landroid/support/v7/internal/view/menu/ad;
.implements Landroid/support/v7/internal/view/menu/p;
.field static final a:I = 0x38
.field static final b:I = 0x4
.field private static final c:Ljava/lang/String; = "ActionMenuView"
.field private d:Landroid/support/v7/internal/view/menu/n;
.field private e:Z
.field private f:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
.field private g:Z
.field private h:I
.field private i:I
.field private j:I
.field private k:I
.field private l:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
const/4 v2, 0x0
invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/LinearLayoutICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
const/high16 v1, 0x4260
mul-float/2addr v1, v0
float-to-int v1, v1
iput v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->i:I
const/high16 v1, 0x4080
mul-float/2addr v0, v1
float-to-int v0, v0
iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->j:I
sget-object v0, Landroid/support/v7/a/n;->ActionBar:[I
sget v1, Landroid/support/v7/a/d;->actionBarStyle:I
invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->l:I
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method static a(Landroid/view/View;IIII)I
.registers 13
const/4 v4, 0x1
const/4 v3, 0x2
const/4 v2, 0x0
invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
sub-int/2addr v1, p4
invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v5
invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v6
instance-of v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;
if-eqz v1, :cond_5e
move-object v1, p0
check-cast v1, Landroid/support/v7/internal/view/menu/ActionMenuItemView;
:goto_1d
if-eqz v1, :cond_60
invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b()Z
move-result v1
if-eqz v1, :cond_60
move v5, v4
:goto_26
if-lez p2, :cond_62
if-eqz v5, :cond_2c
if-lt p2, v3, :cond_62
:cond_2c
mul-int v1, p1, p2
const/high16 v7, -0x8000
invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
invoke-virtual {p0, v1, v6}, Landroid/view/View;->measure(II)V
invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I
move-result v7
div-int v1, v7, p1
rem-int/2addr v7, p1
if-eqz v7, :cond_42
add-int/lit8 v1, v1, 0x1
:cond_42
if-eqz v5, :cond_47
if-ge v1, v3, :cond_47
move v1, v3
:goto_47
:cond_47
iget-boolean v3, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->a:Z
if-nez v3, :cond_4e
if-eqz v5, :cond_4e
move v2, v4
:cond_4e
iput-boolean v2, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->d:Z
iput v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->b:I
mul-int v0, v1, p1
const/high16 v2, 0x4000
invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-virtual {p0, v0, v6}, Landroid/view/View;->measure(II)V
return v1
:cond_5e
const/4 v1, 0x0
goto :goto_1d
:cond_60
move v5, v2
goto :goto_26
:cond_62
move v1, v2
goto :goto_47
.end method
.method private a(II)V
.registers 36
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v23
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v6
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v19
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingLeft()I
move-result v5
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingRight()I
move-result v7
add-int/2addr v7, v5
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingTop()I
move-result v5
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingBottom()I
move-result v8
add-int v18, v5, v8
const/high16 v5, 0x4000
move/from16 v0, v23
if-ne v0, v5, :cond_47
sub-int v5, v19, v18
const/high16 v8, 0x4000
invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v5
move v8, v5
:goto_2e
sub-int v24, v6, v7
move-object/from16 v0, p0
iget v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->i:I
div-int v9, v24, v5
move-object/from16 v0, p0
iget v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->i:I
rem-int v5, v24, v5
if-nez v9, :cond_59
const/4 v5, 0x0
move-object/from16 v0, p0
move/from16 v1, v24
invoke-virtual {v0, v1, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V
:goto_46
return-void
:cond_47
move-object/from16 v0, p0
iget v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->l:I
sub-int v8, v19, v18
invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I
move-result v5
const/high16 v8, -0x8000
invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v5
move v8, v5
goto :goto_2e
:cond_59
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->i:I
div-int/2addr v5, v9
add-int v25, v6, v5
const/16 v16, 0x0
const/4 v15, 0x0
const/4 v10, 0x0
const/4 v6, 0x0
const/4 v11, 0x0
const-wide/16 v12, 0x0
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I
move-result v26
const/4 v5, 0x0
move/from16 v17, v5
:goto_6f
move/from16 v0, v17
move/from16 v1, v26
if-ge v0, v1, :cond_11c
move-object/from16 v0, p0
move/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v7
invoke-virtual {v7}, Landroid/view/View;->getVisibility()I
move-result v5
const/16 v14, 0x8
if-ne v5, v14, :cond_96
move v7, v6
move-wide v5, v12
move/from16 v12, v16
move v13, v9
move v9, v15
:goto_8b
add-int/lit8 v14, v17, 0x1
move/from16 v17, v14
move v15, v9
move/from16 v16, v12
move v9, v13
move-wide v12, v5
move v6, v7
goto :goto_6f
:cond_96
instance-of v0, v7, Landroid/support/v7/internal/view/menu/ActionMenuItemView;
move/from16 v20, v0
add-int/lit8 v14, v6, 0x1
if-eqz v20, :cond_b2
move-object/from16 v0, p0
iget v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->j:I
const/4 v6, 0x0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->j:I
move/from16 v21, v0
const/16 v22, 0x0
move/from16 v0, v21
move/from16 v1, v22
invoke-virtual {v7, v5, v6, v0, v1}, Landroid/view/View;->setPadding(IIII)V
:cond_b2
invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v5
check-cast v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
const/4 v6, 0x0
iput-boolean v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->f:Z
const/4 v6, 0x0
iput v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->c:I
const/4 v6, 0x0
iput v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->b:I
const/4 v6, 0x0
iput-boolean v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->d:Z
const/4 v6, 0x0
iput v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I
const/4 v6, 0x0
iput v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I
if-eqz v20, :cond_118
move-object v6, v7
check-cast v6, Landroid/support/v7/internal/view/menu/ActionMenuItemView;
invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b()Z
move-result v6
if-eqz v6, :cond_118
const/4 v6, 0x1
:goto_d6
iput-boolean v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->e:Z
iget-boolean v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->a:Z
if-eqz v6, :cond_11a
const/4 v6, 0x1
:goto_dd
move/from16 v0, v25
move/from16 v1, v18
invoke-static {v7, v0, v6, v8, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(Landroid/view/View;IIII)I
move-result v20
move/from16 v0, v20
invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I
move-result v15
iget-boolean v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->d:Z
if-eqz v6, :cond_343
add-int/lit8 v6, v10, 0x1
:goto_f1
iget-boolean v5, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->a:Z
if-eqz v5, :cond_340
const/4 v5, 0x1
:goto_f6
sub-int v11, v9, v20
invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I
move-result v7
move/from16 v0, v16
invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I
move-result v7
const/4 v9, 0x1
move/from16 v0, v20
if-ne v0, v9, :cond_334
const/4 v9, 0x1
shl-int v9, v9, v17
int-to-long v9, v9
or-long/2addr v9, v12
move v12, v7
move v13, v11
move v7, v14
move v11, v5
move-wide/from16 v31, v9
move v9, v15
move v10, v6
move-wide/from16 v5, v31
goto/16 :goto_8b
:cond_118
const/4 v6, 0x0
goto :goto_d6
:cond_11a
move v6, v9
goto :goto_dd
:cond_11c
if-eqz v11, :cond_159
const/4 v5, 0x2
if-ne v6, v5, :cond_159
const/4 v5, 0x1
move v7, v5
:goto_123
const/16 v17, 0x0
move-wide/from16 v20, v12
move/from16 v18, v9
:goto_129
if-lez v10, :cond_330
if-lez v18, :cond_330
const v14, 0x7fffffff
const-wide/16 v12, 0x0
const/4 v9, 0x0
const/4 v5, 0x0
move/from16 v22, v5
:goto_136
move/from16 v0, v22
move/from16 v1, v26
if-ge v0, v1, :cond_17c
move-object/from16 v0, p0
move/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v5
check-cast v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
iget-boolean v0, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->d:Z
move/from16 v27, v0
if-nez v27, :cond_15c
move v5, v9
move v9, v14
:goto_152
add-int/lit8 v14, v22, 0x1
move/from16 v22, v14
move v14, v9
move v9, v5
goto :goto_136
:cond_159
const/4 v5, 0x0
move v7, v5
goto :goto_123
:cond_15c
iget v0, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->b:I
move/from16 v27, v0
move/from16 v0, v27
if-ge v0, v14, :cond_16c
iget v9, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->b:I
const/4 v5, 0x1
shl-int v5, v5, v22
int-to-long v12, v5
const/4 v5, 0x1
goto :goto_152
:cond_16c
iget v5, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->b:I
if-ne v5, v14, :cond_32c
const/4 v5, 0x1
shl-int v5, v5, v22
int-to-long v0, v5
move-wide/from16 v27, v0
or-long v12, v12, v27
add-int/lit8 v5, v9, 0x1
move v9, v14
goto :goto_152
:cond_17c
or-long v20, v20, v12
move/from16 v0, v18
if-le v9, v0, :cond_207
move-wide/from16 v12, v20
:goto_184
if-nez v11, :cond_28c
const/4 v5, 0x1
if-ne v6, v5, :cond_28c
const/4 v5, 0x1
:goto_18a
if-lez v18, :cond_324
const-wide/16 v9, 0x0
cmp-long v7, v12, v9
if-eqz v7, :cond_324
add-int/lit8 v6, v6, -0x1
move/from16 v0, v18
if-lt v0, v6, :cond_19d
if-nez v5, :cond_19d
const/4 v6, 0x1
if-le v15, v6, :cond_324
:cond_19d
invoke-static {v12, v13}, Ljava/lang/Long;->bitCount(J)I
move-result v6
int-to-float v6, v6
if-nez v5, :cond_321
const-wide/16 v9, 0x1
and-long/2addr v9, v12
const-wide/16 v14, 0x0
cmp-long v5, v9, v14
if-eqz v5, :cond_1c1
const/4 v5, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v5
check-cast v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
iget-boolean v5, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->e:Z
if-nez v5, :cond_1c1
const/high16 v5, 0x3f00
sub-float/2addr v6, v5
:cond_1c1
const/4 v5, 0x1
add-int/lit8 v7, v26, -0x1
shl-int/2addr v5, v7
int-to-long v9, v5
and-long/2addr v9, v12
const-wide/16 v14, 0x0
cmp-long v5, v9, v14
if-eqz v5, :cond_321
add-int/lit8 v5, v26, -0x1
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v5
check-cast v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
iget-boolean v5, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->e:Z
if-nez v5, :cond_321
const/high16 v5, 0x3f00
sub-float v5, v6, v5
:goto_1e3
const/4 v6, 0x0
cmpl-float v6, v5, v6
if-lez v6, :cond_28f
mul-int v6, v18, v25
int-to-float v6, v6
div-float v5, v6, v5
float-to-int v5, v5
move v6, v5
:goto_1ef
const/4 v5, 0x0
move v9, v5
move/from16 v7, v17
:goto_1f3
move/from16 v0, v26
if-ge v9, v0, :cond_2d8
const/4 v5, 0x1
shl-int/2addr v5, v9
int-to-long v10, v5
and-long/2addr v10, v12
const-wide/16 v14, 0x0
cmp-long v5, v10, v14
if-nez v5, :cond_293
move v5, v7
:goto_202
add-int/lit8 v7, v9, 0x1
move v9, v7
move v7, v5
goto :goto_1f3
:cond_207
add-int/lit8 v22, v14, 0x1
const/4 v5, 0x0
move v14, v5
move/from16 v9, v18
move-wide/from16 v17, v20
:goto_20f
move/from16 v0, v26
if-ge v14, v0, :cond_283
move-object/from16 v0, p0
invoke-virtual {v0, v14}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v5
check-cast v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
const/16 v21, 0x1
shl-int v21, v21, v14
move/from16 v0, v21
int-to-long v0, v0
move-wide/from16 v27, v0
and-long v27, v27, v12
const-wide/16 v29, 0x0
cmp-long v21, v27, v29
if-nez v21, :cond_243
iget v5, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->b:I
move/from16 v0, v22
if-ne v5, v0, :cond_329
const/4 v5, 0x1
shl-int/2addr v5, v14
int-to-long v0, v5
move-wide/from16 v20, v0
or-long v17, v17, v20
move v5, v9
:goto_23e
add-int/lit8 v9, v14, 0x1
move v14, v9
move v9, v5
goto :goto_20f
:cond_243
if-eqz v7, :cond_270
iget-boolean v0, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->e:Z
move/from16 v21, v0
if-eqz v21, :cond_270
const/16 v21, 0x1
move/from16 v0, v21
if-ne v9, v0, :cond_270
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->j:I
move/from16 v21, v0
add-int v21, v21, v25
const/16 v27, 0x0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->j:I
move/from16 v28, v0
const/16 v29, 0x0
move-object/from16 v0, v20
move/from16 v1, v21
move/from16 v2, v27
move/from16 v3, v28
move/from16 v4, v29
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V
:cond_270
iget v0, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->b:I
move/from16 v20, v0
add-int/lit8 v20, v20, 0x1
move/from16 v0, v20
iput v0, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->b:I
const/16 v20, 0x1
move/from16 v0, v20
iput-boolean v0, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->f:Z
add-int/lit8 v5, v9, -0x1
goto :goto_23e
:cond_283
const/4 v5, 0x1
move-wide/from16 v20, v17
move/from16 v17, v5
move/from16 v18, v9
goto/16 :goto_129
:cond_28c
const/4 v5, 0x0
goto/16 :goto_18a
:cond_28f
const/4 v5, 0x0
move v6, v5
goto/16 :goto_1ef
:cond_293
move-object/from16 v0, p0
invoke-virtual {v0, v9}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v10
invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v5
check-cast v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
instance-of v10, v10, Landroid/support/v7/internal/view/menu/ActionMenuItemView;
if-eqz v10, :cond_2b6
iput v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->c:I
const/4 v7, 0x1
iput-boolean v7, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->f:Z
if-nez v9, :cond_2b3
iget-boolean v7, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->e:Z
if-nez v7, :cond_2b3
neg-int v7, v6
div-int/lit8 v7, v7, 0x2
iput v7, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I
:cond_2b3
const/4 v5, 0x1
goto/16 :goto_202
:cond_2b6
iget-boolean v10, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->a:Z
if-eqz v10, :cond_2c7
iput v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->c:I
const/4 v7, 0x1
iput-boolean v7, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->f:Z
neg-int v7, v6
div-int/lit8 v7, v7, 0x2
iput v7, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I
const/4 v5, 0x1
goto/16 :goto_202
:cond_2c7
if-eqz v9, :cond_2cd
div-int/lit8 v10, v6, 0x2
iput v10, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I
:cond_2cd
add-int/lit8 v10, v26, -0x1
if-eq v9, v10, :cond_2d5
div-int/lit8 v10, v6, 0x2
iput v10, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I
:cond_2d5
move v5, v7
goto/16 :goto_202
:cond_2d8
const/4 v5, 0x0
move v9, v5
:goto_2da
if-eqz v7, :cond_307
const/4 v5, 0x0
move v6, v5
:goto_2de
move/from16 v0, v26
if-ge v6, v0, :cond_307
move-object/from16 v0, p0
invoke-virtual {v0, v6}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v7
invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v5
check-cast v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
iget-boolean v10, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->f:Z
if-nez v10, :cond_2f6
:goto_2f2
add-int/lit8 v5, v6, 0x1
move v6, v5
goto :goto_2de
:cond_2f6
iget v10, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->b:I
mul-int v10, v10, v25
iget v5, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->c:I
add-int/2addr v5, v10
const/high16 v10, 0x4000
invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v5
invoke-virtual {v7, v5, v8}, Landroid/view/View;->measure(II)V
goto :goto_2f2
:cond_307
const/high16 v5, 0x4000
move/from16 v0, v23
if-eq v0, v5, :cond_31e
:goto_30d
move-object/from16 v0, p0
move/from16 v1, v24
move/from16 v2, v16
invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V
mul-int v5, v9, v25
move-object/from16 v0, p0
iput v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->k:I
goto/16 :goto_46
:cond_31e
move/from16 v16, v19
goto :goto_30d
:cond_321
move v5, v6
goto/16 :goto_1e3
:cond_324
move/from16 v7, v17
move/from16 v9, v18
goto :goto_2da
:cond_329
move v5, v9
goto/16 :goto_23e
:cond_32c
move v5, v9
move v9, v14
goto/16 :goto_152
:cond_330
move-wide/from16 v12, v20
goto/16 :goto_184
:cond_334
move v10, v6
move v9, v15
move-wide/from16 v31, v12
move v12, v7
move v13, v11
move v11, v5
move v7, v14
move-wide/from16 v5, v31
goto/16 :goto_8b
:cond_340
move v5, v11
goto/16 :goto_f6
:cond_343
move v6, v10
goto/16 :goto_f1
.end method
.method public a(Landroid/util/AttributeSet;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
.registers 4
new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-object v0
.end method
.method protected a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
.registers 4
instance-of v0, p1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
if-eqz v0, :cond_14
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
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->c()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
move-result-object v0
goto :goto_13
.end method
.method public a(Landroid/support/v7/internal/view/menu/n;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->d:Landroid/support/v7/internal/view/menu/n;
return-void
.end method
.method public a()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->g:Z
return v0
.end method
.method protected a(I)Z
.registers 6
add-int/lit8 v0, p1, -0x1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I
move-result v3
if-ge p1, v3, :cond_1c
instance-of v3, v0, Landroid/support/v7/internal/view/menu/h;
if-eqz v3, :cond_1c
check-cast v0, Landroid/support/v7/internal/view/menu/h;
invoke-interface {v0}, Landroid/support/v7/internal/view/menu/h;->e()Z
move-result v0
or-int/2addr v2, v0
:cond_1c
if-lez p1, :cond_2b
instance-of v0, v1, Landroid/support/v7/internal/view/menu/h;
if-eqz v0, :cond_2b
move-object v0, v1
check-cast v0, Landroid/support/v7/internal/view/menu/h;
invoke-interface {v0}, Landroid/support/v7/internal/view/menu/h;->d()Z
move-result v0
or-int/2addr v0, v2
:goto_2a
return v0
:cond_2b
move v0, v2
goto :goto_2a
.end method
.method public a(Landroid/support/v7/internal/view/menu/r;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->d:Landroid/support/v7/internal/view/menu/n;
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/view/MenuItem;I)Z
move-result v0
return v0
.end method
.method public b()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->e:Z
return v0
.end method
.method protected c()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
.registers 3
const/4 v1, -0x2
new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
invoke-direct {v0, v1, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V
const/16 v1, 0x10
iput v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I
return-object v0
.end method
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
.method public d()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->c()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
move-result-object v0
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->a:Z
return-object v0
.end method
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->c()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
move-result-object v0
return-object v0
.end method
.method protected synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->c()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
move-result-object v0
return-object v0
.end method
.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(Landroid/util/AttributeSet;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
move-result-object v0
return-object v0
.end method
.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
move-result-object v0
return-object v0
.end method
.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(Landroid/util/AttributeSet;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
move-result-object v0
return-object v0
.end method
.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
move-result-object v0
return-object v0
.end method
.method public getWindowAnimations()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x8
if-lt v0, v1, :cond_9
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onConfigurationChanged(Landroid/content/res/Configuration;)V
:cond_9
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->f:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->c(Z)V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->f:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_25
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->f:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e()Z
move-result v0
if-eqz v0, :cond_25
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->f:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b()Z
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->f:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a()Z
:cond_25
return-void
.end method
.method public onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onDetachedFromWindow()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->f:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->c()Z
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 20
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->g:Z
if-nez v0, :cond_8
invoke-super/range {p0 .. p5}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onLayout(ZIIII)V
:goto_7
:cond_7
return-void
:cond_8
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I
move-result v6
add-int v0, p3, p5
div-int/lit8 v7, v0, 0x2
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getSupportDividerWidth()I
move-result v8
const/4 v4, 0x0
const/4 v3, 0x0
sub-int v0, p4, p2
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingRight()I
move-result v1
sub-int/2addr v0, v1
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingLeft()I
move-result v1
sub-int v2, v0, v1
const/4 v1, 0x0
const/4 v0, 0x0
move v5, v0
:goto_26
if-ge v5, v6, :cond_92
invoke-virtual {p0, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v9
invoke-virtual {v9}, Landroid/view/View;->getVisibility()I
move-result v0
const/16 v10, 0x8
if-ne v0, v10, :cond_40
move v0, v1
move v1, v2
move v2, v3
move v3, v4
:goto_38
add-int/lit8 v4, v5, 0x1
move v5, v4
move v4, v3
move v3, v2
move v2, v1
move v1, v0
goto :goto_26
:cond_40
invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
iget-boolean v10, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->a:Z
if-eqz v10, :cond_76
invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
invoke-virtual {p0, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(I)Z
move-result v10
if-eqz v10, :cond_55
add-int/2addr v1, v8
:cond_55
invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I
move-result v10
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getWidth()I
move-result v11
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingRight()I
move-result v12
sub-int/2addr v11, v12
iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I
sub-int v0, v11, v0
sub-int v11, v0, v1
div-int/lit8 v12, v10, 0x2
sub-int v12, v7, v12
add-int/2addr v10, v12
invoke-virtual {v9, v11, v12, v0, v10}, Landroid/view/View;->layout(IIII)V
sub-int v1, v2, v1
const/4 v0, 0x1
move v2, v3
move v3, v4
goto :goto_38
:cond_76
invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I
move-result v9
iget v10, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I
add-int/2addr v9, v10
iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I
add-int/2addr v9, v0
add-int v0, v4, v9
sub-int/2addr v2, v9
invoke-virtual {p0, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(I)Z
move-result v4
if-eqz v4, :cond_8a
add-int/2addr v0, v8
:cond_8a
add-int/lit8 v3, v3, 0x1
move v13, v1
move v1, v2
move v2, v3
move v3, v0
move v0, v13
goto :goto_38
:cond_92
const/4 v0, 0x1
if-ne v6, v0, :cond_b6
if-nez v1, :cond_b6
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v2
sub-int v3, p4, p2
div-int/lit8 v3, v3, 0x2
div-int/lit8 v4, v1, 0x2
sub-int/2addr v3, v4
div-int/lit8 v4, v2, 0x2
sub-int v4, v7, v4
add-int/2addr v1, v3
add-int/2addr v2, v4
invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V
goto/16 :goto_7
:cond_b6
if-eqz v1, :cond_e8
const/4 v0, 0x0
:goto_b9
sub-int v0, v3, v0
const/4 v1, 0x0
if-lez v0, :cond_ea
div-int v0, v2, v0
:goto_c0
invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
move-result v3
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingLeft()I
move-result v1
const/4 v0, 0x0
move v2, v0
:goto_ca
if-ge v2, v6, :cond_7
invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v4
invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
move-result v5
const/16 v8, 0x8
if-eq v5, v8, :cond_107
iget-boolean v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->a:Z
if-eqz v5, :cond_ec
move v0, v1
:goto_e3
add-int/lit8 v1, v2, 0x1
move v2, v1
move v1, v0
goto :goto_ca
:cond_e8
const/4 v0, 0x1
goto :goto_b9
:cond_ea
const/4 v0, 0x0
goto :goto_c0
:cond_ec
iget v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I
add-int/2addr v1, v5
invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I
move-result v5
invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I
move-result v8
div-int/lit8 v9, v8, 0x2
sub-int v9, v7, v9
add-int v10, v1, v5
add-int/2addr v8, v9
invoke-virtual {v4, v1, v9, v10, v8}, Landroid/view/View;->layout(IIII)V
iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I
add-int/2addr v0, v5
add-int/2addr v0, v3
add-int/2addr v0, v1
goto :goto_e3
:cond_107
move v0, v1
goto :goto_e3
.end method
.method protected onMeasure(II)V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->g:Z
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
const/high16 v4, 0x4000
if-ne v0, v4, :cond_34
move v0, v1
:goto_d
iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->g:Z
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->g:Z
if-eq v3, v0, :cond_15
iput v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->h:I
:cond_15
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->g:Z
if-eqz v3, :cond_2c
iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->d:Landroid/support/v7/internal/view/menu/n;
if-eqz v3, :cond_2c
iget v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->h:I
if-eq v0, v3, :cond_2c
iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->h:I
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->d:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->c(Z)V
:cond_2c
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->g:Z
if-eqz v0, :cond_36
invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(II)V
:goto_33
return-void
:cond_34
move v0, v2
goto :goto_d
:cond_36
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I
move-result v3
move v1, v2
:goto_3b
if-ge v1, v3, :cond_4f
invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
iput v2, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I
iput v2, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_3b
:cond_4f
invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onMeasure(II)V
goto :goto_33
.end method
.method public setOverflowReserved(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->e:Z
return-void
.end method
.method public setPresenter(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->f:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
return-void
.end method