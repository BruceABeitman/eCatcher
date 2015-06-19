.class public Lco/vine/android/dragsort/DragSortWidget$DragScroller;
.super Ljava/lang/Object;
.source "DragSortWidget.java"
.implements Ljava/lang/Runnable;
.field public static final LEFT:I = 0x0
.field public static final RIGHT:I = 0x1
.field private dt:F
.field private dx:I
.field private mAbort:Z
.field private mCurrTime:J
.field private mPrevTime:J
.field private mScrollSpeed:F
.field private mScrolling:Z
.field private scrollDir:I
.field private tStart:J
.field final synthetic this$0:Lco/vine/android/dragsort/DragSortWidget;
.method public constructor <init>(Lco/vine/android/dragsort/DragSortWidget;)V
.registers 3
iput-object p1, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mScrollSpeed:F
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mScrolling:Z
return-void
.end method
.method public run()V
.registers 12
const/4 v9, 0x0
iget-boolean v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mAbort:Z
if-eqz v7, :cond_8
iput-boolean v9, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mScrolling:Z
:goto_7
return-void
:cond_8
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
invoke-static {v7}, Lco/vine/android/dragsort/DragSortWidget;->access$100(Lco/vine/android/dragsort/DragSortWidget;)I
move-result v5
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v7}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v7
invoke-virtual {v7}, Lco/vine/android/views/HorizontalListView;->getFirstVisiblePosition()I
move-result v2
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v7}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v7
invoke-virtual {v7}, Lco/vine/android/views/HorizontalListView;->getLastVisiblePosition()I
move-result v3
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v7}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v7
invoke-virtual {v7}, Lco/vine/android/views/HorizontalListView;->getCount()I
move-result v0
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v7}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v7
invoke-virtual {v7}, Lco/vine/android/views/HorizontalListView;->getWidth()I
move-result v4
iget v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->scrollDir:I
if-nez v7, :cond_ca
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v7}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v7
invoke-virtual {v7, v9}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v6
if-nez v6, :cond_49
iput-boolean v9, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mScrolling:Z
goto :goto_7
:cond_49
if-nez v2, :cond_54
invoke-virtual {v6}, Landroid/view/View;->getLeft()I
move-result v7
if-nez v7, :cond_54
iput-boolean v9, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mScrolling:Z
goto :goto_7
:cond_54
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
invoke-static {v7}, Lco/vine/android/dragsort/DragSortWidget;->access$200(Lco/vine/android/dragsort/DragSortWidget;)I
move-result v7
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v8}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v8
invoke-virtual {v8}, Lco/vine/android/views/HorizontalListView;->getLeft()I
move-result v8
sub-int v1, v7, v8
if-gez v1, :cond_69
const/4 v1, 0x0
:cond_69
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mMaxScrollSpeed:F
invoke-static {v7}, Lco/vine/android/dragsort/DragSortWidget;->access$300(Lco/vine/android/dragsort/DragSortWidget;)F
move-result v7
add-int/lit8 v8, v1, 0x1
int-to-float v8, v8
div-float/2addr v7, v8
iput v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mScrollSpeed:F
:goto_75
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v7
iput-wide v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mCurrTime:J
iget-wide v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mCurrTime:J
iget-wide v9, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mPrevTime:J
sub-long/2addr v7, v9
long-to-float v7, v7
iput v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->dt:F
iget v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mScrollSpeed:F
iget v8, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->dt:F
mul-float/2addr v7, v8
invoke-static {v7}, Ljava/lang/Math;->round(F)I
move-result v7
iput v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->dx:I
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v7}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v7
iget v8, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->dx:I
iget v9, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->dx:I
invoke-virtual {v7, v8, v9}, Lco/vine/android/views/HorizontalListView;->scroll(II)Z
iget-wide v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mCurrTime:J
iput-wide v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mPrevTime:J
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#calls: Lco/vine/android/dragsort/DragSortWidget;->getClosestItemPosition()I
invoke-static {v8}, Lco/vine/android/dragsort/DragSortWidget;->access$400(Lco/vine/android/dragsort/DragSortWidget;)I
move-result v8
#setter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
invoke-static {v7, v8}, Lco/vine/android/dragsort/DragSortWidget;->access$102(Lco/vine/android/dragsort/DragSortWidget;I)I
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
invoke-static {v7}, Lco/vine/android/dragsort/DragSortWidget;->access$100(Lco/vine/android/dragsort/DragSortWidget;)I
move-result v7
const/4 v8, -0x1
if-ne v7, v8, :cond_b8
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#setter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
invoke-static {v7, v5}, Lco/vine/android/dragsort/DragSortWidget;->access$102(Lco/vine/android/dragsort/DragSortWidget;I)I
:cond_b8
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
invoke-static {v8}, Lco/vine/android/dragsort/DragSortWidget;->access$100(Lco/vine/android/dragsort/DragSortWidget;)I
move-result v8
#calls: Lco/vine/android/dragsort/DragSortWidget;->dragFloatView(II)V
invoke-static {v7, v5, v8}, Lco/vine/android/dragsort/DragSortWidget;->access$500(Lco/vine/android/dragsort/DragSortWidget;II)V
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v7, p0}, Lco/vine/android/dragsort/DragSortWidget;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_7
:cond_ca
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v7}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v7
sub-int v8, v3, v2
invoke-virtual {v7, v8}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v6
if-nez v6, :cond_dc
iput-boolean v9, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mScrolling:Z
goto/16 :goto_7
:cond_dc
add-int/lit8 v7, v0, -0x1
if-ne v3, v7, :cond_ea
invoke-virtual {v6}, Landroid/view/View;->getRight()I
move-result v7
if-gt v7, v4, :cond_ea
iput-boolean v9, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mScrolling:Z
goto/16 :goto_7
:cond_ea
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
invoke-static {v7}, Lco/vine/android/dragsort/DragSortWidget;->access$200(Lco/vine/android/dragsort/DragSortWidget;)I
move-result v7
sub-int v7, v4, v7
iget-object v8, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v8}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v8
invoke-virtual {v8}, Lco/vine/android/views/HorizontalListView;->getLeft()I
move-result v8
add-int v1, v7, v8
if-gez v1, :cond_101
const/4 v1, 0x0
:cond_101
iget-object v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mMaxScrollSpeed:F
invoke-static {v7}, Lco/vine/android/dragsort/DragSortWidget;->access$300(Lco/vine/android/dragsort/DragSortWidget;)F
move-result v7
neg-float v7, v7
add-int/lit8 v8, v1, 0x1
int-to-float v8, v8
div-float/2addr v7, v8
iput v7, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mScrollSpeed:F
goto/16 :goto_75
.end method
.method public startScrolling(I)V
.registers 4
iget-boolean v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mScrolling:Z
if-nez v0, :cond_1b
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mAbort:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mScrolling:Z
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->tStart:J
iget-wide v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->tStart:J
iput-wide v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mPrevTime:J
iput p1, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->scrollDir:I
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v0, p0}, Lco/vine/android/dragsort/DragSortWidget;->post(Ljava/lang/Runnable;)Z
:cond_1b
return-void
.end method
.method public stopScrolling(Z)V
.registers 3
if-eqz p1, :cond_f
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v0}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v0
invoke-virtual {v0, p0}, Lco/vine/android/views/HorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mScrolling:Z
:goto_e
return-void
:cond_f
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragScroller;->mAbort:Z
goto :goto_e
.end method