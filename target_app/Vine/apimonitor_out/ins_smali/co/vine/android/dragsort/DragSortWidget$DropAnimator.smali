.class  Lco/vine/android/dragsort/DragSortWidget$DropAnimator;
.super Lco/vine/android/animation/SmoothAnimator;
.source "DragSortWidget.java"
.field private mDeltaX:F
.field private mDeltaY:F
.field private mTargetPosition:I
.field private mTargetX:I
.field private mTargetY:I
.field final synthetic this$0:Lco/vine/android/dragsort/DragSortWidget;
.method public constructor <init>(Lco/vine/android/dragsort/DragSortWidget;FI)V
.registers 4
iput-object p1, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
invoke-direct {p0, p1, p2, p3}, Lco/vine/android/animation/SmoothAnimator;-><init>(Landroid/view/View;FI)V
return-void
.end method
.method public onStart()V
.registers 5
const-string v1, " + Lco/vine/android/dragsort/DragSortWidget$DropAnimator; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
invoke-static {v1}, Lco/vine/android/dragsort/DragSortWidget;->access$100(Lco/vine/android/dragsort/DragSortWidget;)I
move-result v1
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->mTargetPosition:I
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v1}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v1
iget v2, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->mTargetPosition:I
iget-object v3, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v3}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v3
invoke-virtual {v3}, Lco/vine/android/views/HorizontalListView;->getFirstVisiblePosition()I
move-result v3
sub-int/2addr v2, v3
invoke-virtual {v1, v2}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
const/4 v2, 0x1
iput-boolean v2, v1, Lco/vine/android/dragsort/DragSortWidget;->mDropping:Z
if-eqz v0, :cond_61
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v1
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v2}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v2
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getTop()I
move-result v2
add-int/2addr v1, v2
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->mTargetY:I
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v1
iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v2}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v2
invoke-virtual {v2}, Lco/vine/android/views/HorizontalListView;->getLeft()I
move-result v2
add-int/2addr v1, v2
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->mTargetX:I
:goto_48
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewX:I
invoke-static {v1}, Lco/vine/android/dragsort/DragSortWidget;->access$700(Lco/vine/android/dragsort/DragSortWidget;)I
move-result v1
iget v2, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->mTargetX:I
sub-int/2addr v1, v2
int-to-float v1, v1
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->mDeltaX:F
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewY:I
invoke-static {v1}, Lco/vine/android/dragsort/DragSortWidget;->access$800(Lco/vine/android/dragsort/DragSortWidget;)I
move-result v1
iget v2, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->mTargetY:I
sub-int/2addr v1, v2
int-to-float v1, v1
iput v1, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->mDeltaY:F
const-string v1, " - Lco/vine/android/dragsort/DragSortWidget$DropAnimator; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_61
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
const/4 v2, 0x0
iput-boolean v2, v1, Lco/vine/android/dragsort/DragSortWidget;->mDropping:Z
iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewDestroyAnimator:Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;
invoke-static {v1}, Lco/vine/android/dragsort/DragSortWidget;->access$600(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;
move-result-object v1
invoke-virtual {v1}, Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;->start()V
invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->cancel()V
goto :goto_48
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lco/vine/android/dragsort/DragSortWidget$DropAnimator; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#calls: Lco/vine/android/dragsort/DragSortWidget;->finishDrop()V
invoke-static {v0}, Lco/vine/android/dragsort/DragSortWidget;->access$900(Lco/vine/android/dragsort/DragSortWidget;)V
const-string v1, " - Lco/vine/android/dragsort/DragSortWidget$DropAnimator; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onUpdate(FF)V
.registers 10
iget v2, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->mTargetX:I
iget v3, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->mTargetY:I
iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v4}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v4
iget v5, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->mTargetPosition:I
iget-object v6, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v6}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/views/HorizontalListView;->getFirstVisiblePosition()I
move-result v6
sub-int/2addr v5, v6
invoke-virtual {v4, v5}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_3d
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v4
iget-object v5, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v5}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v5
invoke-virtual {v5}, Lco/vine/android/views/HorizontalListView;->getTop()I
move-result v5
add-int v3, v4, v5
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v4
iget-object v5, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
#getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
invoke-static {v5}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;
move-result-object v5
invoke-virtual {v5}, Lco/vine/android/views/HorizontalListView;->getLeft()I
move-result v5
add-int v2, v4, v5
:cond_3d
iput v2, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->mTargetX:I
iput v3, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->mTargetY:I
const/high16 v4, 0x3f80
sub-float v0, v4, p2
iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
iget v5, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->mTargetX:I
iget v6, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->mDeltaX:F
mul-float/2addr v6, v0
float-to-int v6, v6
add-int/2addr v5, v6
#setter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewX:I
invoke-static {v4, v5}, Lco/vine/android/dragsort/DragSortWidget;->access$702(Lco/vine/android/dragsort/DragSortWidget;I)I
iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
iget v5, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->mTargetY:I
iget v6, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->mDeltaY:F
mul-float/2addr v6, v0
float-to-int v6, v6
add-int/2addr v5, v6
#setter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewY:I
invoke-static {v4, v5}, Lco/vine/android/dragsort/DragSortWidget;->access$802(Lco/vine/android/dragsort/DragSortWidget;I)I
iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget$DropAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v4}, Lco/vine/android/dragsort/DragSortWidget;->invalidate()V
return-void
.end method