.class public Lco/vine/android/dragsort/DragSortWidget;
.super Landroid/widget/RelativeLayout;
.source "DragSortWidget.java"
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lco/vine/android/views/HorizontalListView$OnScrollListener;
.field private static final DROP_DURATION:I = 0x96
.field private static final FOCUSED_ALPHA:F = 1.0f
.field public static final INVALID_POSITION:I = -0x1
.field private static final MAX_SCROLL_SPEED_DENSITY_MULTIPLIER:F = 0.1f
.field private static final PICK_UP_CONTENT_DURATION:I = 0x82
.field private static final PICK_UP_DURATION:I = 0x0
.field private static final REMOVE_DURATION:I = 0x64
.field private static final SCROLL_THRESHOLD:F = 0.33f
.field private static final SMOOTHNESS:F = 0.05f
.field private static final SWAP_DURATION:I = 0x64
.field private static final UNFOCUSED_ALPHA:F = 0.3f
.field private isFromContentView:Z
.field private mActivatedDrawable:Landroid/graphics/drawable/Drawable;
.field private mActivePointerId:I
.field private mAdapterWrapper:Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;
.field private mCheckForLongPress:Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;
.field private mContentView:Landroid/view/View;
.field private mContentViewBounds:Landroid/graphics/Rect;
.field private mContentViewPickUpAnimator:Lco/vine/android/dragsort/DragSortWidget$ContentViewPickUpAnimator;
.field private mCurrentlyPlayingProvider:Lco/vine/android/dragsort/DragSortWidget$CurrentlyPlayingProvider;
.field private mDownPosition:I
.field private mDragListener:Lco/vine/android/dragsort/DragSortWidget$DragListener;
.field private mDragScroller:Lco/vine/android/dragsort/DragSortWidget$DragScroller;
.field private mDropAnimator:Lco/vine/android/dragsort/DragSortWidget$DropAnimator;
.field  mDropping:Z
.field private mFloatBitmap:Landroid/graphics/Bitmap;
.field private mFloatView:Landroid/widget/ImageView;
.field private mFloatViewActivatedDrawable:Landroid/graphics/drawable/Drawable;
.field private mFloatViewAlpha:F
.field private mFloatViewDefaultSize:I
.field private mFloatViewDestroyAnimator:Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;
.field private mFloatViewHeight:I
.field private mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
.field private mFloatViewListPosition:I
.field private mFloatViewWidth:I
.field private mFloatViewX:I
.field private mFloatViewY:I
.field private mFocusedPosition:I
.field private mListView:Lco/vine/android/views/HorizontalListView;
.field private mMaxScrollSpeed:F
.field private mPickingUpContent:Z
.field private mRemoveAnimator:Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;
.field private mRemoveListener:Lco/vine/android/dragsort/DragSortWidget$RemoveListener;
.field private mRemovePosition:I
.field  mRemoving:Z
.field private mSelectionChangedListener:Lco/vine/android/dragsort/DragSortWidget$SelectionChangedListener;
.field private mSelectionPosition:I
.field private mTouchDownX:I
.field private mTouchDownY:I
.field private mTouchListPosition:I
.field private final mTouchSlop:I
.field private mTouchX:I
.field private mTouchY:I
.field private mXOffsetFromTouch:I
.field private mYOffsetFromTouch:I
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I
move-result v0
add-int/lit8 v0, v0, 0x1
sput v0, Lco/vine/android/dragsort/DragSortWidget;->PICK_UP_DURATION:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lco/vine/android/dragsort/DragSortWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Lco/vine/android/shared/R$attr;->dragSortWidgetStyle:I
invoke-direct {p0, p1, p2, v0}, Lco/vine/android/dragsort/DragSortWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 11
const/16 v6, 0x64
const/4 v5, -0x1
const v4, 0x3d4ccccd
const/4 v3, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v1, Lco/vine/android/dragsort/DragSortWidget$DragScroller;
invoke-direct {v1, p0}, Lco/vine/android/dragsort/DragSortWidget$DragScroller;-><init>(Lco/vine/android/dragsort/DragSortWidget;)V
iput-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mDragScroller:Lco/vine/android/dragsort/DragSortWidget$DragScroller;
new-instance v1, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;
const/16 v2, 0x96
invoke-direct {v1, p0, v4, v2}, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;-><init>(Lco/vine/android/dragsort/DragSortWidget;FI)V
iput-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mDropAnimator:Lco/vine/android/dragsort/DragSortWidget$DropAnimator;
new-instance v1, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;
invoke-direct {v1, p0, v4, v6}, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;-><init>(Lco/vine/android/dragsort/DragSortWidget;FI)V
iput-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mRemoveAnimator:Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;
new-instance v1, Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;
invoke-direct {v1, p0, v4, v6}, Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;-><init>(Lco/vine/android/dragsort/DragSortWidget;FI)V
iput-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewDestroyAnimator:Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;
new-instance v1, Lco/vine/android/dragsort/DragSortWidget$ContentViewPickUpAnimator;
const/16 v2, 0x82
invoke-direct {v1, p0, v4, v2}, Lco/vine/android/dragsort/DragSortWidget$ContentViewPickUpAnimator;-><init>(Lco/vine/android/dragsort/DragSortWidget;FI)V
iput-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mContentViewPickUpAnimator:Lco/vine/android/dragsort/DragSortWidget$ContentViewPickUpAnimator;
const/4 v1, 0x0
iput-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
iput v5, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
iput v5, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
const/high16 v1, 0x437f
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewAlpha:F
iput-boolean v3, p0, Lco/vine/android/dragsort/DragSortWidget;->mDropping:Z
iput-boolean v3, p0, Lco/vine/android/dragsort/DragSortWidget;->mRemoving:Z
iput-boolean v3, p0, Lco/vine/android/dragsort/DragSortWidget;->mPickingUpContent:Z
iput-boolean v3, p0, Lco/vine/android/dragsort/DragSortWidget;->isFromContentView:Z
sget-object v1, Lco/vine/android/shared/R$styleable;->DragSortWidget:[I
invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mActivatedDrawable:Landroid/graphics/drawable/Drawable;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewActivatedDrawable:Landroid/graphics/drawable/Drawable;
const/4 v1, 0x2
invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v1
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewDefaultSize:I
invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v1
invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
move-result v1
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchSlop:I
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method static synthetic access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
.registers 2
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
return-object v0
.end method
.method static synthetic access$100(Lco/vine/android/dragsort/DragSortWidget;)I
.registers 2
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
return v0
.end method
.method static synthetic access$1000(Lco/vine/android/dragsort/DragSortWidget;)F
.registers 2
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewAlpha:F
return v0
.end method
.method static synthetic access$1002(Lco/vine/android/dragsort/DragSortWidget;F)F
.registers 2
iput p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewAlpha:F
return p1
.end method
.method static synthetic access$102(Lco/vine/android/dragsort/DragSortWidget;I)I
.registers 2
iput p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
return p1
.end method
.method static synthetic access$1100(Lco/vine/android/dragsort/DragSortWidget;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->destroyFloatView()V
return-void
.end method
.method static synthetic access$1200(Lco/vine/android/dragsort/DragSortWidget;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->adjustItems()V
return-void
.end method
.method static synthetic access$1300(Lco/vine/android/dragsort/DragSortWidget;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mContentViewBounds:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$1400(Lco/vine/android/dragsort/DragSortWidget;)I
.registers 2
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewWidth:I
return v0
.end method
.method static synthetic access$1402(Lco/vine/android/dragsort/DragSortWidget;I)I
.registers 2
iput p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewWidth:I
return p1
.end method
.method static synthetic access$1500(Lco/vine/android/dragsort/DragSortWidget;)I
.registers 2
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewHeight:I
return v0
.end method
.method static synthetic access$1502(Lco/vine/android/dragsort/DragSortWidget;I)I
.registers 2
iput p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewHeight:I
return p1
.end method
.method static synthetic access$1600(Lco/vine/android/dragsort/DragSortWidget;)I
.registers 2
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mXOffsetFromTouch:I
return v0
.end method
.method static synthetic access$1602(Lco/vine/android/dragsort/DragSortWidget;I)I
.registers 2
iput p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mXOffsetFromTouch:I
return p1
.end method
.method static synthetic access$1700(Lco/vine/android/dragsort/DragSortWidget;)I
.registers 2
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mYOffsetFromTouch:I
return v0
.end method
.method static synthetic access$1702(Lco/vine/android/dragsort/DragSortWidget;I)I
.registers 2
iput p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mYOffsetFromTouch:I
return p1
.end method
.method static synthetic access$1800(Lco/vine/android/dragsort/DragSortWidget;)I
.registers 2
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchY:I
return v0
.end method
.method static synthetic access$1900(Lco/vine/android/dragsort/DragSortWidget;)I
.registers 2
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewDefaultSize:I
return v0
.end method
.method static synthetic access$200(Lco/vine/android/dragsort/DragSortWidget;)I
.registers 2
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
return v0
.end method
.method static synthetic access$2002(Lco/vine/android/dragsort/DragSortWidget;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mPickingUpContent:Z
return p1
.end method
.method static synthetic access$2100(Lco/vine/android/dragsort/DragSortWidget;)I
.registers 2
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mRemovePosition:I
return v0
.end method
.method static synthetic access$2102(Lco/vine/android/dragsort/DragSortWidget;I)I
.registers 2
iput p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mRemovePosition:I
return p1
.end method
.method static synthetic access$2200(Lco/vine/android/dragsort/DragSortWidget;)I
.registers 2
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
return v0
.end method
.method static synthetic access$2300(Lco/vine/android/dragsort/DragSortWidget;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->finishRemoveSelection()V
return-void
.end method
.method static synthetic access$2400(Lco/vine/android/dragsort/DragSortWidget;)Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mActivatedDrawable:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method static synthetic access$2500(Lco/vine/android/dragsort/DragSortWidget;)I
.registers 2
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFocusedPosition:I
return v0
.end method
.method static synthetic access$2600(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;
.registers 2
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mRemoveAnimator:Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;
return-object v0
.end method
.method static synthetic access$2800(Lco/vine/android/dragsort/DragSortWidget;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$2900(Lco/vine/android/dragsort/DragSortWidget;)I
.registers 2
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchListPosition:I
return v0
.end method
.method static synthetic access$300(Lco/vine/android/dragsort/DragSortWidget;)F
.registers 2
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mMaxScrollSpeed:F
return v0
.end method
.method static synthetic access$3000(Lco/vine/android/dragsort/DragSortWidget;)I
.registers 2
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mDownPosition:I
return v0
.end method
.method static synthetic access$3100(Lco/vine/android/dragsort/DragSortWidget;IZ)Z
.registers 4
invoke-direct {p0, p1, p2}, Lco/vine/android/dragsort/DragSortWidget;->handleClick(IZ)Z
move-result v0
return v0
.end method
.method static synthetic access$3200(Lco/vine/android/dragsort/DragSortWidget;I)Z
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/dragsort/DragSortWidget;->pickUpView(I)Z
move-result v0
return v0
.end method
.method static synthetic access$400(Lco/vine/android/dragsort/DragSortWidget;)I
.registers 2
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->getClosestItemPosition()I
move-result v0
return v0
.end method
.method static synthetic access$500(Lco/vine/android/dragsort/DragSortWidget;II)V
.registers 3
invoke-direct {p0, p1, p2}, Lco/vine/android/dragsort/DragSortWidget;->dragFloatView(II)V
return-void
.end method
.method static synthetic access$600(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;
.registers 2
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewDestroyAnimator:Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;
return-object v0
.end method
.method static synthetic access$700(Lco/vine/android/dragsort/DragSortWidget;)I
.registers 2
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewX:I
return v0
.end method
.method static synthetic access$702(Lco/vine/android/dragsort/DragSortWidget;I)I
.registers 2
iput p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewX:I
return p1
.end method
.method static synthetic access$800(Lco/vine/android/dragsort/DragSortWidget;)I
.registers 2
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewY:I
return v0
.end method
.method static synthetic access$802(Lco/vine/android/dragsort/DragSortWidget;I)I
.registers 2
iput p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewY:I
return p1
.end method
.method static synthetic access$900(Lco/vine/android/dragsort/DragSortWidget;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->finishDrop()V
return-void
.end method
.method private adjustItem(I)V
.registers 7
const/4 v4, 0x1
const/4 v3, 0x0
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getFirstVisiblePosition()I
move-result v2
sub-int v2, p1, v2
invoke-virtual {v1, v2}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_2d
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
if-eqz v1, :cond_2e
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
if-ne p1, v1, :cond_2e
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V
:goto_21
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFocusedPosition:I
if-ne p1, v1, :cond_40
const/high16 v1, 0x3f80
:goto_27
invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V
invoke-virtual {v0}, Landroid/view/View;->invalidate()V
:cond_2d
return-void
:cond_2e
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
if-ne p1, v1, :cond_39
invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
goto :goto_21
:cond_39
invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
goto :goto_21
:cond_40
const v1, 0x3e99999a
goto :goto_27
.end method
.method private adjustItems()V
.registers 3
const/4 v0, 0x0
:goto_1
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v1}, Lco/vine/android/views/HorizontalListView;->getChildCount()I
move-result v1
if-ge v0, v1, :cond_16
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v1}, Lco/vine/android/views/HorizontalListView;->getFirstVisiblePosition()I
move-result v1
add-int/2addr v1, v0
invoke-direct {p0, v1}, Lco/vine/android/dragsort/DragSortWidget;->adjustItem(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_16
return-void
.end method
.method private createFloatView(I)V
.registers 7
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getFirstVisiblePosition()I
move-result v2
sub-int v2, p1, v2
invoke-virtual {v1, v2}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_11
:goto_10
:cond_10
return-void
:cond_11
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchDownX:I
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getLeft()I
move-result v2
sub-int/2addr v1, v2
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v2
if-lt v1, v2, :cond_10
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchDownY:I
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getTop()I
move-result v2
sub-int/2addr v1, v2
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v2
if-lt v1, v2, :cond_10
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchDownX:I
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getLeft()I
move-result v2
sub-int/2addr v1, v2
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v2
if-gt v1, v2, :cond_10
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchDownY:I
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getTop()I
move-result v2
sub-int/2addr v1, v2
invoke-virtual {v0}, Landroid/view/View;->getBottom()I
move-result v2
if-gt v1, v2, :cond_10
const/high16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheQuality(I)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
move-result-object v1
invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatBitmap:Landroid/graphics/Bitmap;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
if-nez v1, :cond_75
new-instance v1, Landroid/widget/ImageView;
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
:cond_75
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
new-instance v2, Landroid/view/ViewGroup$LayoutParams;
invoke-virtual {v0}, Landroid/view/View;->getWidth()I
move-result v3
invoke-virtual {v0}, Landroid/view/View;->getHeight()I
move-result v4
invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchDownX:I
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v2
iget-object v3, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v3}, Lco/vine/android/views/HorizontalListView;->getLeft()I
move-result v3
add-int/2addr v2, v3
sub-int/2addr v1, v2
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mXOffsetFromTouch:I
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchDownY:I
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v2
iget-object v3, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v3}, Lco/vine/android/views/HorizontalListView;->getTop()I
move-result v3
add-int/2addr v2, v3
sub-int/2addr v1, v2
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mYOffsetFromTouch:I
invoke-virtual {v0}, Landroid/view/View;->getWidth()I
move-result v1
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewWidth:I
invoke-virtual {v0}, Landroid/view/View;->getHeight()I
move-result v1
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewHeight:I
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
iget v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mXOffsetFromTouch:I
sub-int/2addr v1, v2
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewX:I
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchY:I
iget v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mYOffsetFromTouch:I
sub-int/2addr v1, v2
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewY:I
const/high16 v1, 0x437f
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewAlpha:F
invoke-direct {p0, p1}, Lco/vine/android/dragsort/DragSortWidget;->adjustItem(I)V
goto/16 :goto_10
.end method
.method private createFloatViewFromContentView()V
.registers 6
const/4 v4, 0x0
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
iget v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
iget-object v3, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v3}, Lco/vine/android/views/HorizontalListView;->getFirstVisiblePosition()I
move-result v3
sub-int/2addr v2, v3
invoke-virtual {v1, v2}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mContentViewPickUpAnimator:Lco/vine/android/dragsort/DragSortWidget$ContentViewPickUpAnimator;
invoke-virtual {v1}, Lco/vine/android/dragsort/DragSortWidget$ContentViewPickUpAnimator;->start()V
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mContentViewBounds:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
sub-int/2addr v1, v2
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mXOffsetFromTouch:I
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchY:I
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mContentViewBounds:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
sub-int/2addr v1, v2
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mYOffsetFromTouch:I
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
iget v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mXOffsetFromTouch:I
sub-int/2addr v1, v2
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewX:I
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchY:I
iget v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mYOffsetFromTouch:I
sub-int/2addr v1, v2
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewY:I
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mContentViewBounds:Landroid/graphics/Rect;
invoke-virtual {v1}, Landroid/graphics/Rect;->width()I
move-result v1
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewWidth:I
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mContentViewBounds:Landroid/graphics/Rect;
invoke-virtual {v1}, Landroid/graphics/Rect;->height()I
move-result v1
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewHeight:I
const/high16 v1, 0x437f
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewAlpha:F
if-nez v0, :cond_6d
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
if-ltz v1, :cond_6d
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v2
invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I
move-result v2
if-ge v1, v2, :cond_6d
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v1}, Lco/vine/android/views/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v1
iget v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
invoke-interface {v1, v2, v4, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
:cond_6d
check-cast v0, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;
invoke-virtual {v0}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatBitmap:Landroid/graphics/Bitmap;
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
if-nez v1, :cond_86
new-instance v1, Landroid/widget/ImageView;
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
:cond_86
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
new-instance v2, Landroid/view/ViewGroup$LayoutParams;
iget v3, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewWidth:I
iget v4, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewHeight:I
invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
invoke-direct {p0, v1}, Lco/vine/android/dragsort/DragSortWidget;->adjustItem(I)V
return-void
.end method
.method private destroyFloatView()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
if-eqz v0, :cond_e
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iput-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatBitmap:Landroid/graphics/Bitmap;
iput-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
:cond_e
return-void
.end method
.method private dragFloatView(II)V
.registers 7
const/4 v1, -0x1
if-le p1, v1, :cond_19
if-le p2, v1, :cond_19
if-eq p1, p2, :cond_19
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->floatViewIntersectsList()Z
move-result v1
if-eqz v1, :cond_19
iput p2, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
invoke-direct {p0, p1, p2}, Lco/vine/android/dragsort/DragSortWidget;->finishSwap(II)V
:cond_12
:goto_12
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->handleDragScroll()V
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget;->invalidate()V
return-void
:cond_19
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->floatViewIntersectsList()Z
move-result v1
if-eqz v1, :cond_4c
if-ne p1, p2, :cond_4c
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getLastVisiblePosition()I
move-result v2
iget-object v3, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v3}, Lco/vine/android/views/HorizontalListView;->getFirstVisiblePosition()I
move-result v3
sub-int/2addr v2, v3
invoke-virtual {v1, v2}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_12
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewX:I
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v2
if-le v1, v2, :cond_12
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v1}, Lco/vine/android/views/HorizontalListView;->getLastVisiblePosition()I
move-result v1
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
invoke-direct {p0, p1, v1}, Lco/vine/android/dragsort/DragSortWidget;->finishSwap(II)V
goto :goto_12
:cond_4c
iput p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
goto :goto_12
.end method
.method private finishDrop()V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mDropping:Z
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
if-eqz v0, :cond_e
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
invoke-interface {v0, v1}, Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;->floatViewLanded(I)V
:cond_e
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->destroyFloatView()V
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->adjustItems()V
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget;->invalidate()V
return-void
.end method
.method private finishRemoveSelection()V
.registers 4
const/4 v2, -0x1
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mRemovePosition:I
if-eq v0, v2, :cond_22
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mRemoveListener:Lco/vine/android/dragsort/DragSortWidget$RemoveListener;
if-eqz v0, :cond_10
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mRemoveListener:Lco/vine/android/dragsort/DragSortWidget$RemoveListener;
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mRemovePosition:I
invoke-interface {v0, v1}, Lco/vine/android/dragsort/DragSortWidget$RemoveListener;->remove(I)V
:cond_10
iput v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mRemovePosition:I
iput v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
iput v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mFocusedPosition:I
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionChangedListener:Lco/vine/android/dragsort/DragSortWidget$SelectionChangedListener;
if-eqz v0, :cond_22
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionChangedListener:Lco/vine/android/dragsort/DragSortWidget$SelectionChangedListener;
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Lco/vine/android/dragsort/DragSortWidget$SelectionChangedListener;->onSelectionChanged(IZ)V
:cond_22
return-void
.end method
.method private finishSwap(II)V
.registers 6
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mDragListener:Lco/vine/android/dragsort/DragSortWidget$DragListener;
if-eqz v1, :cond_2f
if-ge p1, p2, :cond_1a
move v0, p1
:goto_7
if-ge v0, p2, :cond_2f
if-ltz v0, :cond_17
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mDragListener:Lco/vine/android/dragsort/DragSortWidget$DragListener;
add-int/lit8 v2, v0, 0x1
invoke-interface {v1, v0, v2}, Lco/vine/android/dragsort/DragSortWidget$DragListener;->drag(II)V
add-int/lit8 v1, v0, 0x1
invoke-direct {p0, v0, v1}, Lco/vine/android/dragsort/DragSortWidget;->triggerSwapAnimation(II)V
:cond_17
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_1a
move v0, p1
:goto_1b
if-le v0, p2, :cond_2f
const/4 v1, 0x1
if-lt v0, v1, :cond_2c
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mDragListener:Lco/vine/android/dragsort/DragSortWidget$DragListener;
add-int/lit8 v2, v0, -0x1
invoke-interface {v1, v0, v2}, Lco/vine/android/dragsort/DragSortWidget$DragListener;->drag(II)V
add-int/lit8 v1, v0, -0x1
invoke-direct {p0, v0, v1}, Lco/vine/android/dragsort/DragSortWidget;->triggerSwapAnimation(II)V
:cond_2c
add-int/lit8 v0, v0, -0x1
goto :goto_1b
:cond_2f
const/4 v1, -0x1
if-eq p2, v1, :cond_36
iput p2, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
iput p2, p0, Lco/vine/android/dragsort/DragSortWidget;->mFocusedPosition:I
:cond_36
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->adjustItems()V
return-void
.end method
.method private floatViewIntersectsList()Z
.registers 3
iget-boolean v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mPickingUpContent:Z
if-nez v0, :cond_34
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewX:I
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v1}, Lco/vine/android/views/HorizontalListView;->getRight()I
move-result v1
if-gt v0, v1, :cond_34
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewY:I
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v1}, Lco/vine/android/views/HorizontalListView;->getBottom()I
move-result v1
if-gt v0, v1, :cond_34
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewX:I
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewWidth:I
add-int/2addr v0, v1
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v1}, Lco/vine/android/views/HorizontalListView;->getLeft()I
move-result v1
if-lt v0, v1, :cond_34
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewY:I
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewHeight:I
add-int/2addr v0, v1
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v1}, Lco/vine/android/views/HorizontalListView;->getTop()I
move-result v1
if-lt v0, v1, :cond_34
const/4 v0, 0x1
:goto_33
return v0
:cond_34
const/4 v0, 0x0
goto :goto_33
.end method
.method private getClosestItemPosition()I
.registers 4
const/4 v0, 0x0
:goto_1
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v1}, Lco/vine/android/views/HorizontalListView;->getChildCount()I
move-result v1
if-ge v0, v1, :cond_29
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getLeft()I
move-result v2
sub-int/2addr v1, v2
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2, v0}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getRight()I
move-result v2
if-ge v1, v2, :cond_26
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v1}, Lco/vine/android/views/HorizontalListView;->getFirstVisiblePosition()I
move-result v1
add-int/2addr v1, v0
:goto_25
return v1
:cond_26
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_29
const/4 v1, -0x1
goto :goto_25
.end method
.method private handleClick(IZ)Z
.registers 10
const/4 v2, 0x1
const/4 v3, 0x0
const/4 v6, -0x1
iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
iget-object v5, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v5}, Lco/vine/android/views/HorizontalListView;->getFirstVisiblePosition()I
move-result v5
sub-int v5, p1, v5
invoke-virtual {v4, v5}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_50
iget v4, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
if-ne v4, p1, :cond_30
invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V
iput v6, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
iput v6, p0, Lco/vine/android/dragsort/DragSortWidget;->mFocusedPosition:I
:goto_1e
iget-object v3, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionChangedListener:Lco/vine/android/dragsort/DragSortWidget$SelectionChangedListener;
if-eqz v3, :cond_29
iget-object v3, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionChangedListener:Lco/vine/android/dragsort/DragSortWidget$SelectionChangedListener;
iget v4, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
invoke-interface {v3, v4, p2}, Lco/vine/android/dragsort/DragSortWidget$SelectionChangedListener;->onSelectionChanged(IZ)V
:cond_29
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->adjustItems()V
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget;->invalidate()V
:goto_2f
return v2
:cond_30
invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V
iget v4, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
if-eq v4, v6, :cond_4b
iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
iget v5, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
iget-object v6, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v6}, Lco/vine/android/views/HorizontalListView;->getFirstVisiblePosition()I
move-result v6
sub-int/2addr v5, v6
invoke-virtual {v4, v5}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_4b
invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V
:cond_4b
iput p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
iput p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFocusedPosition:I
goto :goto_1e
:cond_50
move v2, v3
goto :goto_2f
.end method
.method private handleContentViewTouch(Landroid/view/MotionEvent;)Z
.registers 13
const/4 v10, -0x1
const/4 v7, 0x0
const/4 v6, 0x1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v8
and-int/lit16 v0, v8, 0xff
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->getClosestItemPosition()I
move-result v8
iput v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchListPosition:I
packed-switch v0, :pswitch_data_e2
:cond_12
:goto_12
move v6, v7
:goto_13
return v6
:pswitch_14
iget v6, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
iput v6, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchDownX:I
iget v6, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchY:I
iput v6, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchDownY:I
invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v6
iput v6, p0, Lco/vine/android/dragsort/DragSortWidget;->mActivePointerId:I
iget v6, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
iput v6, p0, Lco/vine/android/dragsort/DragSortWidget;->mDownPosition:I
goto :goto_12
:pswitch_27
iget v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchDownX:I
sub-int/2addr v8, v9
invoke-static {v8}, Ljava/lang/Math;->abs(I)I
move-result v3
iget v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchY:I
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchDownY:I
sub-int/2addr v8, v9
invoke-static {v8}, Ljava/lang/Math;->abs(I)I
move-result v4
iget v5, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
iget v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchListPosition:I
if-eq v8, v10, :cond_43
iget v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchListPosition:I
iput v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
:cond_43
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
if-eqz v8, :cond_78
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
invoke-interface {v8}, Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;->canPickUpFloatView()Z
move-result v8
if-eqz v8, :cond_78
move v2, v6
:goto_50
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
if-eqz v8, :cond_7a
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v8}, Lco/vine/android/views/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v1
:goto_5a
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mContentView:Landroid/view/View;
if-eqz v8, :cond_7c
if-eqz v1, :cond_7c
invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I
move-result v8
if-lez v8, :cond_7c
iget v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchSlop:I
if-ge v4, v8, :cond_6e
iget v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchSlop:I
if-lt v3, v8, :cond_7c
:cond_6e
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
if-nez v8, :cond_7c
if-eqz v2, :cond_7c
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->pickUpContentView()Z
goto :goto_13
:cond_78
move v2, v7
goto :goto_50
:cond_7a
const/4 v1, 0x0
goto :goto_5a
:cond_7c
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
if-eqz v8, :cond_a2
iget-boolean v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mDropping:Z
if-nez v8, :cond_a2
iget v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
iget v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mXOffsetFromTouch:I
sub-int/2addr v7, v8
iput v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewX:I
iget v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchY:I
iget v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mYOffsetFromTouch:I
sub-int/2addr v7, v8
iput v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewY:I
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
if-eqz v7, :cond_9b
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
invoke-interface {v7}, Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;->floatViewMoved()V
:cond_9b
iget v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
invoke-direct {p0, v5, v7}, Lco/vine/android/dragsort/DragSortWidget;->dragFloatView(II)V
goto/16 :goto_13
:cond_a2
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget;->invalidate()V
goto/16 :goto_12
:pswitch_a7
iput v10, p0, Lco/vine/android/dragsort/DragSortWidget;->mDownPosition:I
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mCheckForLongPress:Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;
invoke-virtual {p0, v8}, Lco/vine/android/dragsort/DragSortWidget;->removeCallbacks(Ljava/lang/Runnable;)Z
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
if-eqz v8, :cond_12
iget-boolean v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mDropping:Z
if-nez v8, :cond_12
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
if-eqz v7, :cond_dc
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
iget v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
invoke-interface {v7, v8}, Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;->floatViewDropped(I)Z
move-result v7
if-eqz v7, :cond_dc
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget;->canDelete()Z
move-result v7
if-eqz v7, :cond_dc
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewDestroyAnimator:Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;
invoke-virtual {v7}, Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;->start()V
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget;->removeSelection()V
:goto_d2
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mDragScroller:Lco/vine/android/dragsort/DragSortWidget$DragScroller;
invoke-virtual {v7, v6}, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->stopScrolling(Z)V
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget;->invalidate()V
goto/16 :goto_13
:cond_dc
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mDropAnimator:Lco/vine/android/dragsort/DragSortWidget$DropAnimator;
invoke-virtual {v7}, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->start()V
goto :goto_d2
:pswitch_data_e2
.packed-switch 0x0
:pswitch_14
:pswitch_a7
:pswitch_27
.end packed-switch
.end method
.method private handleDragScroll()V
.registers 6
const/4 v4, 0x1
const v3, 0x3ea8f5c3
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->floatViewIntersectsList()Z
move-result v0
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getLeft()I
move-result v2
sub-int/2addr v1, v2
int-to-float v1, v1
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getWidth()I
move-result v2
mul-int/lit8 v2, v2, 0x2
int-to-float v2, v2
mul-float/2addr v2, v3
cmpl-float v1, v1, v2
if-lez v1, :cond_28
if-eqz v0, :cond_28
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mDragScroller:Lco/vine/android/dragsort/DragSortWidget$DragScroller;
invoke-virtual {v1, v4}, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->startScrolling(I)V
:goto_27
return-void
:cond_28
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getLeft()I
move-result v2
sub-int/2addr v1, v2
int-to-float v1, v1
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getWidth()I
move-result v2
int-to-float v2, v2
mul-float/2addr v2, v3
cmpg-float v1, v1, v2
if-gez v1, :cond_47
if-eqz v0, :cond_47
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mDragScroller:Lco/vine/android/dragsort/DragSortWidget$DragScroller;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->startScrolling(I)V
goto :goto_27
:cond_47
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mDragScroller:Lco/vine/android/dragsort/DragSortWidget$DragScroller;
invoke-virtual {v1, v4}, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->stopScrolling(Z)V
goto :goto_27
.end method
.method private handleListViewTouch(Landroid/view/MotionEvent;)Z
.registers 14
const/4 v11, -0x1
const/4 v8, 0x0
const/4 v7, 0x1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v9
and-int/lit16 v0, v9, 0xff
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->getClosestItemPosition()I
move-result v9
iput v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchListPosition:I
packed-switch v0, :pswitch_data_10e
:pswitch_12
:cond_12
:goto_12
move v7, v8
:goto_13
return v7
:pswitch_14
iget v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
iput v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchDownX:I
iget v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchY:I
iput v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchDownY:I
invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v7
iput v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mActivePointerId:I
iget v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchListPosition:I
iput v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mDownPosition:I
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget;->mCheckForLongPress:Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;
sget v9, Lco/vine/android/dragsort/DragSortWidget;->PICK_UP_DURATION:I
int-to-long v9, v9
invoke-virtual {p0, v7, v9, v10}, Lco/vine/android/dragsort/DragSortWidget;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_12
:pswitch_2f
iget v4, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchListPosition:I
if-eq v9, v11, :cond_39
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchListPosition:I
iput v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
:cond_39
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchY:I
iget v10, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchDownY:I
sub-int/2addr v9, v10
invoke-static {v9}, Ljava/lang/Math;->abs(I)I
move-result v3
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
iget v10, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchDownX:I
sub-int/2addr v9, v10
invoke-static {v9}, Ljava/lang/Math;->abs(I)I
move-result v2
iget-object v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
if-eqz v9, :cond_98
iget-object v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
invoke-interface {v9}, Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;->canPickUpFloatView()Z
move-result v9
if-eqz v9, :cond_98
move v1, v7
:goto_58
iget-object v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
if-nez v9, :cond_78
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchSlop:I
if-ge v2, v9, :cond_78
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchSlop:I
if-lt v3, v9, :cond_78
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchY:I
iget v10, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchDownY:I
sub-int/2addr v9, v10
if-gez v9, :cond_78
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
iget v10, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchListPosition:I
if-eq v9, v10, :cond_78
if-eqz v1, :cond_78
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchListPosition:I
invoke-direct {p0, v9, v8}, Lco/vine/android/dragsort/DragSortWidget;->handleClick(IZ)Z
:cond_78
iget-object v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
if-nez v9, :cond_9a
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchSlop:I
if-ge v2, v9, :cond_84
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchSlop:I
if-lt v3, v9, :cond_9a
:cond_84
iget-object v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mCheckForLongPress:Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;
invoke-virtual {p0, v9}, Lco/vine/android/dragsort/DragSortWidget;->removeCallbacks(Ljava/lang/Runnable;)Z
if-eqz v1, :cond_12
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
invoke-direct {p0, v9}, Lco/vine/android/dragsort/DragSortWidget;->pickUpView(I)Z
move-result v9
if-eqz v9, :cond_12
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget;->invalidate()V
goto/16 :goto_13
:cond_98
move v1, v8
goto :goto_58
:cond_9a
iget-object v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
if-eqz v9, :cond_12
iget-boolean v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mDropping:Z
if-nez v9, :cond_12
iget v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mXOffsetFromTouch:I
sub-int/2addr v8, v9
iput v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewX:I
iget v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchY:I
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mYOffsetFromTouch:I
sub-int/2addr v8, v9
iput v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewY:I
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
if-eqz v8, :cond_b9
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
invoke-interface {v8}, Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;->floatViewMoved()V
:cond_b9
iget v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
invoke-direct {p0, v4, v8}, Lco/vine/android/dragsort/DragSortWidget;->dragFloatView(II)V
goto/16 :goto_13
:pswitch_c0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v9
const v10, 0xff00
and-int/2addr v9, v10
shr-int/lit8 v6, v9, 0x8
invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v5
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mActivePointerId:I
if-ne v5, v9, :cond_12
:pswitch_d2
iput v11, p0, Lco/vine/android/dragsort/DragSortWidget;->mDownPosition:I
iget-object v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mCheckForLongPress:Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;
invoke-virtual {p0, v9}, Lco/vine/android/dragsort/DragSortWidget;->removeCallbacks(Ljava/lang/Runnable;)Z
iget-object v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
if-eqz v9, :cond_12
iget-boolean v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mDropping:Z
if-nez v9, :cond_12
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
if-eqz v8, :cond_107
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
invoke-interface {v8, v9}, Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;->floatViewDropped(I)Z
move-result v8
if-eqz v8, :cond_107
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget;->canDelete()Z
move-result v8
if-eqz v8, :cond_107
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewDestroyAnimator:Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;
invoke-virtual {v8}, Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;->start()V
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget;->removeSelection()V
:goto_fd
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mDragScroller:Lco/vine/android/dragsort/DragSortWidget$DragScroller;
invoke-virtual {v8, v7}, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->stopScrolling(Z)V
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget;->invalidate()V
goto/16 :goto_13
:cond_107
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget;->mDropAnimator:Lco/vine/android/dragsort/DragSortWidget$DropAnimator;
invoke-virtual {v8}, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->start()V
goto :goto_fd
nop
:pswitch_data_10e
.packed-switch 0x0
:pswitch_14
:pswitch_d2
:pswitch_2f
:pswitch_12
:pswitch_12
:pswitch_12
:pswitch_c0
.end packed-switch
.end method
.method private pickUpContentView()Z
.registers 4
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
const/4 v2, -0x1
if-ne v1, v2, :cond_13
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mCurrentlyPlayingProvider:Lco/vine/android/dragsort/DragSortWidget$CurrentlyPlayingProvider;
invoke-interface {v1}, Lco/vine/android/dragsort/DragSortWidget$CurrentlyPlayingProvider;->getCurrentlyPlayingPosition()I
move-result v0
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lco/vine/android/dragsort/DragSortWidget;->handleClick(IZ)Z
iput v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
iput v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
:cond_13
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->createFloatViewFromContentView()V
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
if-eqz v1, :cond_21
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
iget v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
invoke-interface {v1, v2}, Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;->floatViewPickedUp(I)V
:cond_21
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget;->invalidate()V
const/4 v1, 0x1
return v1
.end method
.method private pickUpView(I)Z
.registers 3
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
if-ne p1, v0, :cond_18
const/4 v0, -0x1
if-eq p1, v0, :cond_18
invoke-direct {p0, p1}, Lco/vine/android/dragsort/DragSortWidget;->createFloatView(I)V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
if-eqz v0, :cond_13
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
invoke-interface {v0, p1}, Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;->floatViewPickedUp(I)V
:cond_13
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget;->invalidate()V
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method private triggerSwapAnimation(II)V
.registers 8
iget-object v3, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v4}, Lco/vine/android/views/HorizontalListView;->getFirstVisiblePosition()I
move-result v4
sub-int v4, p2, v4
invoke-virtual {v3, v4}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
if-nez v1, :cond_1e
const/4 v2, 0x0
:goto_11
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
new-instance v3, Lco/vine/android/dragsort/DragSortWidget$1;
invoke-direct {v3, p0, v0, p1, v2}, Lco/vine/android/dragsort/DragSortWidget$1;-><init>(Lco/vine/android/dragsort/DragSortWidget;Landroid/view/ViewTreeObserver;II)V
invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
return-void
:cond_1e
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v2
goto :goto_11
.end method
.method public canDelete()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mPickingUpContent:Z
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public cleanUp()V
.registers 3
const/4 v1, 0x0
const/4 v0, -0x1
iput v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
iput v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFocusedPosition:I
iput v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mRemovePosition:I
iput-boolean v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mDropping:Z
iput-boolean v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mRemoving:Z
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->destroyFloatView()V
return-void
.end method
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
.registers 11
const/4 v1, 0x0
const/4 v8, 0x0
invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
if-eqz v0, :cond_61
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewX:I
int-to-float v0, v0
iget v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewY:I
int-to-float v2, v2
invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewWidth:I
iget v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewHeight:I
invoke-virtual {p1, v8, v8, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewWidth:I
int-to-float v3, v0
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewHeight:I
int-to-float v4, v0
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewAlpha:F
float-to-int v5, v0
const/16 v6, 0x1f
move-object v0, p1
move v2, v1
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewWidth:I
iget v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewHeight:I
invoke-virtual {v0, v8, v8, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewActivatedDrawable:Landroid/graphics/drawable/Drawable;
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewX:I
iget v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewY:I
iget v3, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewX:I
iget v4, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewWidth:I
add-int/2addr v3, v4
iget v4, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewY:I
iget v5, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewHeight:I
add-int/2addr v4, v5
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewActivatedDrawable:Landroid/graphics/drawable/Drawable;
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewAlpha:F
float-to-int v1, v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewActivatedDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:goto_60
:cond_60
return-void
:cond_61
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
const/4 v1, -0x1
if-eq v0, v1, :cond_60
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getFirstVisiblePosition()I
move-result v2
sub-int/2addr v1, v2
invoke-virtual {v0, v1}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v7
if-eqz v7, :cond_60
iget-boolean v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mRemoving:Z
if-nez v0, :cond_60
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mActivatedDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v7}, Landroid/view/View;->getLeft()I
move-result v1
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getLeft()I
move-result v2
add-int/2addr v1, v2
invoke-virtual {v7}, Landroid/view/View;->getTop()I
move-result v2
iget-object v3, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v3}, Lco/vine/android/views/HorizontalListView;->getTop()I
move-result v3
add-int/2addr v2, v3
invoke-virtual {v7}, Landroid/view/View;->getRight()I
move-result v3
iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v4}, Lco/vine/android/views/HorizontalListView;->getLeft()I
move-result v4
add-int/2addr v3, v4
invoke-virtual {v7}, Landroid/view/View;->getBottom()I
move-result v4
iget-object v5, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v5}, Lco/vine/android/views/HorizontalListView;->getTop()I
move-result v5
add-int/2addr v4, v5
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mActivatedDrawable:Landroid/graphics/drawable/Drawable;
const/16 v1, 0xff
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mActivatedDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
goto :goto_60
.end method
.method public floatViewIsFromContentView()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/dragsort/DragSortWidget;->isFromContentView:Z
return v0
.end method
.method public getFloatViewBounds()Landroid/graphics/Rect;
.registers 7
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
if-eqz v0, :cond_18
new-instance v0, Landroid/graphics/Rect;
iget v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewX:I
iget v2, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewY:I
iget v3, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewX:I
iget v4, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewWidth:I
add-int/2addr v3, v4
iget v4, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewY:I
iget v5, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewHeight:I
add-int/2addr v4, v5
invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
:goto_17
return-object v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method public hasFloatView()Z
.registers 2
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public onFinishInflate()V
.registers 3
const v0, 0x102000a
invoke-virtual {p0, v0}, Lco/vine/android/dragsort/DragSortWidget;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lco/vine/android/views/HorizontalListView;
iput-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v0, p0}, Lco/vine/android/views/HorizontalListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v0, p0}, Lco/vine/android/views/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lco/vine/android/views/HorizontalListView;->setFingerScrollEnabled(Z)V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v0, p0}, Lco/vine/android/views/HorizontalListView;->setOnScrollListener(Lco/vine/android/dragsort/DragSortWidget;)V
new-instance v0, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;
invoke-direct {v0, p0}, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;-><init>(Lco/vine/android/dragsort/DragSortWidget;)V
iput-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mCheckForLongPress:Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F
const v1, 0x3dcccccd
mul-float/2addr v0, v1
iput v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mMaxScrollSpeed:F
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/dragsort/DragSortWidget; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v1}, Lco/vine/android/views/HorizontalListView;->getLeft()I
move-result v1
sub-int/2addr v0, v1
if-ltz v0, :cond_3c
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v1}, Lco/vine/android/views/HorizontalListView;->getLeft()I
move-result v1
sub-int/2addr v0, v1
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v1}, Lco/vine/android/views/HorizontalListView;->getWidth()I
move-result v1
if-ge v0, v1, :cond_3c
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchY:I
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v1}, Lco/vine/android/views/HorizontalListView;->getTop()I
move-result v1
sub-int/2addr v0, v1
if-ltz v0, :cond_3c
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchY:I
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v1}, Lco/vine/android/views/HorizontalListView;->getTop()I
move-result v1
sub-int/2addr v0, v1
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v1}, Lco/vine/android/views/HorizontalListView;->getHeight()I
move-result v1
if-ge v0, v1, :cond_3c
const/4 v0, 0x1
invoke-direct {p0, p3, v0}, Lco/vine/android/dragsort/DragSortWidget;->handleClick(IZ)Z
:cond_3c
const-string v1, " - Lco/vine/android/dragsort/DragSortWidget; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onScroll()V
.registers 3
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/dragsort/DragSortWidget; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget;->invalidate()V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mCheckForLongPress:Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;
invoke-virtual {p0, v0}, Lco/vine/android/dragsort/DragSortWidget;->removeCallbacks(Ljava/lang/Runnable;)Z
const-string v1, " - Lco/vine/android/dragsort/DragSortWidget; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0, v0}, Lco/vine/android/dragsort/DragSortWidget;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;II)Z
move-result v0
return v0
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;II)Z
.registers 8
const/4 v0, 0x0
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v1
float-to-int v1, v1
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v2
add-int/2addr v1, v2
add-int/2addr v1, p3
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v1
float-to-int v1, v1
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v2
add-int/2addr v1, v2
add-int/2addr v1, p4
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mTouchY:I
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
if-ne p1, v1, :cond_26
iput-boolean v0, p0, Lco/vine/android/dragsort/DragSortWidget;->isFromContentView:Z
invoke-direct {p0, p2}, Lco/vine/android/dragsort/DragSortWidget;->handleListViewTouch(Landroid/view/MotionEvent;)Z
move-result v0
:goto_25
:cond_25
return v0
:cond_26
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mContentView:Landroid/view/View;
if-ne p1, v1, :cond_25
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/dragsort/DragSortWidget;->isFromContentView:Z
invoke-direct {p0, p2}, Lco/vine/android/dragsort/DragSortWidget;->handleContentViewTouch(Landroid/view/MotionEvent;)Z
move-result v0
goto :goto_25
.end method
.method public releaseReferences()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/dragsort/DragSortWidget;->setAdapter(Landroid/widget/ListAdapter;)V
iput-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mCurrentlyPlayingProvider:Lco/vine/android/dragsort/DragSortWidget$CurrentlyPlayingProvider;
iput-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mContentView:Landroid/view/View;
return-void
.end method
.method public removeSelection()V
.registers 2
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mRemoveAnimator:Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;
invoke-virtual {v0}, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->start()V
return-void
.end method
.method public setAdapter(Landroid/widget/ListAdapter;)V
.registers 4
const/4 v1, 0x0
if-eqz p1, :cond_47
instance-of v0, p1, Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
if-eqz v0, :cond_d
move-object v0, p1
check-cast v0, Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
invoke-virtual {p0, v0}, Lco/vine/android/dragsort/DragSortWidget;->setFloatViewInteractionListener(Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;)V
:cond_d
instance-of v0, p1, Lco/vine/android/dragsort/DragSortWidget$DragListener;
if-eqz v0, :cond_17
move-object v0, p1
check-cast v0, Lco/vine/android/dragsort/DragSortWidget$DragListener;
invoke-virtual {p0, v0}, Lco/vine/android/dragsort/DragSortWidget;->setDragListener(Lco/vine/android/dragsort/DragSortWidget$DragListener;)V
:cond_17
instance-of v0, p1, Lco/vine/android/dragsort/DragSortWidget$RemoveListener;
if-eqz v0, :cond_21
move-object v0, p1
check-cast v0, Lco/vine/android/dragsort/DragSortWidget$RemoveListener;
invoke-virtual {p0, v0}, Lco/vine/android/dragsort/DragSortWidget;->setRemoveListener(Lco/vine/android/dragsort/DragSortWidget$RemoveListener;)V
:cond_21
instance-of v0, p1, Lco/vine/android/dragsort/DragSortWidget$SelectionChangedListener;
if-eqz v0, :cond_2b
move-object v0, p1
check-cast v0, Lco/vine/android/dragsort/DragSortWidget$SelectionChangedListener;
invoke-virtual {p0, v0}, Lco/vine/android/dragsort/DragSortWidget;->setSelectionChangedListener(Lco/vine/android/dragsort/DragSortWidget$SelectionChangedListener;)V
:cond_2b
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mAdapterWrapper:Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;
if-nez v0, :cond_3a
new-instance v0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, p0, v1}, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;-><init>(Lco/vine/android/dragsort/DragSortWidget;Landroid/content/Context;)V
iput-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mAdapterWrapper:Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;
:cond_3a
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mAdapterWrapper:Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;
invoke-virtual {v0, p1}, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget;->mAdapterWrapper:Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;
invoke-virtual {v0, v1}, Lco/vine/android/views/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V
:goto_46
:cond_46
return-void
:cond_47
invoke-virtual {p0, v1}, Lco/vine/android/dragsort/DragSortWidget;->setFloatViewInteractionListener(Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;)V
invoke-virtual {p0, v1}, Lco/vine/android/dragsort/DragSortWidget;->setDragListener(Lco/vine/android/dragsort/DragSortWidget$DragListener;)V
invoke-virtual {p0, v1}, Lco/vine/android/dragsort/DragSortWidget;->setRemoveListener(Lco/vine/android/dragsort/DragSortWidget$RemoveListener;)V
invoke-virtual {p0, v1}, Lco/vine/android/dragsort/DragSortWidget;->setSelectionChangedListener(Lco/vine/android/dragsort/DragSortWidget$SelectionChangedListener;)V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v0, v1}, Lco/vine/android/views/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mAdapterWrapper:Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;
if-eqz v0, :cond_46
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mAdapterWrapper:Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;
invoke-virtual {v0, v1}, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->setAdapter(Landroid/widget/ListAdapter;)V
goto :goto_46
.end method
.method public setContentView(Landroid/view/View;Landroid/graphics/Rect;)V
.registers 3
iput-object p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mContentView:Landroid/view/View;
iput-object p2, p0, Lco/vine/android/dragsort/DragSortWidget;->mContentViewBounds:Landroid/graphics/Rect;
invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return-void
.end method
.method public setCurrentlyPlayingProvider(Lco/vine/android/dragsort/DragSortWidget$CurrentlyPlayingProvider;)V
.registers 2
iput-object p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mCurrentlyPlayingProvider:Lco/vine/android/dragsort/DragSortWidget$CurrentlyPlayingProvider;
return-void
.end method
.method public setDragListener(Lco/vine/android/dragsort/DragSortWidget$DragListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mDragListener:Lco/vine/android/dragsort/DragSortWidget$DragListener;
return-void
.end method
.method public setFirstItem(I)V
.registers 4
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v0, p1}, Lco/vine/android/views/HorizontalListView;->setSelection(I)V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
if-eqz v0, :cond_16
iget-boolean v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mDropping:Z
if-nez v0, :cond_16
iget v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->getClosestItemPosition()I
move-result v1
invoke-direct {p0, v0, v1}, Lco/vine/android/dragsort/DragSortWidget;->dragFloatView(II)V
:cond_16
return-void
.end method
.method public setFloatViewInteractionListener(Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFloatViewInteractionListener:Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
return-void
.end method
.method public setFocused(I)V
.registers 3
iput p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFocusedPosition:I
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->adjustItems()V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v0}, Lco/vine/android/views/HorizontalListView;->invalidate()V
return-void
.end method
.method public setRemoveListener(Lco/vine/android/dragsort/DragSortWidget$RemoveListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mRemoveListener:Lco/vine/android/dragsort/DragSortWidget$RemoveListener;
return-void
.end method
.method public setSelection(I)V
.registers 3
iput p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
const/4 v0, -0x1
if-eq p1, v0, :cond_7
iput p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mFocusedPosition:I
:cond_7
invoke-direct {p0}, Lco/vine/android/dragsort/DragSortWidget;->adjustItems()V
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget;->invalidate()V
return-void
.end method
.method public setSelectionChangedListener(Lco/vine/android/dragsort/DragSortWidget$SelectionChangedListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/dragsort/DragSortWidget;->mSelectionChangedListener:Lco/vine/android/dragsort/DragSortWidget$SelectionChangedListener;
return-void
.end method