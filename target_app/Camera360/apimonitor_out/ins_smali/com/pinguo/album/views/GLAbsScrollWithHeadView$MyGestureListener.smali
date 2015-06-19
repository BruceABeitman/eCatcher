.class  Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;
.super Ljava/lang/Object;
.source "GLAbsScrollWithHeadView.java"
.implements Landroid/view/GestureDetector$OnGestureListener;
.field private isDown:Z
.field final synthetic this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
.method private constructor <init>(Lcom/pinguo/album/views/GLAbsScrollWithHeadView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/album/views/GLAbsScrollWithHeadView;Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;-><init>(Lcom/pinguo/album/views/GLAbsScrollWithHeadView;)V
return-void
.end method
.method private cancelDown(Z)V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->isDown:Z
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->isDown:Z
iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
invoke-virtual {v0, p1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->eventCancelDown(Z)V
goto :goto_4
.end method
.method public onDown(Landroid/view/MotionEvent;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 10
const/4 v2, 0x0
invoke-direct {p0, v2}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->cancelDown(Z)V
iget-object v3, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
invoke-virtual {v3}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->getScrollLimitWithHead()I
move-result v0
if-nez v0, :cond_d
:goto_c
return v2
:cond_d
iget-object v3, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
invoke-virtual {v3}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->isScrollVertical()Z
move-result v3
if-nez v3, :cond_2d
move v1, p3
:goto_16
iget-object v3, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
#getter for: Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mScroller:Lcom/pinguo/album/views/utils/ViewScrollerHelper;
invoke-static {v3}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->access$0(Lcom/pinguo/album/views/GLAbsScrollWithHeadView;)Lcom/pinguo/album/views/utils/ViewScrollerHelper;
move-result-object v3
neg-float v4, v1
float-to-int v4, v4
invoke-virtual {v3, v4, v2, v0}, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->fling(III)V
iget-object v2, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
invoke-virtual {v2}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->eventFling()V
iget-object v2, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
invoke-virtual {v2}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->invalidate()V
const/4 v2, 0x1
goto :goto_c
:cond_2d
move v1, p4
goto :goto_16
.end method
.method public onLongPress(Landroid/view/MotionEvent;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener; onLongPress "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->cancelDown(Z)V
iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
#getter for: Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mDownInScrolling:Z
invoke-static {v0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->access$1(Lcom/pinguo/album/views/GLAbsScrollWithHeadView;)Z
move-result v0
if-eqz v0, :cond_d
:goto_c
const-string v1, " - Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener; onLongPress"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_d
iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
invoke-virtual {v0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->lockRendering()V
:try_start_12
iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
iget-object v1, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
#calls: Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->formatEventWithHead(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
invoke-static {v1, p1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->access$2(Lcom/pinguo/album/views/GLAbsScrollWithHeadView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->eventLongPress(Landroid/view/MotionEvent;)V
:try_end_1d
.catchall {:try_start_12 .. :try_end_1d} :catchall_28
iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
invoke-virtual {v0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->unlockRendering()V
iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
#calls: Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->formatEventBack(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
invoke-static {v0, p1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->access$3(Lcom/pinguo/album/views/GLAbsScrollWithHeadView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
goto :goto_c
:catchall_28
move-exception v0
iget-object v1, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
invoke-virtual {v1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->unlockRendering()V
throw v0
.end method
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
invoke-direct {p0, v5}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->cancelDown(Z)V
iget-object v2, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
invoke-virtual {v2}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->isScrollVertical()Z
move-result v2
if-nez v2, :cond_2d
move v0, p3
:goto_d
iget-object v2, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
#getter for: Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mScroller:Lcom/pinguo/album/views/utils/ViewScrollerHelper;
invoke-static {v2}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->access$0(Lcom/pinguo/album/views/GLAbsScrollWithHeadView;)Lcom/pinguo/album/views/utils/ViewScrollerHelper;
move-result-object v2
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v3
iget-object v4, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
invoke-virtual {v4}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->getScrollLimitWithHead()I
move-result v4
invoke-virtual {v2, v3, v5, v4}, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->startScroll(III)I
move-result v1
iget-object v2, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
invoke-virtual {v2, v1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->eventScroll(I)V
iget-object v2, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
invoke-virtual {v2}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->invalidate()V
const/4 v2, 0x1
const-string v1, " - Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v2
:cond_2d
move v0, p4
goto :goto_d
.end method
.method public onShowPress(Landroid/view/MotionEvent;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
invoke-virtual {v0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->lockRendering()V
:try_start_5
iget-boolean v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->isDown:Z
:try_end_7
.catchall {:try_start_5 .. :try_end_7} :catchall_2b
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
invoke-virtual {v0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->unlockRendering()V
:goto_e
return-void
:cond_f
:try_start_f
iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
iget-object v1, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
#calls: Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->formatEventWithHead(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
invoke-static {v1, p1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->access$2(Lcom/pinguo/album/views/GLAbsScrollWithHeadView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->eventShowPress(Landroid/view/MotionEvent;)Z
move-result v0
if-eqz v0, :cond_20
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->isDown:Z
:cond_20
:try_end_20
.catchall {:try_start_f .. :try_end_20} :catchall_2b
iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
invoke-virtual {v0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->unlockRendering()V
iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
#calls: Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->formatEventBack(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
invoke-static {v0, p1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->access$3(Lcom/pinguo/album/views/GLAbsScrollWithHeadView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
goto :goto_e
:catchall_2b
move-exception v0
iget-object v1, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
invoke-virtual {v1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->unlockRendering()V
throw v0
.end method
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
.registers 5
const/4 v2, 0x1
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->cancelDown(Z)V
iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
#getter for: Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mDownInScrolling:Z
invoke-static {v0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->access$1(Lcom/pinguo/album/views/GLAbsScrollWithHeadView;)Z
move-result v0
if-eqz v0, :cond_e
:goto_d
return v2
:cond_e
iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
iget-object v1, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
#calls: Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->formatEventWithHead(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
invoke-static {v1, p1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->access$2(Lcom/pinguo/album/views/GLAbsScrollWithHeadView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->eventSingleTapUp(Landroid/view/MotionEvent;)V
iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;->this$0:Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
#calls: Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->formatEventBack(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
invoke-static {v0, p1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->access$3(Lcom/pinguo/album/views/GLAbsScrollWithHeadView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
goto :goto_d
.end method