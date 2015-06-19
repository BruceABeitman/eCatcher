.class  Lkankan/wheel/widget/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"
.implements Lkankan/wheel/widget/WheelScroller$ScrollingListener;
.field final synthetic this$0:Lkankan/wheel/widget/WheelView;
.method constructor <init>(Lkankan/wheel/widget/WheelView;)V
.registers 2
iput-object p1, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onFinished()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
#getter for: Lkankan/wheel/widget/WheelView;->isScrollingPerformed:Z
invoke-static {v0}, Lkankan/wheel/widget/WheelView;->access$5(Lkankan/wheel/widget/WheelView;)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
invoke-virtual {v0}, Lkankan/wheel/widget/WheelView;->notifyScrollingListenersAboutEnd()V
iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
#setter for: Lkankan/wheel/widget/WheelView;->isScrollingPerformed:Z
invoke-static {v0, v1}, Lkankan/wheel/widget/WheelView;->access$0(Lkankan/wheel/widget/WheelView;Z)V
:cond_13
iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
#setter for: Lkankan/wheel/widget/WheelView;->scrollingOffset:I
invoke-static {v0, v1}, Lkankan/wheel/widget/WheelView;->access$3(Lkankan/wheel/widget/WheelView;I)V
iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
invoke-virtual {v0}, Lkankan/wheel/widget/WheelView;->invalidate()V
return-void
.end method
.method public onJustify()V
.registers 4
iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
#getter for: Lkankan/wheel/widget/WheelView;->scrollingOffset:I
invoke-static {v0}, Lkankan/wheel/widget/WheelView;->access$2(Lkankan/wheel/widget/WheelView;)I
move-result v0
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v0
const/4 v1, 0x1
if-le v0, v1, :cond_1d
iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
#getter for: Lkankan/wheel/widget/WheelView;->scroller:Lkankan/wheel/widget/WheelScroller;
invoke-static {v0}, Lkankan/wheel/widget/WheelView;->access$4(Lkankan/wheel/widget/WheelView;)Lkankan/wheel/widget/WheelScroller;
move-result-object v0
iget-object v1, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
#getter for: Lkankan/wheel/widget/WheelView;->scrollingOffset:I
invoke-static {v1}, Lkankan/wheel/widget/WheelView;->access$2(Lkankan/wheel/widget/WheelView;)I
move-result v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lkankan/wheel/widget/WheelScroller;->scroll(II)V
:cond_1d
return-void
.end method
.method public onScroll(I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lkankan/wheel/widget/WheelView$1; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
#calls: Lkankan/wheel/widget/WheelView;->doScroll(I)V
invoke-static {v1, p1}, Lkankan/wheel/widget/WheelView;->access$1(Lkankan/wheel/widget/WheelView;I)V
iget-object v1, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
invoke-virtual {v1}, Lkankan/wheel/widget/WheelView;->getHeight()I
move-result v0
iget-object v1, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
#getter for: Lkankan/wheel/widget/WheelView;->scrollingOffset:I
invoke-static {v1}, Lkankan/wheel/widget/WheelView;->access$2(Lkankan/wheel/widget/WheelView;)I
move-result v1
if-le v1, v0, :cond_22
iget-object v1, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
#setter for: Lkankan/wheel/widget/WheelView;->scrollingOffset:I
invoke-static {v1, v0}, Lkankan/wheel/widget/WheelView;->access$3(Lkankan/wheel/widget/WheelView;I)V
iget-object v1, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
#getter for: Lkankan/wheel/widget/WheelView;->scroller:Lkankan/wheel/widget/WheelScroller;
invoke-static {v1}, Lkankan/wheel/widget/WheelView;->access$4(Lkankan/wheel/widget/WheelView;)Lkankan/wheel/widget/WheelScroller;
move-result-object v1
invoke-virtual {v1}, Lkankan/wheel/widget/WheelScroller;->stopScrolling()V
:cond_21
:goto_21
const-string v1, " - Lkankan/wheel/widget/WheelView$1; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_22
iget-object v1, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
#getter for: Lkankan/wheel/widget/WheelView;->scrollingOffset:I
invoke-static {v1}, Lkankan/wheel/widget/WheelView;->access$2(Lkankan/wheel/widget/WheelView;)I
move-result v1
neg-int v2, v0
if-ge v1, v2, :cond_21
iget-object v1, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
neg-int v2, v0
#setter for: Lkankan/wheel/widget/WheelView;->scrollingOffset:I
invoke-static {v1, v2}, Lkankan/wheel/widget/WheelView;->access$3(Lkankan/wheel/widget/WheelView;I)V
iget-object v1, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
#getter for: Lkankan/wheel/widget/WheelView;->scroller:Lkankan/wheel/widget/WheelScroller;
invoke-static {v1}, Lkankan/wheel/widget/WheelView;->access$4(Lkankan/wheel/widget/WheelView;)Lkankan/wheel/widget/WheelScroller;
move-result-object v1
invoke-virtual {v1}, Lkankan/wheel/widget/WheelScroller;->stopScrolling()V
goto :goto_21
.end method
.method public onStarted()V
.registers 3
iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
const/4 v1, 0x1
#setter for: Lkankan/wheel/widget/WheelView;->isScrollingPerformed:Z
invoke-static {v0, v1}, Lkankan/wheel/widget/WheelView;->access$0(Lkankan/wheel/widget/WheelView;Z)V
iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;
invoke-virtual {v0}, Lkankan/wheel/widget/WheelView;->notifyScrollingListenersAboutStart()V
return-void
.end method