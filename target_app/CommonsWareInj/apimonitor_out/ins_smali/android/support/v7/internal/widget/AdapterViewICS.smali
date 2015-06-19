.class abstract Landroid/support/v7/internal/widget/AdapterViewICS;
.super Landroid/view/ViewGroup;
.source "AdapterViewICS.java"
.field public static final INVALID_POSITION:I = -0x1
.field public static final INVALID_ROW_ID:J = -0x8000000000000000L
.field static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2
.field static final ITEM_VIEW_TYPE_IGNORE:I = -0x1
.field static final SYNC_FIRST_POSITION:I = 0x1
.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64
.field static final SYNC_SELECTED_POSITION:I
.field  mBlockLayoutRequests:Z
.field  mDataChanged:Z
.field private mDesiredFocusableInTouchModeState:Z
.field private mDesiredFocusableState:Z
.field private mEmptyView:Landroid/view/View;
.field  mFirstPosition:I
.field  mInLayout:Z
.field  mItemCount:I
.field private mLayoutHeight:I
.field  mNeedSync:Z
.field  mNextSelectedPosition:I
.field  mNextSelectedRowId:J
.field  mOldItemCount:I
.field  mOldSelectedPosition:I
.field  mOldSelectedRowId:J
.field  mOnItemClickListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;
.field  mOnItemLongClickListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemLongClickListener;
.field  mOnItemSelectedListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;
.field  mSelectedPosition:I
.field  mSelectedRowId:J
.field private mSelectionNotifier:Landroid/support/v7/internal/widget/AdapterViewICS$SelectionNotifier;
.field  mSpecificTop:I
.field  mSyncHeight:J
.field  mSyncMode:I
.field  mSyncPosition:I
.field  mSyncRowId:J
.method constructor <init>(Landroid/content/Context;)V
.registers 6
const/4 v3, -0x1
const-wide/high16 v1, -0x8000
const/4 v0, 0x0
invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V
iput v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mFirstPosition:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncRowId:J
iput-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNeedSync:Z
iput-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mInLayout:Z
iput v3, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedPosition:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedRowId:J
iput v3, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedPosition:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedRowId:J
iput v3, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldSelectedPosition:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldSelectedRowId:J
iput-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mBlockLayoutRequests:Z
return-void
.end method
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 7
const/4 v3, -0x1
const-wide/high16 v1, -0x8000
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mFirstPosition:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncRowId:J
iput-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNeedSync:Z
iput-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mInLayout:Z
iput v3, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedPosition:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedRowId:J
iput v3, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedPosition:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedRowId:J
iput v3, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldSelectedPosition:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldSelectedRowId:J
iput-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mBlockLayoutRequests:Z
return-void
.end method
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 8
const/4 v3, -0x1
const-wide/high16 v1, -0x8000
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mFirstPosition:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncRowId:J
iput-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNeedSync:Z
iput-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mInLayout:Z
iput v3, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedPosition:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedRowId:J
iput v3, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedPosition:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedRowId:J
iput v3, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldSelectedPosition:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldSelectedRowId:J
iput-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mBlockLayoutRequests:Z
return-void
.end method
.method static synthetic access$000(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/os/Parcelable;)V
.registers 2
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewICS;->onRestoreInstanceState(Landroid/os/Parcelable;)V
return-void
.end method
.method static synthetic access$100(Landroid/support/v7/internal/widget/AdapterViewICS;)Landroid/os/Parcelable;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v0
return-object v0
.end method
.method static synthetic access$200(Landroid/support/v7/internal/widget/AdapterViewICS;)V
.registers 1
invoke-direct {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->fireOnSelected()V
return-void
.end method
.method private fireOnSelected()V
.registers 7
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOnItemSelectedListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getSelectedItemPosition()I
move-result v3
if-ltz v3, :cond_1e
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getSelectedView()Landroid/view/View;
move-result-object v2
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOnItemSelectedListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getAdapter()Landroid/widget/Adapter;
move-result-object v1
invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J
move-result-wide v4
move-object v1, p0
invoke-interface/range {v0 .. v5}, Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;->onItemSelected(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/view/View;IJ)V
goto :goto_4
:cond_1e
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOnItemSelectedListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;
invoke-interface {v0, p0}, Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;->onNothingSelected(Landroid/support/v7/internal/widget/AdapterViewICS;)V
goto :goto_4
.end method
.method private updateEmptyStatus(Z)V
.registers 8
const/16 v2, 0x8
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->isInFilterMode()Z
move-result v0
if-eqz v0, :cond_a
const/4 p1, 0x0
:cond_a
if-eqz p1, :cond_35
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mEmptyView:Landroid/view/View;
if-eqz v0, :cond_31
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mEmptyView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/AdapterViewICS;->setVisibility(I)V
:goto_18
iget-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mDataChanged:Z
if-eqz v0, :cond_30
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getLeft()I
move-result v2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getTop()I
move-result v3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getRight()I
move-result v4
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getBottom()I
move-result v5
move-object v0, p0
invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/AdapterViewICS;->onLayout(ZIIII)V
:goto_30
:cond_30
return-void
:cond_31
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AdapterViewICS;->setVisibility(I)V
goto :goto_18
:cond_35
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mEmptyView:Landroid/view/View;
if-eqz v0, :cond_3e
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mEmptyView:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
:cond_3e
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AdapterViewICS;->setVisibility(I)V
goto :goto_30
.end method
.method public addView(Landroid/view/View;)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "addView(View) is not supported in AdapterView"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public addView(Landroid/view/View;I)V
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "addView(View, int) is not supported in AdapterView"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.registers 6
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected canAnimate()Z
.registers 2
invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z
move-result v0
if-eqz v0, :cond_c
iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I
if-lez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method  checkFocus()V
.registers 7
const/4 v4, 0x1
const/4 v5, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
if-eqz v0, :cond_e
invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I
move-result v3
if-nez v3, :cond_3d
:cond_e
move v1, v4
:goto_f
if-eqz v1, :cond_17
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->isInFilterMode()Z
move-result v3
if-eqz v3, :cond_3f
:cond_17
move v2, v4
:goto_18
if-eqz v2, :cond_41
iget-boolean v3, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mDesiredFocusableInTouchModeState:Z
if-eqz v3, :cond_41
move v3, v4
:goto_1f
invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V
if-eqz v2, :cond_43
iget-boolean v3, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mDesiredFocusableState:Z
if-eqz v3, :cond_43
move v3, v4
:goto_29
invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V
iget-object v3, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mEmptyView:Landroid/view/View;
if-eqz v3, :cond_3c
if-eqz v0, :cond_38
invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z
move-result v3
if-eqz v3, :cond_39
:cond_38
move v5, v4
:cond_39
invoke-direct {p0, v5}, Landroid/support/v7/internal/widget/AdapterViewICS;->updateEmptyStatus(Z)V
:cond_3c
return-void
:cond_3d
move v1, v5
goto :goto_f
:cond_3f
move v2, v5
goto :goto_18
:cond_41
move v3, v5
goto :goto_1f
:cond_43
move v3, v5
goto :goto_29
.end method
.method  checkSelectionChanged()V
.registers 5
iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedPosition:I
iget v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldSelectedPosition:I
if-ne v0, v1, :cond_e
iget-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedRowId:J
iget-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldSelectedRowId:J
cmp-long v0, v0, v2
if-eqz v0, :cond_19
:cond_e
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->selectionChanged()V
iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedPosition:I
iput v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldSelectedPosition:I
iget-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedRowId:J
iput-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOldSelectedRowId:J
:cond_19
return-void
.end method
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 4
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getSelectedView()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_14
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v1
if-nez v1, :cond_14
invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
move-result v1
if-eqz v1, :cond_14
const/4 v1, 0x1
:goto_13
return v1
:cond_14
const/4 v1, 0x0
goto :goto_13
.end method
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
.registers 2
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewICS;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V
return-void
.end method
.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
.registers 2
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewICS;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
return-void
.end method
.method  findSyncPosition()I
.registers 20
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I
if-nez v2, :cond_8
const/4 v14, -0x1
:cond_7
:goto_7
return v14
:cond_8
move-object/from16 v0, p0
iget-wide v8, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncRowId:J
move-object/from16 v0, p0
iget v14, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncPosition:I
const-wide/high16 v15, -0x8000
cmp-long v15, v8, v15
if-nez v15, :cond_18
const/4 v14, -0x1
goto :goto_7
:cond_18
const/4 v15, 0x0
invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I
move-result v14
add-int/lit8 v15, v2, -0x1
invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I
move-result v14
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v15
const-wide/16 v17, 0x64
add-long v3, v15, v17
move v5, v14
move v10, v14
const/4 v11, 0x0
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getAdapter()Landroid/widget/Adapter;
move-result-object v1
if-nez v1, :cond_40
const/4 v14, -0x1
goto :goto_7
:cond_36
if-nez v6, :cond_3c
if-eqz v11, :cond_62
if-nez v7, :cond_62
:cond_3c
add-int/lit8 v10, v10, 0x1
move v14, v10
const/4 v11, 0x0
:goto_40
:cond_40
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v15
cmp-long v15, v15, v3
if-gtz v15, :cond_5c
invoke-interface {v1, v14}, Landroid/widget/Adapter;->getItemId(I)J
move-result-wide v12
cmp-long v15, v12, v8
if-eqz v15, :cond_7
add-int/lit8 v15, v2, -0x1
if-ne v10, v15, :cond_5e
const/4 v7, 0x1
:goto_55
if-nez v5, :cond_60
const/4 v6, 0x1
:goto_58
if-eqz v7, :cond_36
if-eqz v6, :cond_36
:cond_5c
const/4 v14, -0x1
goto :goto_7
:cond_5e
const/4 v7, 0x0
goto :goto_55
:cond_60
const/4 v6, 0x0
goto :goto_58
:cond_62
if-nez v7, :cond_68
if-nez v11, :cond_40
if-nez v6, :cond_40
:cond_68
add-int/lit8 v5, v5, -0x1
move v14, v5
const/4 v11, 0x1
goto :goto_40
.end method
.method public abstract getAdapter()Landroid/widget/Adapter;
.end method
.method public getCount()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I
return v0
.end method
.method public getEmptyView()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mEmptyView:Landroid/view/View;
return-object v0
.end method
.method public getFirstVisiblePosition()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mFirstPosition:I
return v0
.end method
.method public getItemAtPosition(I)Ljava/lang/Object;
.registers 4
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
if-eqz v0, :cond_8
if-gez p1, :cond_a
:cond_8
const/4 v1, 0x0
:goto_9
return-object v1
:cond_a
invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
goto :goto_9
.end method
.method public getItemIdAtPosition(I)J
.registers 5
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
if-eqz v0, :cond_8
if-gez p1, :cond_b
:cond_8
const-wide/high16 v1, -0x8000
:goto_a
return-wide v1
:cond_b
invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J
move-result-wide v1
goto :goto_a
.end method
.method public getLastVisiblePosition()I
.registers 3
iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mFirstPosition:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getChildCount()I
move-result v1
add-int/2addr v0, v1
add-int/lit8 v0, v0, -0x1
return v0
.end method
.method public final getOnItemClickListener()Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOnItemClickListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;
return-object v0
.end method
.method public final getOnItemLongClickListener()Landroid/support/v7/internal/widget/AdapterViewICS$OnItemLongClickListener;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOnItemLongClickListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemLongClickListener;
return-object v0
.end method
.method public final getOnItemSelectedListener()Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOnItemSelectedListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;
return-object v0
.end method
.method public getPositionForView(Landroid/view/View;)I
.registers 9
const/4 v5, -0x1
move-object v3, p1
:goto_2
:try_start_2
invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v4
check-cast v4, Landroid/view/View;
invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
:try_end_b
.catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_b} :catch_10
move-result v6
if-nez v6, :cond_12
move-object v3, v4
goto :goto_2
:catch_10
move-exception v1
:cond_11
:goto_11
return v5
:cond_12
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getChildCount()I
move-result v0
const/4 v2, 0x0
:goto_17
if-ge v2, v0, :cond_11
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/AdapterViewICS;->getChildAt(I)Landroid/view/View;
move-result-object v6
invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_27
iget v5, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mFirstPosition:I
add-int/2addr v5, v2
goto :goto_11
:cond_27
add-int/lit8 v2, v2, 0x1
goto :goto_17
.end method
.method public getSelectedItem()Ljava/lang/Object;
.registers 4
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getSelectedItemPosition()I
move-result v1
if-eqz v0, :cond_17
invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I
move-result v2
if-lez v2, :cond_17
if-ltz v1, :cond_17
invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;
move-result-object v2
:goto_16
return-object v2
:cond_17
const/4 v2, 0x0
goto :goto_16
.end method
.method public getSelectedItemId()J
.registers 3
iget-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedRowId:J
return-wide v0
.end method
.method public getSelectedItemPosition()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedPosition:I
return v0
.end method
.method public abstract getSelectedView()Landroid/view/View;
.end method
.method  handleDataChanged()V
.registers 11
const-wide/high16 v8, -0x8000
const/4 v7, 0x1
const/4 v6, -0x1
const/4 v5, 0x0
iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mItemCount:I
const/4 v1, 0x0
if-lez v0, :cond_40
iget-boolean v4, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNeedSync:Z
if-eqz v4, :cond_20
iput-boolean v5, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNeedSync:Z
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->findSyncPosition()I
move-result v2
if-ltz v2, :cond_20
invoke-virtual {p0, v2, v7}, Landroid/support/v7/internal/widget/AdapterViewICS;->lookForSelectablePosition(IZ)I
move-result v3
if-ne v3, v2, :cond_20
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/AdapterViewICS;->setNextSelectedPositionInt(I)V
const/4 v1, 0x1
:cond_20
if-nez v1, :cond_40
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getSelectedItemPosition()I
move-result v2
if-lt v2, v0, :cond_2a
add-int/lit8 v2, v0, -0x1
:cond_2a
if-gez v2, :cond_2d
const/4 v2, 0x0
:cond_2d
invoke-virtual {p0, v2, v7}, Landroid/support/v7/internal/widget/AdapterViewICS;->lookForSelectablePosition(IZ)I
move-result v3
if-gez v3, :cond_37
invoke-virtual {p0, v2, v5}, Landroid/support/v7/internal/widget/AdapterViewICS;->lookForSelectablePosition(IZ)I
move-result v3
:cond_37
if-ltz v3, :cond_40
invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/AdapterViewICS;->setNextSelectedPositionInt(I)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->checkSelectionChanged()V
const/4 v1, 0x1
:cond_40
if-nez v1, :cond_4f
iput v6, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedPosition:I
iput-wide v8, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedRowId:J
iput v6, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedPosition:I
iput-wide v8, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedRowId:J
iput-boolean v5, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNeedSync:Z
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->checkSelectionChanged()V
:cond_4f
return-void
.end method
.method  isInFilterMode()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method  lookForSelectablePosition(IZ)I
.registers 3
return p1
.end method
.method protected onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectionNotifier:Landroid/support/v7/internal/widget/AdapterViewICS$SelectionNotifier;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->removeCallbacks(Ljava/lang/Runnable;)Z
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 7
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getHeight()I
move-result v0
iput v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mLayoutHeight:I
return-void
.end method
.method public performItemClick(Landroid/view/View;IJ)Z
.registers 12
const/4 v6, 0x1
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOnItemClickListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;
if-eqz v1, :cond_18
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->playSoundEffect(I)V
if-eqz p1, :cond_e
invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V
:cond_e
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOnItemClickListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;
move-object v1, p0
move-object v2, p1
move v3, p2
move-wide v4, p3
invoke-interface/range {v0 .. v5}, Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;->onItemClick(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/view/View;IJ)V
move v0, v6
:cond_18
return v0
.end method
.method  rememberSyncState()V
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getChildCount()I
move-result v2
if-lez v2, :cond_2e
iput-boolean v5, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNeedSync:Z
iget v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mLayoutHeight:I
int-to-long v2, v2
iput-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncHeight:J
iget v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedPosition:I
if-ltz v2, :cond_2f
iget v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedPosition:I
iget v3, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mFirstPosition:I
sub-int/2addr v2, v3
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/AdapterViewICS;->getChildAt(I)Landroid/view/View;
move-result-object v1
iget-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedRowId:J
iput-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncRowId:J
iget v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedPosition:I
iput v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncPosition:I
if-eqz v1, :cond_2c
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v2
iput v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSpecificTop:I
:cond_2c
iput v4, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncMode:I
:goto_2e
:cond_2e
return-void
:cond_2f
invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/AdapterViewICS;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
iget v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mFirstPosition:I
if-ltz v2, :cond_5a
iget v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mFirstPosition:I
invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I
move-result v3
if-ge v2, v3, :cond_5a
iget v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mFirstPosition:I
invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J
move-result-wide v2
iput-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncRowId:J
:goto_4b
iget v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mFirstPosition:I
iput v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncPosition:I
if-eqz v1, :cond_57
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v2
iput v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSpecificTop:I
:cond_57
iput v5, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncMode:I
goto :goto_2e
:cond_5a
const-wide/16 v2, -0x1
iput-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncRowId:J
goto :goto_4b
.end method
.method public removeAllViews()V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "removeAllViews() is not supported in AdapterView"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public removeView(Landroid/view/View;)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "removeView(View) is not supported in AdapterView"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public removeViewAt(I)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "removeViewAt(int) is not supported in AdapterView"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method  selectionChanged()V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOnItemSelectedListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;
if-eqz v0, :cond_1d
iget-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mInLayout:Z
if-nez v0, :cond_c
iget-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mBlockLayoutRequests:Z
if-eqz v0, :cond_33
:cond_c
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectionNotifier:Landroid/support/v7/internal/widget/AdapterViewICS$SelectionNotifier;
if-nez v0, :cond_18
new-instance v0, Landroid/support/v7/internal/widget/AdapterViewICS$SelectionNotifier;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/AdapterViewICS$SelectionNotifier;-><init>(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/support/v7/internal/widget/AdapterViewICS$1;)V
iput-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectionNotifier:Landroid/support/v7/internal/widget/AdapterViewICS$SelectionNotifier;
:cond_18
iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectionNotifier:Landroid/support/v7/internal/widget/AdapterViewICS$SelectionNotifier;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->post(Ljava/lang/Runnable;)Z
:goto_1d
:cond_1d
iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedPosition:I
const/4 v1, -0x1
if-eq v0, v1, :cond_32
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->isShown()Z
move-result v0
if-eqz v0, :cond_32
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->isInTouchMode()Z
move-result v0
if-nez v0, :cond_32
const/4 v0, 0x4
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->sendAccessibilityEvent(I)V
:cond_32
return-void
:cond_33
invoke-direct {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->fireOnSelected()V
goto :goto_1d
.end method
.method public abstract setAdapter(Landroid/widget/Adapter;)V
.end method
.method public setEmptyView(Landroid/view/View;)V
.registers 5
iput-object p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mEmptyView:Landroid/view/View;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
if-eqz v0, :cond_e
invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z
move-result v2
if-eqz v2, :cond_13
:cond_e
const/4 v1, 0x1
:goto_f
invoke-direct {p0, v1}, Landroid/support/v7/internal/widget/AdapterViewICS;->updateEmptyStatus(Z)V
return-void
:cond_13
const/4 v1, 0x0
goto :goto_f
.end method
.method public setFocusable(Z)V
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
if-eqz v0, :cond_e
invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I
move-result v4
if-nez v4, :cond_23
:cond_e
move v1, v3
:goto_f
iput-boolean p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mDesiredFocusableState:Z
if-nez p1, :cond_15
iput-boolean v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mDesiredFocusableInTouchModeState:Z
:cond_15
if-eqz p1, :cond_25
if-eqz v1, :cond_1f
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->isInFilterMode()Z
move-result v4
if-eqz v4, :cond_25
:goto_1f
:cond_1f
invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V
return-void
:cond_23
move v1, v2
goto :goto_f
:cond_25
move v3, v2
goto :goto_1f
.end method
.method public setFocusableInTouchMode(Z)V
.registers 7
const/4 v2, 0x0
const/4 v3, 0x1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
if-eqz v0, :cond_e
invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I
move-result v4
if-nez v4, :cond_23
:cond_e
move v1, v3
:goto_f
iput-boolean p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mDesiredFocusableInTouchModeState:Z
if-eqz p1, :cond_15
iput-boolean v3, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mDesiredFocusableState:Z
:cond_15
if-eqz p1, :cond_25
if-eqz v1, :cond_1f
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->isInFilterMode()Z
move-result v4
if-eqz v4, :cond_25
:goto_1f
:cond_1f
invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V
return-void
:cond_23
move v1, v2
goto :goto_f
:cond_25
move v3, v2
goto :goto_1f
.end method
.method  setNextSelectedPositionInt(I)V
.registers 4
iput p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedPosition:I
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewICS;->getItemIdAtPosition(I)J
move-result-wide v0
iput-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedRowId:J
iget-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNeedSync:Z
if-eqz v0, :cond_18
iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncMode:I
if-nez v0, :cond_18
if-ltz p1, :cond_18
iput p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncPosition:I
iget-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mNextSelectedRowId:J
iput-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSyncRowId:J
:cond_18
return-void
.end method
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
.registers 4
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setOnItemClickListener(Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOnItemClickListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;
return-void
.end method
.method public setOnItemLongClickListener(Landroid/support/v7/internal/widget/AdapterViewICS$OnItemLongClickListener;)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->isLongClickable()Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->setLongClickable(Z)V
:cond_a
iput-object p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOnItemLongClickListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemLongClickListener;
return-void
.end method
.method public setOnItemSelectedListener(Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mOnItemSelectedListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;
return-void
.end method
.method  setSelectedPositionInt(I)V
.registers 4
iput p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedPosition:I
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewICS;->getItemIdAtPosition(I)J
move-result-wide v0
iput-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->mSelectedRowId:J
return-void
.end method
.method public abstract setSelection(I)V
.end method