.class abstract Landroid/support/v7/internal/widget/AbsSpinnerICS;
.super Landroid/support/v7/internal/widget/AdapterViewICS;
.source "AbsSpinnerICS.java"
.field  mAdapter:Landroid/widget/SpinnerAdapter;
.field  mBlockLayoutRequests:Z
.field private mDataSetObserver:Landroid/database/DataSetObserver;
.field  mHeightMeasureSpec:I
.field final mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;
.field  mSelectionBottomPadding:I
.field  mSelectionLeftPadding:I
.field  mSelectionRightPadding:I
.field  mSelectionTopPadding:I
.field final mSpinnerPadding:Landroid/graphics/Rect;
.field private mTouchFrame:Landroid/graphics/Rect;
.field  mWidthMeasureSpec:I
.method constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewICS;-><init>(Landroid/content/Context;)V
iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionLeftPadding:I
iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionTopPadding:I
iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionRightPadding:I
iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionBottomPadding:I
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;
new-instance v0, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;
invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;-><init>(Landroid/support/v7/internal/widget/AbsSpinnerICS;)V
iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;
invoke-direct {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->initAbsSpinner()V
return-void
.end method
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/AdapterViewICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionLeftPadding:I
iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionTopPadding:I
iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionRightPadding:I
iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionBottomPadding:I
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;
new-instance v0, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;
invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;-><init>(Landroid/support/v7/internal/widget/AbsSpinnerICS;)V
iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;
invoke-direct {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->initAbsSpinner()V
return-void
.end method
.method static synthetic access$100(Landroid/support/v7/internal/widget/AbsSpinnerICS;Landroid/view/View;Z)V
.registers 3
invoke-virtual {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->removeDetachedView(Landroid/view/View;Z)V
return-void
.end method
.method private initAbsSpinner()V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setFocusable(Z)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setWillNotDraw(Z)V
return-void
.end method
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 4
new-instance v0, Landroid/view/ViewGroup$LayoutParams;
const/4 v1, -0x1
const/4 v2, -0x2
invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
return-object v0
.end method
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v0
return-object v0
.end method
.method public getAdapter()Landroid/widget/SpinnerAdapter;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;
return-object v0
.end method
.method  getChildHeight(Landroid/view/View;)I
.registers 3
invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I
move-result v0
return v0
.end method
.method  getChildWidth(Landroid/view/View;)I
.registers 3
invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
return v0
.end method
.method public getCount()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mItemCount:I
return v0
.end method
.method public getSelectedView()Landroid/view/View;
.registers 3
iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mItemCount:I
if-lez v0, :cond_12
iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectedPosition:I
if-ltz v0, :cond_12
iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectedPosition:I
iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mFirstPosition:I
sub-int/2addr v0, v1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildAt(I)Landroid/view/View;
move-result-object v0
:goto_11
return-object v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method abstract layout(IZ)V
.end method
.method protected onMeasure(II)V
.registers 20
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v13
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getPaddingLeft()I
move-result v6
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getPaddingTop()I
move-result v8
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getPaddingRight()I
move-result v7
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getPaddingBottom()I
move-result v5
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionLeftPadding:I
move/from16 v16, v0
move/from16 v0, v16
if-le v6, v0, :cond_158
:goto_22
iput v6, v15, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionTopPadding:I
move/from16 v16, v0
move/from16 v0, v16
if-le v8, v0, :cond_15e
:goto_32
iput v8, v15, Landroid/graphics/Rect;->top:I
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionRightPadding:I
move/from16 v16, v0
move/from16 v0, v16
if-le v7, v0, :cond_164
:goto_42
iput v7, v15, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionBottomPadding:I
move/from16 v16, v0
move/from16 v0, v16
if-le v5, v0, :cond_16a
:goto_52
iput v5, v15, Landroid/graphics/Rect;->bottom:I
move-object/from16 v0, p0
iget-boolean v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mDataChanged:Z
if-eqz v15, :cond_5d
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->handleDataChanged()V
:cond_5d
const/4 v9, 0x0
const/4 v10, 0x0
const/4 v4, 0x1
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getSelectedItemPosition()I
move-result v11
if-ltz v11, :cond_fe
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;
if-eqz v15, :cond_fe
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;
invoke-interface {v15}, Landroid/widget/SpinnerAdapter;->getCount()I
move-result v15
if-ge v11, v15, :cond_fe
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;
invoke-virtual {v15, v11}, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->get(I)Landroid/view/View;
move-result-object v12
if-nez v12, :cond_8e
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;
const/16 v16, 0x0
move-object/from16 v0, v16
move-object/from16 v1, p0
invoke-interface {v15, v11, v0, v1}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v12
:cond_8e
if-eqz v12, :cond_97
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;
invoke-virtual {v15, v11, v12}, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->put(ILandroid/view/View;)V
:cond_97
if-eqz v12, :cond_fe
invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v15
if-nez v15, :cond_b0
const/4 v15, 0x1
move-object/from16 v0, p0
iput-boolean v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mBlockLayoutRequests:Z
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v15
invoke-virtual {v12, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const/4 v15, 0x0
move-object/from16 v0, p0
iput-boolean v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mBlockLayoutRequests:Z
:cond_b0
move-object/from16 v0, p0
move/from16 v1, p1
move/from16 v2, p2
invoke-virtual {v0, v12, v1, v2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->measureChild(Landroid/view/View;II)V
move-object/from16 v0, p0
invoke-virtual {v0, v12}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildHeight(Landroid/view/View;)I
move-result v15
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget v0, v0, Landroid/graphics/Rect;->top:I
move/from16 v16, v0
add-int v15, v15, v16
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget v0, v0, Landroid/graphics/Rect;->bottom:I
move/from16 v16, v0
add-int v9, v15, v16
move-object/from16 v0, p0
invoke-virtual {v0, v12}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildWidth(Landroid/view/View;)I
move-result v15
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget v0, v0, Landroid/graphics/Rect;->left:I
move/from16 v16, v0
add-int v15, v15, v16
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget v0, v0, Landroid/graphics/Rect;->right:I
move/from16 v16, v0
add-int v10, v15, v16
const/4 v4, 0x0
:cond_fe
if-eqz v4, :cond_12a
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;
iget v15, v15, Landroid/graphics/Rect;->top:I
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget v0, v0, Landroid/graphics/Rect;->bottom:I
move/from16 v16, v0
add-int v9, v15, v16
if-nez v13, :cond_12a
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;
iget v15, v15, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget v0, v0, Landroid/graphics/Rect;->right:I
move/from16 v16, v0
add-int v10, v15, v16
:cond_12a
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getSuggestedMinimumHeight()I
move-result v15
invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I
move-result v9
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getSuggestedMinimumWidth()I
move-result v15
invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I
move-result v10
move/from16 v0, p2
invoke-static {v9, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->resolveSize(II)I
move-result v3
move/from16 v0, p1
invoke-static {v10, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->resolveSize(II)I
move-result v14
move-object/from16 v0, p0
invoke-virtual {v0, v14, v3}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setMeasuredDimension(II)V
move/from16 v0, p2
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mHeightMeasureSpec:I
move/from16 v0, p1
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mWidthMeasureSpec:I
return-void
:cond_158
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionLeftPadding:I
goto/16 :goto_22
:cond_15e
move-object/from16 v0, p0
iget v8, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionTopPadding:I
goto/16 :goto_32
:cond_164
move-object/from16 v0, p0
iget v7, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionRightPadding:I
goto/16 :goto_42
:cond_16a
move-object/from16 v0, p0
iget v5, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectionBottomPadding:I
goto/16 :goto_52
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 8
const/4 v5, 0x1
move-object v0, p1
check-cast v0, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->getSuperState()Landroid/os/Parcelable;
move-result-object v1
invoke-super {p0, v1}, Landroid/support/v7/internal/widget/AdapterViewICS;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget-wide v1, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->selectedId:J
const-wide/16 v3, 0x0
cmp-long v1, v1, v3
if-ltz v1, :cond_25
iput-boolean v5, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mDataChanged:Z
iput-boolean v5, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mNeedSync:Z
iget-wide v1, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->selectedId:J
iput-wide v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSyncRowId:J
iget v1, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->position:I
iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSyncPosition:I
const/4 v1, 0x0
iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSyncMode:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->requestLayout()V
:cond_25
return-void
.end method
.method public onSaveInstanceState()Landroid/os/Parcelable;
.registers 7
invoke-super {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v1
new-instance v0, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;
invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;-><init>(Landroid/os/Parcelable;)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getSelectedItemId()J
move-result-wide v2
iput-wide v2, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->selectedId:J
iget-wide v2, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->selectedId:J
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-ltz v2, :cond_1e
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getSelectedItemPosition()I
move-result v2
iput v2, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->position:I
:goto_1d
return-object v0
:cond_1e
const/4 v2, -0x1
iput v2, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->position:I
goto :goto_1d
.end method
.method public pointToPosition(II)I
.registers 8
iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mTouchFrame:Landroid/graphics/Rect;
if-nez v2, :cond_d
new-instance v4, Landroid/graphics/Rect;
invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V
iput-object v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mTouchFrame:Landroid/graphics/Rect;
iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mTouchFrame:Landroid/graphics/Rect;
:cond_d
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildCount()I
move-result v1
add-int/lit8 v3, v1, -0x1
:goto_13
if-ltz v3, :cond_2f
invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v4
if-nez v4, :cond_2c
invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V
invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z
move-result v4
if-eqz v4, :cond_2c
iget v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mFirstPosition:I
add-int/2addr v4, v3
:goto_2b
return v4
:cond_2c
add-int/lit8 v3, v3, -0x1
goto :goto_13
:cond_2f
const/4 v4, -0x1
goto :goto_2b
.end method
.method  recycleAllViews()V
.registers 7
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildCount()I
move-result v0
iget-object v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;
iget v3, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mFirstPosition:I
const/4 v1, 0x0
:goto_9
if-ge v1, v0, :cond_17
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildAt(I)Landroid/view/View;
move-result-object v5
add-int v2, v3, v1
invoke-virtual {v4, v2, v5}, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->put(ILandroid/view/View;)V
add-int/lit8 v1, v1, 0x1
goto :goto_9
:cond_17
return-void
.end method
.method public requestLayout()V
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mBlockLayoutRequests:Z
if-nez v0, :cond_7
invoke-super {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->requestLayout()V
:cond_7
return-void
.end method
.method  resetList()V
.registers 4
const/4 v0, 0x0
const/4 v2, -0x1
iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mDataChanged:Z
iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mNeedSync:Z
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->removeAllViewsInLayout()V
iput v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mOldSelectedPosition:I
const-wide/high16 v0, -0x8000
iput-wide v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mOldSelectedRowId:J
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setSelectedPositionInt(I)V
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setNextSelectedPositionInt(I)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->invalidate()V
return-void
.end method
.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
.registers 2
check-cast p1, Landroid/widget/SpinnerAdapter;
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setAdapter(Landroid/widget/SpinnerAdapter;)V
return-void
.end method
.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
.registers 5
const/4 v0, -0x1
iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;
if-eqz v1, :cond_f
iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;
iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mDataSetObserver:Landroid/database/DataSetObserver;
invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->resetList()V
:cond_f
iput-object p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;
iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mOldSelectedPosition:I
const-wide/high16 v1, -0x8000
iput-wide v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mOldSelectedRowId:J
iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;
if-eqz v1, :cond_4e
iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mItemCount:I
iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mOldItemCount:I
iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;
invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mItemCount:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->checkFocus()V
new-instance v1, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;
invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/AdapterViewICS$AdapterDataSetObserver;-><init>(Landroid/support/v7/internal/widget/AdapterViewICS;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mDataSetObserver:Landroid/database/DataSetObserver;
iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;
iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mDataSetObserver:Landroid/database/DataSetObserver;
invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mItemCount:I
if-lez v1, :cond_3d
const/4 v0, 0x0
:cond_3d
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setSelectedPositionInt(I)V
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setNextSelectedPositionInt(I)V
iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mItemCount:I
if-nez v1, :cond_4a
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->checkSelectionChanged()V
:cond_4a
:goto_4a
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->requestLayout()V
return-void
:cond_4e
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->checkFocus()V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->resetList()V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->checkSelectionChanged()V
goto :goto_4a
.end method
.method public setSelection(I)V
.registers 2
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setNextSelectedPositionInt(I)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->requestLayout()V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->invalidate()V
return-void
.end method
.method public setSelection(IZ)V
.registers 6
if-eqz p2, :cond_16
iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mFirstPosition:I
if-gt v1, p1, :cond_16
iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mFirstPosition:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildCount()I
move-result v2
add-int/2addr v1, v2
add-int/lit8 v1, v1, -0x1
if-gt p1, v1, :cond_16
const/4 v0, 0x1
:goto_12
invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setSelectionInt(IZ)V
return-void
:cond_16
const/4 v0, 0x0
goto :goto_12
.end method
.method  setSelectionInt(IZ)V
.registers 5
iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mOldSelectedPosition:I
if-eq p1, v1, :cond_14
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mBlockLayoutRequests:Z
iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mSelectedPosition:I
sub-int v0, p1, v1
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setNextSelectedPositionInt(I)V
invoke-virtual {p0, v0, p2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->layout(IZ)V
const/4 v1, 0x0
iput-boolean v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->mBlockLayoutRequests:Z
:cond_14
return-void
.end method