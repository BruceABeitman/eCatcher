.class  Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "ListPopupWindow.java"
.field public static final INVALID_POSITION:I = -0x1
.field static final NO_POSITION:I = -0x1
.field private static final TAG:Ljava/lang/String; = "ListPopupWindow.DropDownListView"
.field private mHijackFocus:Z
.field private mListSelectionHidden:Z
.method public constructor <init>(Landroid/content/Context;Z)V
.registers 5
const/4 v0, 0x0
sget v1, Landroid/support/v7/appcompat/R$attr;->dropDownListViewStyle:I
invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-boolean p2, p0, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setCacheColorHint(I)V
return-void
.end method
.method static synthetic access$502(Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;Z)Z
.registers 2
iput-boolean p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
return p1
.end method
.method static synthetic access$600(Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;IZ)I
.registers 4
invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I
move-result v0
return v0
.end method
.method private lookForSelectablePosition(IZ)I
.registers 7
const/4 v2, -0x1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z
move-result v3
if-eqz v3, :cond_e
:cond_d
:goto_d
return v2
:cond_e
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v3
invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z
move-result v3
if-nez v3, :cond_45
if-eqz p2, :cond_2e
const/4 v3, 0x0
invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I
move-result p1
:goto_23
if-ge p1, v1, :cond_3f
invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v3
if-nez v3, :cond_3f
add-int/lit8 p1, p1, 0x1
goto :goto_23
:cond_2e
add-int/lit8 v3, v1, -0x1
invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I
move-result p1
:goto_34
if-ltz p1, :cond_3f
invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v3
if-nez v3, :cond_3f
add-int/lit8 p1, p1, -0x1
goto :goto_34
:cond_3f
if-ltz p1, :cond_d
if-ge p1, v1, :cond_d
move v2, p1
goto :goto_d
:cond_45
if-ltz p1, :cond_d
if-ge p1, v1, :cond_d
move v2, p1
goto :goto_d
.end method
.method public hasFocus()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z
if-nez v0, :cond_a
invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z
move-result v0
if-eqz v0, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public hasWindowFocus()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z
if-nez v0, :cond_a
invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z
move-result v0
if-eqz v0, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public isFocused()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z
if-nez v0, :cond_a
invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z
move-result v0
if-eqz v0, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public isInTouchMode()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z
if-eqz v0, :cond_8
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
if-nez v0, :cond_e
:cond_8
invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z
move-result v0
if-eqz v0, :cond_10
:cond_e
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method final measureHeightOfChildrenCompat(IIIII)I
.registers 27
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getListPaddingTop()I
move-result v14
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getListPaddingBottom()I
move-result v11
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getListPaddingLeft()I
move-result v12
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getListPaddingRight()I
move-result v13
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getDividerHeight()I
move-result v16
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;
move-result-object v6
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v2
if-nez v2, :cond_21
add-int v15, v14, v11
:goto_20
:cond_20
return v15
:cond_21
add-int v17, v14, v11
if-lez v16, :cond_81
if-eqz v6, :cond_81
move/from16 v7, v16
:goto_29
const/4 v15, 0x0
const/4 v3, 0x0
const/16 v18, 0x0
invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I
move-result v5
const/4 v9, 0x0
:goto_32
if-ge v9, v5, :cond_97
invoke-interface {v2, v9}, Landroid/widget/ListAdapter;->getItemViewType(I)I
move-result v10
move/from16 v0, v18
if-eq v10, v0, :cond_3f
const/4 v3, 0x0
move/from16 v18, v10
:cond_3f
move-object/from16 v0, p0
invoke-interface {v2, v9, v3, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v4
if-eqz v4, :cond_83
iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I
move/from16 v19, v0
if-lez v19, :cond_83
iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I
move/from16 v19, v0
const/high16 v20, 0x4000
invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v8
:goto_5b
move/from16 v0, p1
invoke-virtual {v3, v0, v8}, Landroid/view/View;->measure(II)V
if-lez v9, :cond_64
add-int v17, v17, v7
:cond_64
invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I
move-result v19
add-int v17, v17, v19
move/from16 v0, v17
move/from16 v1, p4
if-lt v0, v1, :cond_8c
if-ltz p5, :cond_7e
move/from16 v0, p5
if-le v9, v0, :cond_7e
if-lez v15, :cond_7e
move/from16 v0, v17
move/from16 v1, p4
if-ne v0, v1, :cond_20
:cond_7e
move/from16 v15, p4
goto :goto_20
:cond_81
const/4 v7, 0x0
goto :goto_29
:cond_83
const/16 v19, 0x0
const/16 v20, 0x0
invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v8
goto :goto_5b
:cond_8c
if-ltz p5, :cond_94
move/from16 v0, p5
if-lt v9, v0, :cond_94
move/from16 v15, v17
:cond_94
add-int/lit8 v9, v9, 0x1
goto :goto_32
:cond_97
move/from16 v15, v17
goto :goto_20
.end method