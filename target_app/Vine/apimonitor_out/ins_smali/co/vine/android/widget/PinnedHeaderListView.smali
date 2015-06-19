.class public Lco/vine/android/widget/PinnedHeaderListView;
.super Lcom/twitter/android/widget/RefreshableListView;
.source "PinnedHeaderListView.java"
.implements Landroid/widget/AbsListView$OnScrollListener;
.field private mNavBottom:I
.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
.field private mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
.field private mPinnedHeaderHeight:I
.field private mPinnedHeaderIsVisible:Z
.field private mPinnedHeaderOffset:I
.field private mPinnedHeaderView:Landroid/view/View;
.field private mScrollDeltaListener:Lco/vine/android/widget/PinnedHeaderListView$ScrollDeltaListener;
.field private mTrackedChild:Landroid/view/View;
.field private mTrackedChildPrevPosition:I
.field private mTrackedChildPrevTop:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0, p1}, Lcom/twitter/android/widget/RefreshableListView;-><init>(Landroid/content/Context;)V
iput v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderOffset:I
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderIsVisible:Z
iput-object v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;
iput-object v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
iput-object v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
iput v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderHeight:I
iput-object v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChild:Landroid/view/View;
iput v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChildPrevTop:I
iput v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChildPrevPosition:I
iput-object v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mScrollDeltaListener:Lco/vine/android/widget/PinnedHeaderListView$ScrollDeltaListener;
iput v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mNavBottom:I
invoke-direct {p0}, Lco/vine/android/widget/PinnedHeaderListView;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Lcom/twitter/android/widget/RefreshableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderOffset:I
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderIsVisible:Z
iput-object v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;
iput-object v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
iput-object v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
iput v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderHeight:I
iput-object v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChild:Landroid/view/View;
iput v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChildPrevTop:I
iput v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChildPrevPosition:I
iput-object v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mScrollDeltaListener:Lco/vine/android/widget/PinnedHeaderListView$ScrollDeltaListener;
iput v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mNavBottom:I
invoke-direct {p0}, Lco/vine/android/widget/PinnedHeaderListView;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 7
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/widget/RefreshableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderOffset:I
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderIsVisible:Z
iput-object v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;
iput-object v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
iput-object v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
iput v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderHeight:I
iput-object v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChild:Landroid/view/View;
iput v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChildPrevTop:I
iput v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChildPrevPosition:I
iput-object v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mScrollDeltaListener:Lco/vine/android/widget/PinnedHeaderListView$ScrollDeltaListener;
iput v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mNavBottom:I
invoke-direct {p0}, Lco/vine/android/widget/PinnedHeaderListView;->init()V
return-void
.end method
.method private ensureHeaderHasLayoutParams(Landroid/view/View;)V
.registers 6
const/4 v3, -0x1
const/4 v2, -0x2
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
if-nez v0, :cond_11
new-instance v0, Landroid/widget/AbsListView$LayoutParams;
invoke-direct {v0, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V
invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:goto_10
:cond_10
return-void
:cond_11
iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
if-ne v1, v3, :cond_10
iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_10
.end method
.method private getChildInTheMiddle()Landroid/view/View;
.registers 2
invoke-virtual {p0}, Lco/vine/android/widget/PinnedHeaderListView;->getChildCount()I
move-result v0
div-int/lit8 v0, v0, 0x2
invoke-virtual {p0, v0}, Lco/vine/android/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method private init()V
.registers 1
invoke-super {p0, p0}, Lcom/twitter/android/widget/RefreshableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return-void
.end method
.method private measureHeader(Landroid/view/View;)V
.registers 7
const/high16 v4, 0x4000
if-eqz p1, :cond_15
invoke-virtual {p0}, Lco/vine/android/widget/PinnedHeaderListView;->getMeasuredWidth()I
move-result v2
invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
iget v3, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderHeight:I
invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-virtual {p0, p1, v1, v0}, Lco/vine/android/widget/PinnedHeaderListView;->measureChild(Landroid/view/View;II)V
:cond_15
return-void
.end method
.method public dispatchDraw(Landroid/graphics/Canvas;)V
.registers 7
invoke-super {p0, p1}, Lcom/twitter/android/widget/RefreshableListView;->dispatchDraw(Landroid/graphics/Canvas;)V
iget-boolean v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderIsVisible:Z
if-eqz v0, :cond_43
iget-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;
if-eqz v0, :cond_43
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lco/vine/android/widget/PinnedHeaderListView;->isMode(I)Z
move-result v0
if-nez v0, :cond_43
iget v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderOffset:I
iget v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderHeight:I
neg-int v1, v1
if-le v0, v1, :cond_43
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
const/4 v0, 0x0
iget v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderOffset:I
iget v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mNavBottom:I
add-int/2addr v1, v2
invoke-virtual {p0}, Lco/vine/android/widget/PinnedHeaderListView;->getWidth()I
move-result v2
iget v3, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderHeight:I
iget v4, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderOffset:I
add-int/2addr v3, v4
iget v4, p0, Lco/vine/android/widget/PinnedHeaderListView;->mNavBottom:I
add-int/2addr v3, v4
invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z
const/4 v0, 0x0
iget v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderOffset:I
iget v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mNavBottom:I
add-int/2addr v1, v2
int-to-float v1, v1
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
iget-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;
invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
:cond_43
return-void
.end method
.method public getPinnedHeaderBottomAbs()I
.registers 4
const/4 v1, 0x2
new-array v0, v1, [I
invoke-virtual {p0, v0}, Lco/vine/android/widget/PinnedHeaderListView;->getLocationInWindow([I)V
iget v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderOffset:I
iget v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderHeight:I
add-int/2addr v1, v2
iget v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mNavBottom:I
add-int/2addr v1, v2
const/4 v2, 0x1
aget v2, v0, v2
add-int/2addr v1, v2
return v1
.end method
.method public getPositionForPixelLocation(I)I
.registers 5
const/4 v1, 0x0
:goto_1
invoke-virtual {p0}, Lco/vine/android/widget/PinnedHeaderListView;->getChildCount()I
move-result v2
if-ge v1, v2, :cond_1d
invoke-virtual {p0, v1}, Lco/vine/android/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_1a
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v2
if-gt v2, p1, :cond_1a
invoke-virtual {v0}, Landroid/view/View;->getBottom()I
move-result v2
if-lt v2, p1, :cond_1a
:goto_19
return v1
:cond_1a
add-int/lit8 v1, v1, 0x1
goto :goto_1
:cond_1d
const/4 v1, 0x0
goto :goto_19
.end method
.method public isAbsoluteTouchInPinnedHeader(Landroid/view/MotionEvent;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x2
new-array v0, v2, [I
invoke-virtual {p0, v0}, Lco/vine/android/widget/PinnedHeaderListView;->getLocationInWindow([I)V
iget-boolean v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderIsVisible:Z
if-eqz v2, :cond_32
iget-object v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;
if-eqz v2, :cond_32
invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F
move-result v2
iget v3, p0, Lco/vine/android/widget/PinnedHeaderListView;->mNavBottom:I
aget v4, v0, v1
add-int/2addr v3, v4
int-to-float v3, v3
cmpl-float v2, v2, v3
if-lez v2, :cond_32
invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F
move-result v2
iget v3, p0, Lco/vine/android/widget/PinnedHeaderListView;->mNavBottom:I
iget v4, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderOffset:I
add-int/2addr v3, v4
iget v4, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderHeight:I
add-int/2addr v3, v4
aget v4, v0, v1
add-int/2addr v3, v4
int-to-float v3, v3
cmpg-float v2, v2, v3
if-gez v2, :cond_32
:goto_31
return v1
:cond_32
const/4 v1, 0x0
goto :goto_31
.end method
.method public isTouchInPinnedHeader(Landroid/view/MotionEvent;)Z
.registers 5
iget-boolean v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderIsVisible:Z
if-eqz v0, :cond_26
iget-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;
if-eqz v0, :cond_26
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
iget v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mNavBottom:I
int-to-float v1, v1
cmpl-float v0, v0, v1
if-lez v0, :cond_26
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
iget v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderOffset:I
iget v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderHeight:I
add-int/2addr v1, v2
iget v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mNavBottom:I
add-int/2addr v1, v2
int-to-float v1, v1
cmpg-float v0, v0, v1
if-gez v0, :cond_26
const/4 v0, 0x1
:goto_25
return v0
:cond_26
const/4 v0, 0x0
goto :goto_25
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
invoke-virtual {p0, p1}, Lco/vine/android/widget/PinnedHeaderListView;->isTouchInPinnedHeader(Landroid/view/MotionEvent;)Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
invoke-super {p0, p1}, Lcom/twitter/android/widget/RefreshableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
goto :goto_7
.end method
.method public onMeasure(II)V
.registers 4
invoke-super {p0, p1, p2}, Lcom/twitter/android/widget/RefreshableListView;->onMeasure(II)V
iget-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;
invoke-direct {p0, v0}, Lco/vine/android/widget/PinnedHeaderListView;->measureHeader(Landroid/view/View;)V
return-void
.end method
.method public onScroll(Landroid/widget/AbsListView;III)V
.registers 13
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/widget/PinnedHeaderListView; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
if-eqz v0, :cond_53
iget-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
iget v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mNavBottom:I
invoke-interface {v0, v1}, Lco/vine/android/widget/PinnedHeaderAdapter;->getPinnedHeaderStatus(I)Lco/vine/android/widget/PinnedHeaderAdapter$PinnedHeaderStatus;
move-result-object v6
if-eqz v6, :cond_53
iget v0, v6, Lco/vine/android/widget/PinnedHeaderAdapter$PinnedHeaderStatus;->pinnedHeaderOffset:I
iput v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderOffset:I
iget-boolean v0, v6, Lco/vine/android/widget/PinnedHeaderAdapter$PinnedHeaderStatus;->pinnedHeaderIsVisible:Z
iput-boolean v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderIsVisible:Z
iget-boolean v0, v6, Lco/vine/android/widget/PinnedHeaderAdapter$PinnedHeaderStatus;->shouldRequestNewView:Z
if-eqz v0, :cond_53
iget-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
invoke-interface {v0}, Lco/vine/android/widget/PinnedHeaderAdapter;->getPinnedHeaderHeight()I
move-result v0
iput v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderHeight:I
iget-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
iget-object v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;
invoke-interface {v0, v1}, Lco/vine/android/widget/PinnedHeaderAdapter;->getPinnedHeaderView(Landroid/view/View;)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;
iget-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;
if-eqz v0, :cond_53
iget-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;
invoke-direct {p0, v0}, Lco/vine/android/widget/PinnedHeaderListView;->ensureHeaderHasLayoutParams(Landroid/view/View;)V
iget-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;
invoke-direct {p0, v0}, Lco/vine/android/widget/PinnedHeaderListView;->measureHeader(Landroid/view/View;)V
iget-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
iget-object v1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;
const/4 v2, 0x0
iget v3, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderOffset:I
iget v4, p0, Lco/vine/android/widget/PinnedHeaderListView;->mNavBottom:I
add-int/2addr v3, v4
invoke-virtual {p0}, Lco/vine/android/widget/PinnedHeaderListView;->getWidth()I
move-result v4
iget v5, p0, Lco/vine/android/widget/PinnedHeaderListView;->mNavBottom:I
iget v7, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderOffset:I
add-int/2addr v5, v7
iget v7, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderHeight:I
add-int/2addr v5, v7
invoke-interface/range {v0 .. v5}, Lco/vine/android/widget/PinnedHeaderAdapter;->layoutPinnedHeader(Landroid/view/View;IIII)V
:cond_53
iget-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
if-eqz v0, :cond_5c
iget-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V
:cond_5c
const-string v1, " - Lco/vine/android/widget/PinnedHeaderListView; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onScrollChanged(IIII)V
.registers 10
invoke-super {p0, p1, p2, p3, p4}, Lcom/twitter/android/widget/RefreshableListView;->onScrollChanged(IIII)V
iget-object v3, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChild:Landroid/view/View;
if-nez v3, :cond_24
invoke-virtual {p0}, Lco/vine/android/widget/PinnedHeaderListView;->getChildCount()I
move-result v3
if-lez v3, :cond_23
invoke-direct {p0}, Lco/vine/android/widget/PinnedHeaderListView;->getChildInTheMiddle()Landroid/view/View;
move-result-object v3
iput-object v3, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChild:Landroid/view/View;
iget-object v3, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChild:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getTop()I
move-result v3
iput v3, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChildPrevTop:I
iget-object v3, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChild:Landroid/view/View;
invoke-virtual {p0, v3}, Lco/vine/android/widget/PinnedHeaderListView;->getPositionForView(Landroid/view/View;)I
move-result v3
iput v3, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChildPrevPosition:I
:goto_23
:cond_23
return-void
:cond_24
iget-object v3, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChild:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v3
if-ne v3, p0, :cond_4f
iget-object v3, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChild:Landroid/view/View;
invoke-virtual {p0, v3}, Lco/vine/android/widget/PinnedHeaderListView;->getPositionForView(Landroid/view/View;)I
move-result v3
iget v4, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChildPrevPosition:I
if-ne v3, v4, :cond_4f
const/4 v0, 0x1
:goto_37
if-eqz v0, :cond_51
iget-object v3, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChild:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getTop()I
move-result v2
iget-object v3, p0, Lco/vine/android/widget/PinnedHeaderListView;->mScrollDeltaListener:Lco/vine/android/widget/PinnedHeaderListView$ScrollDeltaListener;
if-eqz v3, :cond_4c
iget v3, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChildPrevTop:I
sub-int v1, v2, v3
iget-object v3, p0, Lco/vine/android/widget/PinnedHeaderListView;->mScrollDeltaListener:Lco/vine/android/widget/PinnedHeaderListView$ScrollDeltaListener;
invoke-interface {v3, v1}, Lco/vine/android/widget/PinnedHeaderListView$ScrollDeltaListener;->onScroll(I)V
:cond_4c
iput v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChildPrevTop:I
goto :goto_23
:cond_4f
const/4 v0, 0x0
goto :goto_37
:cond_51
const/4 v3, 0x0
iput-object v3, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChild:Landroid/view/View;
goto :goto_23
.end method
.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/widget/PinnedHeaderListView; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
:cond_9
const-string v1, " - Lco/vine/android/widget/PinnedHeaderListView; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 5
invoke-virtual {p0, p1}, Lco/vine/android/widget/PinnedHeaderListView;->isTouchInPinnedHeader(Landroid/view/MotionEvent;)Z
move-result v0
if-eqz v0, :cond_20
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v1
iget v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderOffset:I
int-to-float v2, v2
sub-float/2addr v1, v2
iget v2, p0, Lco/vine/android/widget/PinnedHeaderListView;->mNavBottom:I
int-to-float v2, v2
sub-float/2addr v1, v2
invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V
iget-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;
invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
:goto_1f
return v0
:cond_20
invoke-super {p0, p1}, Lcom/twitter/android/widget/RefreshableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
goto :goto_1f
.end method
.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
.registers 2
check-cast p1, Landroid/widget/ListAdapter;
invoke-virtual {p0, p1}, Lco/vine/android/widget/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method public setAdapter(Landroid/widget/ListAdapter;)V
.registers 3
invoke-super {p0, p1}, Lcom/twitter/android/widget/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V
instance-of v0, p1, Lco/vine/android/widget/PinnedHeaderAdapter;
if-eqz v0, :cond_c
check-cast p1, Lco/vine/android/widget/PinnedHeaderAdapter;
invoke-virtual {p0, p1}, Lco/vine/android/widget/PinnedHeaderListView;->setPinnedHeaderAdapter(Lco/vine/android/widget/PinnedHeaderAdapter;)V
:cond_c
return-void
.end method
.method public setNavBottom(I)V
.registers 2
iput p1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mNavBottom:I
return-void
.end method
.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
return-void
.end method
.method public setPinnedHeaderAdapter(Lco/vine/android/widget/PinnedHeaderAdapter;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
return-void
.end method
.method public setScrollDeltaListener(Lco/vine/android/widget/PinnedHeaderListView$ScrollDeltaListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/PinnedHeaderListView;->mScrollDeltaListener:Lco/vine/android/widget/PinnedHeaderListView$ScrollDeltaListener;
return-void
.end method
.method public untrackScrollawayChild()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/widget/PinnedHeaderListView;->mTrackedChild:Landroid/view/View;
return-void
.end method