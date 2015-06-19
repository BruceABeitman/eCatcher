.class public Lcom/pinguo/album/views/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"
.field private static final TAG:Ljava/lang/String; = "HorizontalListView"
.field protected mAdapter:Landroid/widget/ListAdapter;
.field protected mCurrentX:I
.field private mDataChanged:Z
.field private mDataObserver:Landroid/database/DataSetObserver;
.field private mDisplayOffset:I
.field private mGesture:Landroid/view/GestureDetector;
.field private mLeftViewIndex:I
.field private mMaxX:I
.field protected mNextX:I
.field private mOnGesture:Landroid/view/GestureDetector$OnGestureListener;
.field private mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
.field private mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;
.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
.field private mRemovedViewQueue:Ljava/util/Queue;
.field private mRightViewIndex:I
.field protected mScroller:Landroid/widget/Scroller;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mLeftViewIndex:I
iput v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mRightViewIndex:I
const v0, 0x7fffffff
iput v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mMaxX:I
iput v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mDisplayOffset:I
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;
iput-boolean v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mDataChanged:Z
new-instance v0, Lcom/pinguo/album/views/HorizontalListView$1;
invoke-direct {v0, p0}, Lcom/pinguo/album/views/HorizontalListView$1;-><init>(Lcom/pinguo/album/views/HorizontalListView;)V
iput-object v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;
new-instance v0, Lcom/pinguo/album/views/HorizontalListView$2;
invoke-direct {v0, p0}, Lcom/pinguo/album/views/HorizontalListView$2;-><init>(Lcom/pinguo/album/views/HorizontalListView;)V
iput-object v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;
invoke-direct {p0}, Lcom/pinguo/album/views/HorizontalListView;->initView()V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/album/views/HorizontalListView;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/album/views/HorizontalListView;->mDataChanged:Z
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/album/views/HorizontalListView;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/album/views/HorizontalListView;->reset()V
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/album/views/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/album/views/HorizontalListView;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mLeftViewIndex:I
return v0
.end method
.method static synthetic access$6(Lcom/pinguo/album/views/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/album/views/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;
return-object v0
.end method
.method private addAndMeasureChild(Landroid/view/View;I)V
.registers 7
const/4 v1, -0x1
const/high16 v3, -0x8000
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
if-nez v0, :cond_e
new-instance v0, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
:cond_e
const/4 v1, 0x1
invoke-virtual {p0, p1, p2, v0, v1}, Lcom/pinguo/album/views/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
invoke-virtual {p0}, Lcom/pinguo/album/views/HorizontalListView;->getWidth()I
move-result v1
invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
invoke-virtual {p0}, Lcom/pinguo/album/views/HorizontalListView;->getHeight()I
move-result v2
invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V
return-void
.end method
.method private fillList(I)V
.registers 5
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/pinguo/album/views/HorizontalListView;->getChildCount()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-virtual {p0, v2}, Lcom/pinguo/album/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_11
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v1
:cond_11
invoke-direct {p0, v1, p1}, Lcom/pinguo/album/views/HorizontalListView;->fillListRight(II)V
const/4 v1, 0x0
const/4 v2, 0x0
invoke-virtual {p0, v2}, Lcom/pinguo/album/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_20
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v1
:cond_20
invoke-direct {p0, v1, p1}, Lcom/pinguo/album/views/HorizontalListView;->fillListLeft(II)V
return-void
.end method
.method private fillListLeft(II)V
.registers 7
:goto_0
add-int v1, p1, p2
if-lez v1, :cond_8
iget v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mLeftViewIndex:I
if-gez v1, :cond_9
:cond_8
return-void
:cond_9
iget-object v2, p0, Lcom/pinguo/album/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
iget v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mLeftViewIndex:I
iget-object v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;
invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/View;
invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/pinguo/album/views/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
sub-int/2addr p1, v1
iget v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mLeftViewIndex:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mLeftViewIndex:I
iget v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mDisplayOffset:I
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v2
sub-int/2addr v1, v2
iput v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mDisplayOffset:I
goto :goto_0
.end method
.method private fillListRight(II)V
.registers 7
:goto_0
add-int v1, p1, p2
invoke-virtual {p0}, Lcom/pinguo/album/views/HorizontalListView;->getWidth()I
move-result v2
if-ge v1, v2, :cond_12
iget v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mRightViewIndex:I
iget-object v2, p0, Lcom/pinguo/album/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I
move-result v2
if-lt v1, v2, :cond_13
:cond_12
return-void
:cond_13
iget-object v2, p0, Lcom/pinguo/album/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
iget v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mRightViewIndex:I
iget-object v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;
invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/View;
invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
const/4 v1, -0x1
invoke-direct {p0, v0, v1}, Lcom/pinguo/album/views/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
add-int/2addr p1, v1
iget v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mRightViewIndex:I
iget-object v2, p0, Lcom/pinguo/album/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I
move-result v2
add-int/lit8 v2, v2, -0x1
if-ne v1, v2, :cond_42
iget v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mCurrentX:I
add-int/2addr v1, p1
invoke-virtual {p0}, Lcom/pinguo/album/views/HorizontalListView;->getWidth()I
move-result v2
sub-int/2addr v1, v2
iput v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mMaxX:I
:cond_42
iget v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mMaxX:I
if-gez v1, :cond_49
const/4 v1, 0x0
iput v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mMaxX:I
:cond_49
iget v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mRightViewIndex:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mRightViewIndex:I
goto :goto_0
.end method
.method private declared-synchronized initView()V
.registers 4
monitor-enter p0
const/4 v0, -0x1
:try_start_2
iput v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mLeftViewIndex:I
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mRightViewIndex:I
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mDisplayOffset:I
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mCurrentX:I
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mNextX:I
const v0, 0x7fffffff
iput v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mMaxX:I
new-instance v0, Landroid/widget/Scroller;
invoke-virtual {p0}, Lcom/pinguo/album/views/HorizontalListView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mScroller:Landroid/widget/Scroller;
new-instance v0, Landroid/view/GestureDetector;
invoke-virtual {p0}, Lcom/pinguo/album/views/HorizontalListView;->getContext()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/album/views/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;
invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
iput-object v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mGesture:Landroid/view/GestureDetector;
:try_end_2d
.catchall {:try_start_2 .. :try_end_2d} :catchall_2f
monitor-exit p0
return-void
:catchall_2f
move-exception v0
monitor-exit p0
throw v0
.end method
.method private positionItems(I)V
.registers 9
invoke-virtual {p0}, Lcom/pinguo/album/views/HorizontalListView;->getChildCount()I
move-result v4
if-lez v4, :cond_14
iget v4, p0, Lcom/pinguo/album/views/HorizontalListView;->mDisplayOffset:I
add-int/2addr v4, p1
iput v4, p0, Lcom/pinguo/album/views/HorizontalListView;->mDisplayOffset:I
iget v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mDisplayOffset:I
const/4 v2, 0x0
:goto_e
invoke-virtual {p0}, Lcom/pinguo/album/views/HorizontalListView;->getChildCount()I
move-result v4
if-lt v2, v4, :cond_15
:cond_14
return-void
:cond_15
invoke-virtual {p0, v2}, Lcom/pinguo/album/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
const/4 v4, 0x0
add-int v5, v3, v1
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v6
invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V
invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I
move-result v4
add-int/2addr v4, v1
add-int/2addr v3, v4
add-int/lit8 v2, v2, 0x1
goto :goto_e
.end method
.method private removeNonVisibleItems(I)V
.registers 6
const/4 v3, 0x0
invoke-virtual {p0, v3}, Lcom/pinguo/album/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
:goto_5
if-eqz v0, :cond_e
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v1
add-int/2addr v1, p1
if-lez v1, :cond_26
:cond_e
invoke-virtual {p0}, Lcom/pinguo/album/views/HorizontalListView;->getChildCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {p0, v1}, Lcom/pinguo/album/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
:goto_18
if-eqz v0, :cond_25
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v1
add-int/2addr v1, p1
invoke-virtual {p0}, Lcom/pinguo/album/views/HorizontalListView;->getWidth()I
move-result v2
if-ge v1, v2, :cond_42
:cond_25
return-void
:cond_26
iget v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mDisplayOffset:I
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v2
add-int/2addr v1, v2
iput v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mDisplayOffset:I
iget-object v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;
invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
invoke-virtual {p0, v0}, Lcom/pinguo/album/views/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V
iget v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mLeftViewIndex:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mLeftViewIndex:I
invoke-virtual {p0, v3}, Lcom/pinguo/album/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
goto :goto_5
:cond_42
iget-object v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;
invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
invoke-virtual {p0, v0}, Lcom/pinguo/album/views/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V
iget v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mRightViewIndex:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mRightViewIndex:I
invoke-virtual {p0}, Lcom/pinguo/album/views/HorizontalListView;->getChildCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {p0, v1}, Lcom/pinguo/album/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
goto :goto_18
.end method
.method private declared-synchronized reset()V
.registers 2
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/pinguo/album/views/HorizontalListView;->initView()V
invoke-virtual {p0}, Lcom/pinguo/album/views/HorizontalListView;->removeAllViewsInLayout()V
invoke-virtual {p0}, Lcom/pinguo/album/views/HorizontalListView;->requestLayout()V
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_c
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.registers 4
invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
iget-object v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mGesture:Landroid/view/GestureDetector;
invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v1
or-int/2addr v0, v1
return v0
.end method
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/album/views/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
return-object v0
.end method
.method public getAdapter()Landroid/widget/ListAdapter;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
return-object v0
.end method
.method public getSelectedView()Landroid/view/View;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method protected onDown(Landroid/view/MotionEvent;)Z
.registers 4
const/4 v1, 0x1
iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V
return v1
.end method
.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 14
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mScroller:Landroid/widget/Scroller;
iget v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mNextX:I
const/4 v2, 0x0
neg-float v3, p3
float-to-int v3, v3
const/4 v4, 0x0
const/4 v5, 0x0
iget v6, p0, Lcom/pinguo/album/views/HorizontalListView;->mMaxX:I
const/4 v7, 0x0
const/4 v8, 0x0
invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V
monitor-exit p0
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_17
invoke-virtual {p0}, Lcom/pinguo/album/views/HorizontalListView;->requestLayout()V
const/4 v0, 0x1
return v0
:catchall_17
move-exception v0
:try_start_18
monitor-exit p0
:try_end_19
.catchall {:try_start_18 .. :try_end_19} :catchall_17
throw v0
.end method
.method protected declared-synchronized onLayout(ZIIII)V
.registers 11
monitor-enter p0
:try_start_1
invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V
iget-object v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_6c
if-nez v3, :cond_a
:cond_8
:goto_8
monitor-exit p0
return-void
:cond_a
:try_start_a
iget-boolean v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mDataChanged:Z
if-eqz v3, :cond_1b
iget v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mCurrentX:I
invoke-direct {p0}, Lcom/pinguo/album/views/HorizontalListView;->initView()V
invoke-virtual {p0}, Lcom/pinguo/album/views/HorizontalListView;->removeAllViewsInLayout()V
iput v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mNextX:I
const/4 v3, 0x0
iput-boolean v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mDataChanged:Z
:cond_1b
iget-object v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z
move-result v3
if-eqz v3, :cond_2b
iget-object v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I
move-result v2
iput v2, p0, Lcom/pinguo/album/views/HorizontalListView;->mNextX:I
:cond_2b
iget v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mNextX:I
if-gtz v3, :cond_38
const/4 v3, 0x0
iput v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mNextX:I
iget-object v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mScroller:Landroid/widget/Scroller;
const/4 v4, 0x1
invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V
:cond_38
iget v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mNextX:I
iget v4, p0, Lcom/pinguo/album/views/HorizontalListView;->mMaxX:I
if-lt v3, v4, :cond_48
iget v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mMaxX:I
iput v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mNextX:I
iget-object v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mScroller:Landroid/widget/Scroller;
const/4 v4, 0x1
invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V
:cond_48
iget v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mCurrentX:I
iget v4, p0, Lcom/pinguo/album/views/HorizontalListView;->mNextX:I
sub-int v0, v3, v4
invoke-direct {p0, v0}, Lcom/pinguo/album/views/HorizontalListView;->removeNonVisibleItems(I)V
invoke-direct {p0, v0}, Lcom/pinguo/album/views/HorizontalListView;->fillList(I)V
invoke-direct {p0, v0}, Lcom/pinguo/album/views/HorizontalListView;->positionItems(I)V
iget v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mNextX:I
iput v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mCurrentX:I
iget-object v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z
move-result v3
if-nez v3, :cond_8
new-instance v3, Lcom/pinguo/album/views/HorizontalListView$3;
invoke-direct {v3, p0}, Lcom/pinguo/album/views/HorizontalListView$3;-><init>(Lcom/pinguo/album/views/HorizontalListView;)V
invoke-virtual {p0, v3}, Lcom/pinguo/album/views/HorizontalListView;->post(Ljava/lang/Runnable;)Z
:try_end_6b
.catchall {:try_start_a .. :try_end_6b} :catchall_6c
goto :goto_8
:catchall_6c
move-exception v3
monitor-exit p0
throw v3
.end method
.method public declared-synchronized scrollTo(I)V
.registers 7
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mScroller:Landroid/widget/Scroller;
iget v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mNextX:I
const/4 v2, 0x0
iget v3, p0, Lcom/pinguo/album/views/HorizontalListView;->mNextX:I
sub-int v3, p1, v3
const/4 v4, 0x0
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V
invoke-virtual {p0}, Lcom/pinguo/album/views/HorizontalListView;->requestLayout()V
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_13
monitor-exit p0
return-void
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
.registers 2
check-cast p1, Landroid/widget/ListAdapter;
invoke-virtual {p0, p1}, Lcom/pinguo/album/views/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method public setAdapter(Landroid/widget/ListAdapter;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
iget-object v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
:cond_b
iput-object p1, p0, Lcom/pinguo/album/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
iget-object v1, p0, Lcom/pinguo/album/views/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
invoke-direct {p0}, Lcom/pinguo/album/views/HorizontalListView;->reset()V
return-void
.end method
.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
return-void
.end method
.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;
return-void
.end method
.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
return-void
.end method
.method public setSelection(I)V
.registers 2
return-void
.end method