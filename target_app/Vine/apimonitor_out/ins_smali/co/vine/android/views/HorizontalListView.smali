.class public Lco/vine/android/views/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"
.field public static final NO_POSITION:I = -0x1
.field private static final TOUCH_MODE_DONE_WAITING:I = 0x2
.field private static final TOUCH_MODE_DOWN:I = 0x0
.field private static final TOUCH_MODE_FLING:I = 0x4
.field private static final TOUCH_MODE_REST:I = -0x1
.field private static final TOUCH_MODE_SCROLL:I = 0x3
.field private static final TOUCH_MODE_TAP:I = 0x1
.field private mAdapter:Landroid/widget/ListAdapter;
.field private mChildFillWidth:I
.field private mChildWidthListener:Lco/vine/android/views/HorizontalListView$ChildWidthListener;
.field private mClipToPadding:Z
.field private mDataChanged:Z
.field private mDataSetObserver:Landroid/database/DataSetObserver;
.field private mDivider:Landroid/graphics/drawable/Drawable;
.field private mDividerPaint:Landroid/graphics/Paint;
.field private mDividerWidth:I
.field private mDownPosition:I
.field private final mEdgePadding:I
.field private final mFillWidthHeightRatio:F
.field private mFingerScrollEnabled:Z
.field private mFirstVisiblePos:I
.field private final mFlingRunnable:Lco/vine/android/views/HorizontalListView$FlingRunnable;
.field private mHeightMeasureSpec:I
.field private final mIsRecycled:[Z
.field private mItemCount:I
.field private mLastX:I
.field private mLongPressMillis:I
.field private final mMaximumFlingVelocity:I
.field private final mMinimumFlingVelocity:I
.field private mMotionPosition:I
.field private mMotionX:I
.field private mMotionY:I
.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
.field private mOnScrollListener:Lco/vine/android/views/HorizontalListView$OnScrollListener;
.field private mPendingCheckForLongPress:Lco/vine/android/views/HorizontalListView$CheckForLongPress;
.field private mPendingCheckForTap:Lco/vine/android/views/HorizontalListView$CheckForTap;
.field private mPerformClick:Lco/vine/android/views/HorizontalListView$PerformClick;
.field private final mRecycler:Lco/vine/android/views/HorizontalListView$Recycler;
.field private mSelector:Landroid/graphics/drawable/Drawable;
.field private mTouchFrame:Landroid/graphics/Rect;
.field private mTouchMode:I
.field private mTouchModeReset:Ljava/lang/Runnable;
.field private final mTouchSlop:I
.field private mVelocityTracker:Landroid/view/VelocityTracker;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lco/vine/android/views/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Lco/vine/android/shared/R$attr;->horizontalListViewStyle:I
invoke-direct {p0, p1, p2, v0}, Lco/vine/android/views/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 12
const/4 v7, 0x1
const/high16 v6, -0x8000
const/4 v5, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v4, -0x1
iput v4, p0, Lco/vine/android/views/HorizontalListView;->mTouchMode:I
new-instance v4, Lco/vine/android/views/HorizontalListView$Recycler;
invoke-direct {v4, p0}, Lco/vine/android/views/HorizontalListView$Recycler;-><init>(Lco/vine/android/views/HorizontalListView;)V
iput-object v4, p0, Lco/vine/android/views/HorizontalListView;->mRecycler:Lco/vine/android/views/HorizontalListView$Recycler;
new-array v4, v7, [Z
iput-object v4, p0, Lco/vine/android/views/HorizontalListView;->mIsRecycled:[Z
iput v5, p0, Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
iput v6, p0, Lco/vine/android/views/HorizontalListView;->mMotionX:I
iput v6, p0, Lco/vine/android/views/HorizontalListView;->mMotionY:I
iput-boolean v7, p0, Lco/vine/android/views/HorizontalListView;->mFingerScrollEnabled:Z
iput v6, p0, Lco/vine/android/views/HorizontalListView;->mLastX:I
new-instance v4, Lco/vine/android/views/HorizontalListView$FlingRunnable;
invoke-direct {v4, p0}, Lco/vine/android/views/HorizontalListView$FlingRunnable;-><init>(Lco/vine/android/views/HorizontalListView;)V
iput-object v4, p0, Lco/vine/android/views/HorizontalListView;->mFlingRunnable:Lco/vine/android/views/HorizontalListView$FlingRunnable;
invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I
move-result v4
iput v4, p0, Lco/vine/android/views/HorizontalListView;->mLongPressMillis:I
sget-object v4, Lco/vine/android/shared/R$styleable;->HorizontalListView:[I
invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
if-eqz v2, :cond_3b
invoke-virtual {p0, v2}, Lco/vine/android/views/HorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
:cond_3b
invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v3
if-lez v3, :cond_44
invoke-virtual {p0, v3}, Lco/vine/android/views/HorizontalListView;->setDividerWidth(I)V
:cond_44
const/4 v4, 0x2
invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v4
iput v4, p0, Lco/vine/android/views/HorizontalListView;->mEdgePadding:I
const/4 v4, 0x3
const/4 v5, 0x0
invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result v4
iput v4, p0, Lco/vine/android/views/HorizontalListView;->mFillWidthHeightRatio:F
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v1
invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
move-result v4
iput v4, p0, Lco/vine/android/views/HorizontalListView;->mTouchSlop:I
invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I
move-result v4
iput v4, p0, Lco/vine/android/views/HorizontalListView;->mMinimumFlingVelocity:I
invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I
move-result v4
iput v4, p0, Lco/vine/android/views/HorizontalListView;->mMaximumFlingVelocity:I
return-void
.end method
.method static synthetic access$000(Lco/vine/android/views/HorizontalListView;)I
.registers 2
iget v0, p0, Lco/vine/android/views/HorizontalListView;->mTouchMode:I
return v0
.end method
.method static synthetic access$002(Lco/vine/android/views/HorizontalListView;I)I
.registers 2
iput p1, p0, Lco/vine/android/views/HorizontalListView;->mTouchMode:I
return p1
.end method
.method static synthetic access$100(Lco/vine/android/views/HorizontalListView;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/views/HorizontalListView;->mDataChanged:Z
return v0
.end method
.method static synthetic access$1000(Lco/vine/android/views/HorizontalListView;)I
.registers 2
iget v0, p0, Lco/vine/android/views/HorizontalListView;->mLongPressMillis:I
return v0
.end method
.method static synthetic access$102(Lco/vine/android/views/HorizontalListView;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/views/HorizontalListView;->mDataChanged:Z
return p1
.end method
.method static synthetic access$1100(Lco/vine/android/views/HorizontalListView;)Lco/vine/android/views/HorizontalListView$CheckForLongPress;
.registers 2
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mPendingCheckForLongPress:Lco/vine/android/views/HorizontalListView$CheckForLongPress;
return-object v0
.end method
.method static synthetic access$1102(Lco/vine/android/views/HorizontalListView;Lco/vine/android/views/HorizontalListView$CheckForLongPress;)Lco/vine/android/views/HorizontalListView$CheckForLongPress;
.registers 2
iput-object p1, p0, Lco/vine/android/views/HorizontalListView;->mPendingCheckForLongPress:Lco/vine/android/views/HorizontalListView$CheckForLongPress;
return-object p1
.end method
.method static synthetic access$1300(Lco/vine/android/views/HorizontalListView;)I
.registers 2
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getWindowAttachCount()I
move-result v0
return v0
.end method
.method static synthetic access$1400(Lco/vine/android/views/HorizontalListView;)I
.registers 2
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getWindowAttachCount()I
move-result v0
return v0
.end method
.method static synthetic access$1500(Lco/vine/android/views/HorizontalListView;Landroid/view/View;IJ)Z
.registers 6
invoke-direct {p0, p1, p2, p3, p4}, Lco/vine/android/views/HorizontalListView;->performLongPress(Landroid/view/View;IJ)Z
move-result v0
return v0
.end method
.method static synthetic access$1600(Lco/vine/android/views/HorizontalListView;)I
.registers 2
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getWindowAttachCount()I
move-result v0
return v0
.end method
.method static synthetic access$1700(Lco/vine/android/views/HorizontalListView;)I
.registers 2
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getWindowAttachCount()I
move-result v0
return v0
.end method
.method static synthetic access$1800(Lco/vine/android/views/HorizontalListView;)I
.registers 2
invoke-direct {p0}, Lco/vine/android/views/HorizontalListView;->getOverflowLeft()I
move-result v0
return v0
.end method
.method static synthetic access$1900(Lco/vine/android/views/HorizontalListView;)I
.registers 2
invoke-direct {p0}, Lco/vine/android/views/HorizontalListView;->getOverflowRight()I
move-result v0
return v0
.end method
.method static synthetic access$200(Lco/vine/android/views/HorizontalListView;)I
.registers 2
iget v0, p0, Lco/vine/android/views/HorizontalListView;->mMotionPosition:I
return v0
.end method
.method static synthetic access$300(Lco/vine/android/views/HorizontalListView;)I
.registers 2
iget v0, p0, Lco/vine/android/views/HorizontalListView;->mDownPosition:I
return v0
.end method
.method static synthetic access$400(Lco/vine/android/views/HorizontalListView;)I
.registers 2
iget v0, p0, Lco/vine/android/views/HorizontalListView;->mItemCount:I
return v0
.end method
.method static synthetic access$402(Lco/vine/android/views/HorizontalListView;I)I
.registers 2
iput p1, p0, Lco/vine/android/views/HorizontalListView;->mItemCount:I
return p1
.end method
.method static synthetic access$500(Lco/vine/android/views/HorizontalListView;)Landroid/widget/ListAdapter;
.registers 2
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
return-object v0
.end method
.method static synthetic access$600(Lco/vine/android/views/HorizontalListView;Landroid/view/View;Z)V
.registers 3
invoke-virtual {p0, p1, p2}, Lco/vine/android/views/HorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
return-void
.end method
.method static synthetic access$700(Lco/vine/android/views/HorizontalListView;Landroid/view/View;Z)V
.registers 3
invoke-virtual {p0, p1, p2}, Lco/vine/android/views/HorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
return-void
.end method
.method static synthetic access$800(Lco/vine/android/views/HorizontalListView;)I
.registers 2
iget v0, p0, Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
return v0
.end method
.method static synthetic access$900(Lco/vine/android/views/HorizontalListView;)Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method private attachChild(IIIZ)Landroid/view/View;
.registers 12
iget-boolean v0, p0, Lco/vine/android/views/HorizontalListView;->mDataChanged:Z
if-nez v0, :cond_16
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mRecycler:Lco/vine/android/views/HorizontalListView$Recycler;
invoke-virtual {v0, p1}, Lco/vine/android/views/HorizontalListView$Recycler;->getActiveView(I)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_16
const/4 v5, 0x1
move-object v0, p0
move v2, p2
move v3, p3
move v4, p4
invoke-direct/range {v0 .. v5}, Lco/vine/android/views/HorizontalListView;->layoutChild(Landroid/view/View;IIZZ)V
move-object v6, v1
:goto_15
return-object v6
:cond_16
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mIsRecycled:[Z
invoke-direct {p0, p1, v0}, Lco/vine/android/views/HorizontalListView;->obtainView(I[Z)Landroid/view/View;
move-result-object v1
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mIsRecycled:[Z
const/4 v2, 0x0
aget-boolean v5, v0, v2
move-object v0, p0
move v2, p2
move v3, p3
move v4, p4
invoke-direct/range {v0 .. v5}, Lco/vine/android/views/HorizontalListView;->layoutChild(Landroid/view/View;IIZZ)V
move-object v6, v1
goto :goto_15
.end method
.method private disallowParentIntercept(Z)V
.registers 3
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eqz v0, :cond_9
invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
:cond_9
return-void
.end method
.method private fillGap(Z)V
.registers 7
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getChildCount()I
move-result v0
if-eqz p1, :cond_22
if-lez v0, :cond_1d
add-int/lit8 v3, v0, -0x1
invoke-virtual {p0, v3}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getRight()I
move-result v3
iget v4, p0, Lco/vine/android/views/HorizontalListView;->mDividerWidth:I
add-int v1, v3, v4
:goto_16
iget v3, p0, Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
add-int/2addr v3, v0
invoke-direct {p0, v3, v1}, Lco/vine/android/views/HorizontalListView;->fillRight(II)V
:goto_1c
return-void
:cond_1d
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingLeft()I
move-result v1
goto :goto_16
:cond_22
if-lez v0, :cond_39
const/4 v3, 0x0
invoke-virtual {p0, v3}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getLeft()I
move-result v3
iget v4, p0, Lco/vine/android/views/HorizontalListView;->mDividerWidth:I
sub-int v2, v3, v4
:goto_31
iget v3, p0, Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
add-int/lit8 v3, v3, -0x1
invoke-direct {p0, v3, v2}, Lco/vine/android/views/HorizontalListView;->fillLeft(II)V
goto :goto_1c
:cond_39
const/4 v2, 0x0
goto :goto_31
.end method
.method private fillLeft(II)V
.registers 9
const/4 v5, 0x0
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingTop()I
move-result v0
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingLeft()I
move-result v1
:goto_9
if-le p2, v1, :cond_1c
if-ltz p1, :cond_1c
invoke-direct {p0, p1, p2, v0, v5}, Lco/vine/android/views/HorizontalListView;->attachChild(IIIZ)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v3
iget v4, p0, Lco/vine/android/views/HorizontalListView;->mDividerWidth:I
sub-int p2, v3, v4
add-int/lit8 p1, p1, -0x1
goto :goto_9
:cond_1c
iget v3, p0, Lco/vine/android/views/HorizontalListView;->mItemCount:I
if-lez v3, :cond_36
const/4 v3, -0x1
if-ne p1, v3, :cond_36
invoke-direct {p0}, Lco/vine/android/views/HorizontalListView;->getOverflowLeft()I
move-result v3
if-gez v3, :cond_36
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->detachAllViewsFromParent()V
iput v5, p0, Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingLeft()I
move-result v3
invoke-direct {p0, v5, v3}, Lco/vine/android/views/HorizontalListView;->fillRight(II)V
:goto_35
return-void
:cond_36
add-int/lit8 v3, p1, 0x1
iput v3, p0, Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
goto :goto_35
.end method
.method private fillRight(II)V
.registers 8
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingTop()I
move-result v0
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getWidth()I
move-result v3
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingRight()I
move-result v4
sub-int v1, v3, v4
:goto_e
if-ge p2, v1, :cond_24
iget v3, p0, Lco/vine/android/views/HorizontalListView;->mItemCount:I
if-ge p1, v3, :cond_24
const/4 v3, 0x1
invoke-direct {p0, p1, p2, v0, v3}, Lco/vine/android/views/HorizontalListView;->attachChild(IIIZ)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getRight()I
move-result v3
iget v4, p0, Lco/vine/android/views/HorizontalListView;->mDividerWidth:I
add-int p2, v3, v4
add-int/lit8 p1, p1, 0x1
goto :goto_e
:cond_24
iget v3, p0, Lco/vine/android/views/HorizontalListView;->mDividerWidth:I
sub-int/2addr p2, v3
iget v3, p0, Lco/vine/android/views/HorizontalListView;->mItemCount:I
if-lez v3, :cond_4d
iget v3, p0, Lco/vine/android/views/HorizontalListView;->mItemCount:I
if-ne p1, v3, :cond_4d
invoke-direct {p0}, Lco/vine/android/views/HorizontalListView;->getOverflowRight()I
move-result v3
if-gez v3, :cond_4d
iget v3, p0, Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
if-gtz v3, :cond_3f
invoke-direct {p0}, Lco/vine/android/views/HorizontalListView;->getOverflowLeft()I
move-result v3
if-lez v3, :cond_4d
:cond_3f
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->detachAllViewsFromParent()V
iget v3, p0, Lco/vine/android/views/HorizontalListView;->mItemCount:I
add-int/lit8 v3, v3, -0x1
iget v4, p0, Lco/vine/android/views/HorizontalListView;->mEdgePadding:I
sub-int v4, v1, v4
invoke-direct {p0, v3, v4}, Lco/vine/android/views/HorizontalListView;->fillLeft(II)V
:cond_4d
return-void
.end method
.method private getOverflowLeft()I
.registers 5
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingLeft()I
move-result v2
iget v3, p0, Lco/vine/android/views/HorizontalListView;->mEdgePadding:I
add-int v1, v2, v3
const/4 v2, 0x0
invoke-virtual {p0, v2}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v0
sub-int v2, v1, v0
return v2
.end method
.method private getOverflowRight()I
.registers 5
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getWidth()I
move-result v2
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingRight()I
move-result v3
sub-int/2addr v2, v3
iget v3, p0, Lco/vine/android/views/HorizontalListView;->mEdgePadding:I
sub-int v1, v2, v3
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getChildCount()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-virtual {p0, v2}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getRight()I
move-result v0
sub-int v2, v0, v1
return v2
.end method
.method private layoutChild(Landroid/view/View;IIZZ)V
.registers 20
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v9
check-cast v9, Lco/vine/android/views/HorizontalListView$LayoutParams;
if-nez v9, :cond_11
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v9
check-cast v9, Lco/vine/android/views/HorizontalListView$LayoutParams;
invoke-virtual {p1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_11
if-eqz p5, :cond_60
if-eqz p4, :cond_5e
const/4 v11, -0x1
:goto_16
invoke-virtual {p0, p1, v11, v9}, Lco/vine/android/views/HorizontalListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
:goto_19
if-eqz p5, :cond_21
invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z
move-result v11
if-eqz v11, :cond_6a
:cond_21
const/4 v8, 0x1
:goto_22
if-eqz v8, :cond_76
iget v11, p0, Lco/vine/android/views/HorizontalListView;->mHeightMeasureSpec:I
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingTop()I
move-result v12
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingBottom()I
move-result v13
add-int/2addr v12, v13
iget v13, v9, Lco/vine/android/views/HorizontalListView$LayoutParams;->height:I
invoke-static {v11, v12, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
move-result v2
iget v11, p0, Lco/vine/android/views/HorizontalListView;->mChildFillWidth:I
if-lez v11, :cond_6c
iget v7, p0, Lco/vine/android/views/HorizontalListView;->mChildFillWidth:I
:goto_3b
if-lez v7, :cond_6f
const/high16 v11, 0x4000
invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v5
:goto_43
invoke-virtual {p1, v5, v2}, Landroid/view/View;->measure(II)V
:goto_46
invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I
move-result v10
invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I
move-result v6
if-eqz p4, :cond_7a
move/from16 v3, p2
:goto_52
if-eqz v8, :cond_7d
add-int v4, v3, v10
add-int v1, p3, v6
move/from16 v0, p3
invoke-virtual {p1, v3, v0, v4, v1}, Landroid/view/View;->layout(IIII)V
:goto_5d
return-void
:cond_5e
const/4 v11, 0x0
goto :goto_16
:cond_60
if-eqz p4, :cond_68
const/4 v11, -0x1
:goto_63
const/4 v12, 0x1
invoke-virtual {p0, p1, v11, v9, v12}, Lco/vine/android/views/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
goto :goto_19
:cond_68
const/4 v11, 0x0
goto :goto_63
:cond_6a
const/4 v8, 0x0
goto :goto_22
:cond_6c
iget v7, v9, Lco/vine/android/views/HorizontalListView$LayoutParams;->width:I
goto :goto_3b
:cond_6f
const/4 v11, 0x0
const/4 v12, 0x0
invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v5
goto :goto_43
:cond_76
invoke-virtual {p0, p1}, Lco/vine/android/views/HorizontalListView;->cleanupLayoutState(Landroid/view/View;)V
goto :goto_46
:cond_7a
sub-int v3, p2, v10
goto :goto_52
:cond_7d
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v11
sub-int v11, v3, v11
invoke-virtual {p1, v11}, Landroid/view/View;->offsetLeftAndRight(I)V
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v11
sub-int v11, p3, v11
invoke-virtual {p1, v11}, Landroid/view/View;->offsetTopAndBottom(I)V
goto :goto_5d
.end method
.method private measureChild(Landroid/view/View;I)V
.registers 10
const/4 v6, 0x0
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Lco/vine/android/views/HorizontalListView$LayoutParams;
if-nez v3, :cond_12
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Lco/vine/android/views/HorizontalListView$LayoutParams;
invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_12
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingTop()I
move-result v4
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingBottom()I
move-result v5
add-int/2addr v4, v5
iget v5, v3, Lco/vine/android/views/HorizontalListView$LayoutParams;->height:I
invoke-static {p2, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
move-result v0
iget v2, v3, Lco/vine/android/views/HorizontalListView$LayoutParams;->width:I
if-lez v2, :cond_2f
const/high16 v4, 0x4000
invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
:goto_2b
invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V
return-void
:cond_2f
invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
goto :goto_2b
.end method
.method private obtainView(I[Z)Landroid/view/View;
.registers 7
iget-object v2, p0, Lco/vine/android/views/HorizontalListView;->mRecycler:Lco/vine/android/views/HorizontalListView$Recycler;
invoke-virtual {v2, p1}, Lco/vine/android/views/HorizontalListView$Recycler;->removeRecycleView(I)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_1b
iget-object v2, p0, Lco/vine/android/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
if-eq v0, v1, :cond_16
iget-object v2, p0, Lco/vine/android/views/HorizontalListView;->mRecycler:Lco/vine/android/views/HorizontalListView$Recycler;
invoke-virtual {v2, v1, p1}, Lco/vine/android/views/HorizontalListView$Recycler;->addRecycleView(Landroid/view/View;I)V
:goto_15
return-object v0
:cond_16
const/4 v2, 0x0
const/4 v3, 0x1
aput-boolean v3, p2, v2
goto :goto_15
:cond_1b
iget-object v2, p0, Lco/vine/android/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
const/4 v3, 0x0
invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
goto :goto_15
.end method
.method private performLongPress(Landroid/view/View;IJ)Z
.registers 12
const/4 v6, 0x0
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
if-eqz v0, :cond_f
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
move-object v1, p0
move-object v2, p1
move v3, p2
move-wide v4, p3
invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
move-result v6
:cond_f
if-eqz v6, :cond_15
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/views/HorizontalListView;->performHapticFeedback(I)Z
:cond_15
return v6
.end method
.method private recycleVelocityTracker()V
.registers 2
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;
invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/views/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;
return-void
.end method
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
.registers 3
instance-of v0, p1, Lco/vine/android/views/HorizontalListView$LayoutParams;
return v0
.end method
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
.registers 21
move-object/from16 v0, p0
iget v6, v0, Lco/vine/android/views/HorizontalListView;->mDividerWidth:I
if-lez v6, :cond_b7
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;
move-object/from16 v17, v0
if-eqz v17, :cond_b7
const/4 v7, 0x1
:goto_f
if-eqz v7, :cond_e4
new-instance v3, Landroid/graphics/Rect;
invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getPaddingLeft()I
move-result v17
move/from16 v0, v17
iput v0, v3, Landroid/graphics/Rect;->left:I
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getWidth()I
move-result v17
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getPaddingRight()I
move-result v18
sub-int v17, v17, v18
move/from16 v0, v17
iput v0, v3, Landroid/graphics/Rect;->right:I
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getChildCount()I
move-result v5
move-object/from16 v0, p0
iget v11, v0, Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getScrollX()I
move-result v16
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->isOpaque()Z
move-result v17
if-eqz v17, :cond_ba
invoke-super/range {p0 .. p0}, Landroid/widget/AdapterView;->isOpaque()Z
move-result v17
if-nez v17, :cond_ba
const/4 v10, 0x1
:goto_49
if-eqz v10, :cond_5e
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;
move-object/from16 v17, v0
if-nez v17, :cond_5e
new-instance v17, Landroid/graphics/Paint;
invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/views/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;
:cond_5e
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/views/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/views/HorizontalListView;->mClipToPadding:Z
move/from16 v17, v0
if-eqz v17, :cond_bc
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getPaddingLeft()I
move-result v8
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getPaddingRight()I
move-result v9
:goto_72
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getWidth()I
move-result v17
add-int v17, v17, v16
sub-int v14, v17, v9
const/4 v12, 0x0
:goto_7b
if-ge v12, v5, :cond_cf
move-object/from16 v0, p0
invoke-virtual {v0, v12}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v4
invoke-virtual {v4}, Landroid/view/View;->getLeft()I
move-result v13
if-le v13, v8, :cond_b4
add-int v17, v11, v12
move/from16 v0, v17
invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v17
if-eqz v17, :cond_bf
add-int/lit8 v17, v5, -0x1
move/from16 v0, v17
if-eq v12, v0, :cond_a5
add-int v17, v11, v12
add-int/lit8 v17, v17, 0x1
move/from16 v0, v17
invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v17
if-eqz v17, :cond_bf
:cond_a5
sub-int v17, v13, v6
move/from16 v0, v17
iput v0, v3, Landroid/graphics/Rect;->left:I
iput v13, v3, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v3}, Lco/vine/android/views/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
:goto_b4
:cond_b4
add-int/lit8 v12, v12, 0x1
goto :goto_7b
:cond_b7
const/4 v7, 0x0
goto/16 :goto_f
:cond_ba
const/4 v10, 0x0
goto :goto_49
:cond_bc
const/4 v8, 0x0
const/4 v9, 0x0
goto :goto_72
:cond_bf
if-eqz v10, :cond_b4
sub-int v17, v13, v6
move/from16 v0, v17
iput v0, v3, Landroid/graphics/Rect;->left:I
iput v13, v3, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p1
invoke-virtual {v0, v3, v15}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
goto :goto_b4
:cond_cf
if-lez v5, :cond_e4
if-lez v16, :cond_e4
if-eqz v7, :cond_e4
iput v14, v3, Landroid/graphics/Rect;->left:I
add-int v17, v14, v6
move/from16 v0, v17
iput v0, v3, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v3}, Lco/vine/android/views/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
:cond_e4
invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V
return-void
.end method
.method  drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
.registers 4
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
return-void
.end method
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 4
new-instance v0, Lco/vine/android/views/HorizontalListView$LayoutParams;
const/4 v1, -0x2
const/4 v2, -0x1
invoke-direct {v0, v1, v2}, Lco/vine/android/views/HorizontalListView$LayoutParams;-><init>(II)V
return-object v0
.end method
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
.registers 3
invoke-virtual {p0, p1}, Lco/vine/android/views/HorizontalListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lco/vine/android/views/HorizontalListView$LayoutParams;
move-result-object v0
return-object v0
.end method
.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
.registers 3
new-instance v0, Lco/vine/android/views/HorizontalListView$LayoutParams;
invoke-direct {v0, p1}, Lco/vine/android/views/HorizontalListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
return-object v0
.end method
.method public generateLayoutParams(Landroid/util/AttributeSet;)Lco/vine/android/views/HorizontalListView$LayoutParams;
.registers 4
new-instance v0, Lco/vine/android/views/HorizontalListView$LayoutParams;
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Lco/vine/android/views/HorizontalListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-object v0
.end method
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
.registers 2
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
return-object v0
.end method
.method public getAdapter()Landroid/widget/ListAdapter;
.registers 2
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
return-object v0
.end method
.method public getDividerWidth()I
.registers 2
iget v0, p0, Lco/vine/android/views/HorizontalListView;->mDividerWidth:I
return v0
.end method
.method public getFirstVisiblePosition()I
.registers 2
iget v0, p0, Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
return v0
.end method
.method public getLastVisiblePosition()I
.registers 3
iget v0, p0, Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getChildCount()I
move-result v1
add-int/2addr v0, v1
add-int/lit8 v0, v0, -0x1
return v0
.end method
.method public getSelectedView()Landroid/view/View;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method protected layoutChildren()V
.registers 10
const/4 v8, 0x0
iget-boolean v1, p0, Lco/vine/android/views/HorizontalListView;->mDataChanged:Z
iget v2, p0, Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
iget-object v5, p0, Lco/vine/android/views/HorizontalListView;->mRecycler:Lco/vine/android/views/HorizontalListView$Recycler;
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getChildCount()I
move-result v0
invoke-virtual {p0, v8}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v4
if-eqz v1, :cond_20
const/4 v3, 0x0
:goto_12
if-ge v3, v0, :cond_23
invoke-virtual {p0, v3}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v6
add-int v7, v2, v3
invoke-virtual {v5, v6, v7}, Lco/vine/android/views/HorizontalListView$Recycler;->addRecycleView(Landroid/view/View;I)V
add-int/lit8 v3, v3, 0x1
goto :goto_12
:cond_20
invoke-virtual {v5, v2, v0}, Lco/vine/android/views/HorizontalListView$Recycler;->fillActiveViews(II)V
:cond_23
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->detachAllViewsFromParent()V
if-nez v4, :cond_38
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingLeft()I
move-result v6
iget v7, p0, Lco/vine/android/views/HorizontalListView;->mEdgePadding:I
add-int/2addr v6, v7
invoke-direct {p0, v2, v6}, Lco/vine/android/views/HorizontalListView;->fillRight(II)V
:goto_32
invoke-virtual {v5}, Lco/vine/android/views/HorizontalListView$Recycler;->recycleActiveViews()V
iput-boolean v8, p0, Lco/vine/android/views/HorizontalListView;->mDataChanged:Z
return-void
:cond_38
invoke-virtual {v4}, Landroid/view/View;->getLeft()I
move-result v6
invoke-direct {p0, v2, v6}, Lco/vine/android/views/HorizontalListView;->fillRight(II)V
goto :goto_32
.end method
.method final measureWidthOfChildren(IIIII)I
.registers 16
const/4 v9, -0x1
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
if-nez v0, :cond_10
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingLeft()I
move-result v7
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingRight()I
move-result v8
add-int v4, v7, v8
:cond_f
:goto_f
return v4
:cond_10
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingLeft()I
move-result v7
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingRight()I
move-result v8
add-int v6, v7, v8
const/4 v4, 0x0
if-ne p3, v9, :cond_23
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v7
add-int/lit8 p3, v7, -0x1
:cond_23
iget-object v5, p0, Lco/vine/android/views/HorizontalListView;->mRecycler:Lco/vine/android/views/HorizontalListView$Recycler;
iget-object v3, p0, Lco/vine/android/views/HorizontalListView;->mIsRecycled:[Z
move v2, p2
:goto_28
if-gt v2, p3, :cond_4d
invoke-direct {p0, v2, v3}, Lco/vine/android/views/HorizontalListView;->obtainView(I[Z)Landroid/view/View;
move-result-object v1
invoke-direct {p0, v1, p1}, Lco/vine/android/views/HorizontalListView;->measureChild(Landroid/view/View;I)V
invoke-virtual {v5, v1, v9}, Lco/vine/android/views/HorizontalListView$Recycler;->addRecycleView(Landroid/view/View;I)V
invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I
move-result v7
add-int/2addr v6, v7
if-lt v6, p4, :cond_45
if-ltz p5, :cond_43
if-le v2, p5, :cond_43
if-lez v4, :cond_43
if-ne v6, p4, :cond_f
:cond_43
move v4, p4
goto :goto_f
:cond_45
if-ltz p5, :cond_4a
if-lt v2, p5, :cond_4a
move v4, v6
:cond_4a
add-int/lit8 v2, v2, 0x1
goto :goto_28
:cond_4d
move v4, v6
goto :goto_f
.end method
.method protected onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mRecycler:Lco/vine/android/views/HorizontalListView$Recycler;
invoke-virtual {v0}, Lco/vine/android/views/HorizontalListView$Recycler;->clear()V
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mPendingCheckForTap:Lco/vine/android/views/HorizontalListView$CheckForTap;
if-eqz v0, :cond_11
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mPendingCheckForTap:Lco/vine/android/views/HorizontalListView$CheckForTap;
invoke-virtual {p0, v0}, Lco/vine/android/views/HorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z
:cond_11
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 6
invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V
invoke-virtual {p0, p1}, Lco/vine/android/views/HorizontalListView;->onLayoutCustom(Z)V
return-void
.end method
.method protected onLayoutCustom(Z)V
.registers 5
if-eqz p1, :cond_13
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getChildCount()I
move-result v0
const/4 v1, 0x0
:goto_7
if-ge v1, v0, :cond_13
invoke-virtual {p0, v1}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->forceLayout()V
add-int/lit8 v1, v1, 0x1
goto :goto_7
:cond_13
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->layoutChildren()V
return-void
.end method
.method protected onMeasure(II)V
.registers 18
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v14
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v12
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v5
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v13
iget-object v1, p0, Lco/vine/android/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
if-nez v1, :cond_94
const/4 v1, 0x0
:goto_15
iput v1, p0, Lco/vine/android/views/HorizontalListView;->mItemCount:I
iget v1, p0, Lco/vine/android/views/HorizontalListView;->mItemCount:I
if-lez v1, :cond_9c
if-eqz v14, :cond_1f
if-nez v12, :cond_9c
:cond_1f
const/4 v1, 0x0
iget-object v2, p0, Lco/vine/android/views/HorizontalListView;->mIsRecycled:[Z
invoke-direct {p0, v1, v2}, Lco/vine/android/views/HorizontalListView;->obtainView(I[Z)Landroid/view/View;
move-result-object v7
move/from16 v0, p2
invoke-direct {p0, v7, v0}, Lco/vine/android/views/HorizontalListView;->measureChild(Landroid/view/View;I)V
invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I
move-result v10
invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I
move-result v9
iget-object v1, p0, Lco/vine/android/views/HorizontalListView;->mRecycler:Lco/vine/android/views/HorizontalListView$Recycler;
const/4 v2, -0x1
invoke-virtual {v1, v7, v2}, Lco/vine/android/views/HorizontalListView$Recycler;->addRecycleView(Landroid/view/View;I)V
:goto_39
if-nez v14, :cond_a5
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingLeft()I
move-result v1
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingRight()I
move-result v2
add-int/2addr v1, v2
add-int v5, v1, v10
:goto_46
:cond_46
if-nez v12, :cond_53
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingTop()I
move-result v1
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getPaddingBottom()I
move-result v2
add-int/2addr v1, v2
add-int v13, v1, v9
:cond_53
const/4 v1, 0x0
iput v1, p0, Lco/vine/android/views/HorizontalListView;->mChildFillWidth:I
iget v1, p0, Lco/vine/android/views/HorizontalListView;->mFillWidthHeightRatio:F
const/4 v2, 0x0
cmpl-float v1, v1, v2
if-lez v1, :cond_81
iget v1, p0, Lco/vine/android/views/HorizontalListView;->mItemCount:I
if-lez v1, :cond_81
iget v1, p0, Lco/vine/android/views/HorizontalListView;->mDividerWidth:I
iget v2, p0, Lco/vine/android/views/HorizontalListView;->mItemCount:I
add-int/lit8 v2, v2, -0x1
mul-int v11, v1, v2
iget v1, p0, Lco/vine/android/views/HorizontalListView;->mEdgePadding:I
mul-int/lit8 v1, v1, 0x2
sub-int v1, v5, v1
sub-int/2addr v1, v11
iget v2, p0, Lco/vine/android/views/HorizontalListView;->mItemCount:I
div-int v8, v1, v2
if-lt v8, v13, :cond_81
int-to-float v1, v8
iget v2, p0, Lco/vine/android/views/HorizontalListView;->mFillWidthHeightRatio:F
int-to-float v3, v13
mul-float/2addr v2, v3
cmpg-float v1, v1, v2
if-gtz v1, :cond_81
iput v8, p0, Lco/vine/android/views/HorizontalListView;->mChildFillWidth:I
:cond_81
iget-object v1, p0, Lco/vine/android/views/HorizontalListView;->mChildWidthListener:Lco/vine/android/views/HorizontalListView$ChildWidthListener;
if-eqz v1, :cond_8c
iget-object v1, p0, Lco/vine/android/views/HorizontalListView;->mChildWidthListener:Lco/vine/android/views/HorizontalListView$ChildWidthListener;
iget v2, p0, Lco/vine/android/views/HorizontalListView;->mChildFillWidth:I
invoke-interface {v1, v2}, Lco/vine/android/views/HorizontalListView$ChildWidthListener;->onChildWidthMeasured(I)V
:cond_8c
invoke-virtual {p0, v5, v13}, Lco/vine/android/views/HorizontalListView;->setMeasuredDimension(II)V
move/from16 v0, p2
iput v0, p0, Lco/vine/android/views/HorizontalListView;->mHeightMeasureSpec:I
return-void
:cond_94
iget-object v1, p0, Lco/vine/android/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I
move-result v1
goto/16 :goto_15
:cond_9c
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getSuggestedMinimumWidth()I
move-result v10
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getSuggestedMinimumHeight()I
move-result v9
goto :goto_39
:cond_a5
const/high16 v1, -0x8000
if-ne v14, v1, :cond_46
const/4 v3, 0x0
const/4 v4, -0x1
const/4 v6, -0x1
move-object v1, p0
move/from16 v2, p2
invoke-virtual/range {v1 .. v6}, Lco/vine/android/views/HorizontalListView;->measureWidthOfChildren(IIIII)I
move-result v5
goto :goto_46
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 24
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mItemCount:I
move/from16 v19, v0
if-nez v19, :cond_44
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F
move-result v19
const/16 v20, 0x0
cmpg-float v19, v19, v20
if-ltz v19, :cond_41
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F
move-result v19
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getWidth()I
move-result v20
move/from16 v0, v20
int-to-float v0, v0
move/from16 v20, v0
cmpl-float v19, v19, v20
if-gtz v19, :cond_41
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F
move-result v19
const/16 v20, 0x0
cmpg-float v19, v19, v20
if-ltz v19, :cond_41
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F
move-result v19
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getHeight()I
move-result v20
move/from16 v0, v20
int-to-float v0, v0
move/from16 v20, v0
cmpl-float v19, v19, v20
if-gtz v19, :cond_41
const/16 v19, 0x1
:goto_40
return v19
:cond_41
const/16 v19, 0x0
goto :goto_40
:cond_44
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;
move-object/from16 v19, v0
if-nez v19, :cond_56
invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/views/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;
:cond_56
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;
move-object/from16 v19, v0
move-object/from16 v0, v19
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I
move-result v19
move/from16 v0, v19
and-int/lit16 v4, v0, 0xff
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F
move-result v19
move/from16 v0, v19
float-to-int v0, v0
move/from16 v17, v0
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F
move-result v19
move/from16 v0, v19
float-to-int v0, v0
move/from16 v18, v0
packed-switch v4, :pswitch_data_42e
:goto_80
:cond_80
const/16 v19, 0x1
goto :goto_40
:pswitch_83
move-object/from16 v0, p0
move/from16 v1, v17
move/from16 v2, v18
invoke-virtual {v0, v1, v2}, Lco/vine/android/views/HorizontalListView;->pointToPosition(II)I
move-result v11
move-object/from16 v0, p0
iput v11, v0, Lco/vine/android/views/HorizontalListView;->mDownPosition:I
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/views/HorizontalListView;->mDataChanged:Z
move/from16 v19, v0
if-nez v19, :cond_ee
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mTouchMode:I
move/from16 v19, v0
const/16 v20, 0x4
move/from16 v0, v19
move/from16 v1, v20
if-eq v0, v1, :cond_ee
if-ltz v11, :cond_ee
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
move-object/from16 v19, v0
move-object/from16 v0, v19
invoke-interface {v0, v11}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v19
if-eqz v19, :cond_ee
const/16 v19, 0x0
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mTouchMode:I
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mPendingCheckForTap:Lco/vine/android/views/HorizontalListView$CheckForTap;
move-object/from16 v19, v0
if-nez v19, :cond_d6
new-instance v19, Lco/vine/android/views/HorizontalListView$CheckForTap;
move-object/from16 v0, v19
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lco/vine/android/views/HorizontalListView$CheckForTap;-><init>(Lco/vine/android/views/HorizontalListView;)V
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/views/HorizontalListView;->mPendingCheckForTap:Lco/vine/android/views/HorizontalListView$CheckForTap;
:cond_d6
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mPendingCheckForTap:Lco/vine/android/views/HorizontalListView$CheckForTap;
move-object/from16 v19, v0
invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I
move-result v20
move/from16 v0, v20
int-to-long v0, v0
move-wide/from16 v20, v0
move-object/from16 v0, p0
move-object/from16 v1, v19
move-wide/from16 v2, v20
invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/views/HorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_ee
const/16 v19, 0x1
move-object/from16 v0, p0
move/from16 v1, v19
invoke-direct {v0, v1}, Lco/vine/android/views/HorizontalListView;->disallowParentIntercept(Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mFlingRunnable:Lco/vine/android/views/HorizontalListView$FlingRunnable;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Lco/vine/android/views/HorizontalListView$FlingRunnable;->stop()V
move/from16 v0, v17
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mMotionX:I
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mMotionY:I
const/high16 v19, -0x8000
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mLastX:I
move-object/from16 v0, p0
iput v11, v0, Lco/vine/android/views/HorizontalListView;->mMotionPosition:I
goto/16 :goto_80
:pswitch_11a
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mTouchMode:I
move/from16 v19, v0
packed-switch v19, :pswitch_data_43a
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/views/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;
const/16 v19, 0x3e8
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mMaximumFlingVelocity:I
move/from16 v20, v0
move/from16 v0, v20
int-to-float v0, v0
move/from16 v20, v0
move/from16 v0, v19
move/from16 v1, v20
invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V
invoke-virtual {v15}, Landroid/view/VelocityTracker;->getXVelocity()F
move-result v16
invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F
move-result v19
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mMinimumFlingVelocity:I
move/from16 v20, v0
move/from16 v0, v20
int-to-float v0, v0
move/from16 v20, v0
cmpl-float v19, v19, v20
if-lez v19, :cond_16d
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/views/HorizontalListView;->mFingerScrollEnabled:Z
move/from16 v19, v0
if-eqz v19, :cond_16d
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mFlingRunnable:Lco/vine/android/views/HorizontalListView$FlingRunnable;
move-object/from16 v19, v0
move/from16 v0, v16
neg-float v0, v0
move/from16 v20, v0
move/from16 v0, v20
float-to-int v0, v0
move/from16 v20, v0
invoke-virtual/range {v19 .. v20}, Lco/vine/android/views/HorizontalListView$FlingRunnable;->start(I)V
:cond_16d
:goto_16d
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getHandler()Landroid/os/Handler;
move-result-object v8
if-eqz v8, :cond_17e
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mPendingCheckForLongPress:Lco/vine/android/views/HorizontalListView$CheckForLongPress;
move-object/from16 v19, v0
move-object/from16 v0, v19
invoke-virtual {v8, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
:cond_17e
invoke-direct/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->recycleVelocityTracker()V
const/high16 v19, -0x8000
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mMotionY:I
const/high16 v19, -0x8000
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mMotionX:I
const/high16 v19, -0x8000
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mLastX:I
goto/16 :goto_80
:pswitch_19b
move-object/from16 v0, p0
iget v11, v0, Lco/vine/android/views/HorizontalListView;->mMotionPosition:I
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
move/from16 v19, v0
sub-int v19, v11, v19
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v5
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getPaddingLeft()I
move-result v19
move/from16 v0, v17
move/from16 v1, v19
if-le v0, v1, :cond_2ba
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getWidth()I
move-result v19
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getPaddingRight()I
move-result v20
sub-int v19, v19, v20
move/from16 v0, v17
move/from16 v1, v19
if-ge v0, v1, :cond_2ba
const/4 v9, 0x1
:goto_1ca
if-eqz v5, :cond_2f1
invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z
move-result v19
if-nez v19, :cond_2f1
if-eqz v9, :cond_2f1
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mTouchMode:I
move/from16 v19, v0
if-eqz v19, :cond_1e3
const/16 v19, 0x0
move/from16 v0, v19
invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V
:cond_1e3
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mPerformClick:Lco/vine/android/views/HorizontalListView$PerformClick;
move-object/from16 v19, v0
if-nez v19, :cond_1fa
new-instance v19, Lco/vine/android/views/HorizontalListView$PerformClick;
move-object/from16 v0, v19
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lco/vine/android/views/HorizontalListView$PerformClick;-><init>(Lco/vine/android/views/HorizontalListView;)V
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/views/HorizontalListView;->mPerformClick:Lco/vine/android/views/HorizontalListView$PerformClick;
:cond_1fa
move-object/from16 v0, p0
iget-object v12, v0, Lco/vine/android/views/HorizontalListView;->mPerformClick:Lco/vine/android/views/HorizontalListView$PerformClick;
iput v11, v12, Lco/vine/android/views/HorizontalListView$PerformClick;->clickMotionPosition:I
invoke-virtual {v12}, Lco/vine/android/views/HorizontalListView$PerformClick;->rememberWindowAttachCount()V
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mTouchMode:I
move/from16 v19, v0
if-eqz v19, :cond_219
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mTouchMode:I
move/from16 v19, v0
const/16 v20, 0x1
move/from16 v0, v19
move/from16 v1, v20
if-ne v0, v1, :cond_2c6
:cond_219
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getHandler()Landroid/os/Handler;
move-result-object v8
if-eqz v8, :cond_22a
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mPendingCheckForTap:Lco/vine/android/views/HorizontalListView$CheckForTap;
move-object/from16 v19, v0
move-object/from16 v0, v19
invoke-virtual {v8, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
:cond_22a
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/views/HorizontalListView;->mDataChanged:Z
move/from16 v19, v0
if-nez v19, :cond_2bd
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
move-object/from16 v19, v0
move-object/from16 v0, v19
invoke-interface {v0, v11}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v19
if-eqz v19, :cond_2bd
const/16 v19, 0x1
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mTouchMode:I
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->layoutChildren()V
const/16 v19, 0x1
move/from16 v0, v19
invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V
const/16 v19, 0x1
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/views/HorizontalListView;->setPressed(Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;
move-object/from16 v19, v0
if-eqz v19, :cond_27a
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;
move-result-object v6
if-eqz v6, :cond_27a
instance-of v0, v6, Landroid/graphics/drawable/TransitionDrawable;
move/from16 v19, v0
if-eqz v19, :cond_27a
check-cast v6, Landroid/graphics/drawable/TransitionDrawable;
invoke-virtual {v6}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V
:cond_27a
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;
move-object/from16 v19, v0
if-eqz v19, :cond_28f
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;
move-object/from16 v19, v0
move-object/from16 v0, p0
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/views/HorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z
:cond_28f
new-instance v19, Lco/vine/android/views/HorizontalListView$1;
move-object/from16 v0, v19
move-object/from16 v1, p0
invoke-direct {v0, v1, v5, v12}, Lco/vine/android/views/HorizontalListView$1;-><init>(Lco/vine/android/views/HorizontalListView;Landroid/view/View;Lco/vine/android/views/HorizontalListView$PerformClick;)V
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/views/HorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;
move-object/from16 v19, v0
invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I
move-result v20
move/from16 v0, v20
int-to-long v0, v0
move-wide/from16 v20, v0
move-object/from16 v0, p0
move-object/from16 v1, v19
move-wide/from16 v2, v20
invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/views/HorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z
:goto_2b6
const/16 v19, 0x1
goto/16 :goto_40
:cond_2ba
const/4 v9, 0x0
goto/16 :goto_1ca
:cond_2bd
const/16 v19, -0x1
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mTouchMode:I
goto :goto_2b6
:cond_2c6
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/views/HorizontalListView;->mDataChanged:Z
move/from16 v19, v0
if-nez v19, :cond_2f1
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mDownPosition:I
move/from16 v19, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mMotionPosition:I
move/from16 v20, v0
move/from16 v0, v19
move/from16 v1, v20
if-ne v0, v1, :cond_2f1
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
move-object/from16 v19, v0
move-object/from16 v0, v19
invoke-interface {v0, v11}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v19
if-eqz v19, :cond_2f1
invoke-virtual {v12}, Lco/vine/android/views/HorizontalListView$PerformClick;->run()V
:cond_2f1
const/16 v19, -0x1
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mTouchMode:I
goto/16 :goto_16d
:pswitch_2fb
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mMotionX:I
move/from16 v19, v0
const/high16 v20, -0x8000
move/from16 v0, v19
move/from16 v1, v20
if-eq v0, v1, :cond_3ef
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getChildCount()I
move-result v19
if-nez v19, :cond_31d
const/16 v19, -0x1
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mTouchMode:I
invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v19
goto/16 :goto_40
:cond_31d
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getHandler()Landroid/os/Handler;
move-result-object v8
if-eqz v8, :cond_32e
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/views/HorizontalListView;->mPendingCheckForLongPress:Lco/vine/android/views/HorizontalListView$CheckForLongPress;
move-object/from16 v19, v0
move-object/from16 v0, v19
invoke-virtual {v8, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
:cond_32e
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mMotionX:I
move/from16 v19, v0
sub-int v13, v17, v19
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mTouchMode:I
move/from16 v19, v0
const/16 v20, 0x3
move/from16 v0, v19
move/from16 v1, v20
if-eq v0, v1, :cond_3b0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
move/from16 v19, v0
if-nez v19, :cond_354
invoke-direct/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getOverflowLeft()I
move-result v19
if-nez v19, :cond_354
if-gtz v13, :cond_35c
:cond_354
invoke-direct/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getOverflowRight()I
move-result v19
if-nez v19, :cond_367
if-gez v13, :cond_367
:cond_35c
const/16 v19, 0x0
move-object/from16 v0, p0
move/from16 v1, v19
invoke-direct {v0, v1}, Lco/vine/android/views/HorizontalListView;->disallowParentIntercept(Z)V
goto/16 :goto_80
:cond_367
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mMotionY:I
move/from16 v19, v0
const/high16 v20, -0x8000
move/from16 v0, v19
move/from16 v1, v20
if-eq v0, v1, :cond_398
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mMotionY:I
move/from16 v19, v0
sub-int v14, v18, v19
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mTouchSlop:I
move/from16 v19, v0
invoke-static {v14}, Ljava/lang/Math;->abs(I)I
move-result v20
move/from16 v0, v19
move/from16 v1, v20
if-gt v0, v1, :cond_398
const/16 v19, 0x0
move-object/from16 v0, p0
move/from16 v1, v19
invoke-direct {v0, v1}, Lco/vine/android/views/HorizontalListView;->disallowParentIntercept(Z)V
goto/16 :goto_80
:cond_398
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mTouchSlop:I
move/from16 v19, v0
invoke-static {v13}, Ljava/lang/Math;->abs(I)I
move-result v20
move/from16 v0, v19
move/from16 v1, v20
if-gt v0, v1, :cond_80
const/16 v19, 0x3
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mTouchMode:I
:cond_3b0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mLastX:I
move/from16 v19, v0
move/from16 v0, v17
move/from16 v1, v19
if-eq v0, v1, :cond_80
if-lez v13, :cond_3fd
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mTouchSlop:I
move/from16 v19, v0
sub-int v7, v13, v19
:goto_3c6
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mLastX:I
move/from16 v19, v0
const/high16 v20, -0x8000
move/from16 v0, v19
move/from16 v1, v20
if-eq v0, v1, :cond_406
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mLastX:I
move/from16 v19, v0
sub-int v10, v17, v19
:goto_3dc
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/views/HorizontalListView;->mFingerScrollEnabled:Z
move/from16 v19, v0
if-eqz v19, :cond_3e9
move-object/from16 v0, p0
invoke-virtual {v0, v13, v10}, Lco/vine/android/views/HorizontalListView;->scroll(II)Z
:cond_3e9
move/from16 v0, v17
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mLastX:I
:cond_3ef
move/from16 v0, v17
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mMotionX:I
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mMotionY:I
goto/16 :goto_80
:cond_3fd
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/views/HorizontalListView;->mTouchSlop:I
move/from16 v19, v0
add-int v7, v13, v19
goto :goto_3c6
:cond_406
move v10, v7
goto :goto_3dc
:pswitch_408
invoke-direct/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->recycleVelocityTracker()V
const/high16 v19, -0x8000
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mMotionX:I
const/high16 v19, -0x8000
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mMotionY:I
const/high16 v19, -0x8000
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mLastX:I
const/16 v19, -0x1
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/views/HorizontalListView;->mTouchMode:I
goto/16 :goto_80
nop
:pswitch_data_43a
.packed-switch 0x0
:pswitch_19b
:pswitch_19b
:pswitch_19b
.end packed-switch
:pswitch_data_42e
.packed-switch 0x0
:pswitch_83
:pswitch_11a
:pswitch_2fb
:pswitch_408
.end packed-switch
.end method
.method public pointToPosition(II)I
.registers 8
iget-object v2, p0, Lco/vine/android/views/HorizontalListView;->mTouchFrame:Landroid/graphics/Rect;
if-nez v2, :cond_d
new-instance v4, Landroid/graphics/Rect;
invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V
iput-object v4, p0, Lco/vine/android/views/HorizontalListView;->mTouchFrame:Landroid/graphics/Rect;
iget-object v2, p0, Lco/vine/android/views/HorizontalListView;->mTouchFrame:Landroid/graphics/Rect;
:cond_d
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getChildCount()I
move-result v1
add-int/lit8 v3, v1, -0x1
:goto_13
if-ltz v3, :cond_29
invoke-virtual {p0, v3}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V
invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z
move-result v4
if-eqz v4, :cond_26
iget v4, p0, Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
add-int/2addr v4, v3
:goto_25
return v4
:cond_26
add-int/lit8 v3, v3, -0x1
goto :goto_13
:cond_29
const/4 v4, -0x1
goto :goto_25
.end method
.method public scroll(II)Z
.registers 19
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getChildCount()I
move-result v2
if-gez p2, :cond_89
const/4 v11, 0x1
:goto_7
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getPaddingLeft()I
move-result v8
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getWidth()I
move-result v14
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getPaddingRight()I
move-result v15
sub-int v9, v14, v15
add-int/lit8 v14, v2, -0x1
move-object/from16 v0, p0
invoke-virtual {v0, v14}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v14
invoke-virtual {v14}, Landroid/view/View;->getRight()I
move-result v7
const/4 v14, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v14}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v14
invoke-virtual {v14}, Landroid/view/View;->getLeft()I
move-result v4
if-eqz v11, :cond_8c
invoke-direct/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getOverflowRight()I
move-result v10
:goto_32
move-object/from16 v0, p0
iget v5, v0, Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
if-eqz v11, :cond_93
add-int v14, v5, v2
move-object/from16 v0, p0
iget v15, v0, Lco/vine/android/views/HorizontalListView;->mItemCount:I
if-lt v14, v15, :cond_4a
add-int v14, v7, p1
move-object/from16 v0, p0
iget v15, v0, Lco/vine/android/views/HorizontalListView;->mEdgePadding:I
sub-int v15, v9, v15
if-lt v14, v15, :cond_91
:cond_4a
const/4 v12, 0x1
:goto_4b
if-eqz v12, :cond_ec
const/4 v13, 0x0
const/4 v3, 0x0
if-eqz v11, :cond_b0
const/4 v6, 0x0
:goto_52
if-ge v6, v2, :cond_62
move-object/from16 v0, p0
invoke-virtual {v0, v6}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getRight()I
move-result v14
add-int v14, v14, p1
if-lt v14, v8, :cond_a2
:cond_62
if-lez v3, :cond_74
move-object/from16 v0, p0
invoke-virtual {v0, v13, v3}, Lco/vine/android/views/HorizontalListView;->detachViewsFromParent(II)V
if-eqz v11, :cond_74
move-object/from16 v0, p0
iget v14, v0, Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
add-int/2addr v14, v3
move-object/from16 v0, p0
iput v14, v0, Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
:cond_74
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getChildCount()I
move-result v2
const/4 v6, 0x0
:goto_79
if-ge v6, v2, :cond_d1
move-object/from16 v0, p0
invoke-virtual {v0, v6}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v14
move/from16 v0, p1
invoke-virtual {v14, v0}, Landroid/view/View;->offsetLeftAndRight(I)V
add-int/lit8 v6, v6, 0x1
goto :goto_79
:cond_89
const/4 v11, 0x0
goto/16 :goto_7
:cond_8c
invoke-direct/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->getOverflowLeft()I
move-result v10
goto :goto_32
:cond_91
const/4 v12, 0x0
goto :goto_4b
:cond_93
if-gtz v5, :cond_9e
add-int v14, v4, p1
move-object/from16 v0, p0
iget v15, v0, Lco/vine/android/views/HorizontalListView;->mEdgePadding:I
add-int/2addr v15, v8
if-gt v14, v15, :cond_a0
:cond_9e
const/4 v12, 0x1
:goto_9f
goto :goto_4b
:cond_a0
const/4 v12, 0x0
goto :goto_9f
:cond_a2
add-int/lit8 v3, v3, 0x1
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/views/HorizontalListView;->mRecycler:Lco/vine/android/views/HorizontalListView$Recycler;
add-int v15, v5, v6
invoke-virtual {v14, v1, v15}, Lco/vine/android/views/HorizontalListView$Recycler;->addRecycleView(Landroid/view/View;I)V
add-int/lit8 v6, v6, 0x1
goto :goto_52
:cond_b0
add-int/lit8 v6, v2, -0x1
:goto_b2
if-ltz v6, :cond_62
move-object/from16 v0, p0
invoke-virtual {v0, v6}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v14
add-int v14, v14, p1
if-le v14, v9, :cond_62
move v13, v6
add-int/lit8 v3, v3, 0x1
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/views/HorizontalListView;->mRecycler:Lco/vine/android/views/HorizontalListView$Recycler;
add-int v15, v5, v6
invoke-virtual {v14, v1, v15}, Lco/vine/android/views/HorizontalListView$Recycler;->addRecycleView(Landroid/view/View;I)V
add-int/lit8 v6, v6, -0x1
goto :goto_b2
:cond_d1
invoke-virtual/range {p0 .. p0}, Lco/vine/android/views/HorizontalListView;->invalidate()V
invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I
move-result v14
if-ge v10, v14, :cond_df
move-object/from16 v0, p0
invoke-direct {v0, v11}, Lco/vine/android/views/HorizontalListView;->fillGap(Z)V
:cond_df
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/views/HorizontalListView;->mOnScrollListener:Lco/vine/android/views/HorizontalListView$OnScrollListener;
if-eqz v14, :cond_ec
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/views/HorizontalListView;->mOnScrollListener:Lco/vine/android/views/HorizontalListView$OnScrollListener;
invoke-interface {v14}, Lco/vine/android/views/HorizontalListView$OnScrollListener;->onScroll()V
:cond_ec
return v12
.end method
.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
.registers 2
check-cast p1, Landroid/widget/ListAdapter;
invoke-virtual {p0, p1}, Lco/vine/android/views/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method public setAdapter(Landroid/widget/ListAdapter;)V
.registers 4
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
if-eq p1, v0, :cond_29
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mDataSetObserver:Landroid/database/DataSetObserver;
if-nez v0, :cond_f
new-instance v0, Lco/vine/android/views/HorizontalListView$AdapterDataSetObserver;
invoke-direct {v0, p0}, Lco/vine/android/views/HorizontalListView$AdapterDataSetObserver;-><init>(Lco/vine/android/views/HorizontalListView;)V
iput-object v0, p0, Lco/vine/android/views/HorizontalListView;->mDataSetObserver:Landroid/database/DataSetObserver;
:cond_f
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
if-eqz v0, :cond_1a
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
iget-object v1, p0, Lco/vine/android/views/HorizontalListView;->mDataSetObserver:Landroid/database/DataSetObserver;
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
:cond_1a
iput-object p1, p0, Lco/vine/android/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
if-eqz p1, :cond_2a
iget-object v0, p0, Lco/vine/android/views/HorizontalListView;->mDataSetObserver:Landroid/database/DataSetObserver;
invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I
move-result v0
iput v0, p0, Lco/vine/android/views/HorizontalListView;->mItemCount:I
:goto_29
:cond_29
return-void
:cond_2a
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/views/HorizontalListView;->mItemCount:I
goto :goto_29
.end method
.method public setChildWidthListener(Lco/vine/android/views/HorizontalListView$ChildWidthListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/views/HorizontalListView;->mChildWidthListener:Lco/vine/android/views/HorizontalListView$ChildWidthListener;
return-void
.end method
.method public setClipToPadding(Z)V
.registers 2
invoke-super {p0, p1}, Landroid/widget/AdapterView;->setClipToPadding(Z)V
iput-boolean p1, p0, Lco/vine/android/views/HorizontalListView;->mClipToPadding:Z
return-void
.end method
.method public setDivider(Landroid/graphics/drawable/Drawable;)V
.registers 3
if-eqz p1, :cond_11
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
iput v0, p0, Lco/vine/android/views/HorizontalListView;->mDividerWidth:I
:goto_8
iput-object p1, p0, Lco/vine/android/views/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->requestLayout()V
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->invalidate()V
return-void
:cond_11
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/views/HorizontalListView;->mDividerWidth:I
goto :goto_8
.end method
.method public setDividerWidth(I)V
.registers 2
iput p1, p0, Lco/vine/android/views/HorizontalListView;->mDividerWidth:I
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->requestLayout()V
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->invalidate()V
return-void
.end method
.method public setFingerScrollEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lco/vine/android/views/HorizontalListView;->mFingerScrollEnabled:Z
return-void
.end method
.method public setLongPressDuration(I)V
.registers 2
iput p1, p0, Lco/vine/android/views/HorizontalListView;->mLongPressMillis:I
return-void
.end method
.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/views/HorizontalListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
return-void
.end method
.method public setOnScrollListener(Lco/vine/android/dragsort/DragSortWidget;)V
.registers 2
iput-object p1, p0, Lco/vine/android/views/HorizontalListView;->mOnScrollListener:Lco/vine/android/views/HorizontalListView$OnScrollListener;
return-void
.end method
.method public setPressed(Z)V
.registers 3
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-nez v0, :cond_9
invoke-super {p0, p1}, Landroid/widget/AdapterView;->setPressed(Z)V
:cond_9
return-void
.end method
.method public setSelection(I)V
.registers 2
iput p1, p0, Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->detachAllViewsFromParent()V
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->layoutChildren()V
invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView;->invalidate()V
return-void
.end method