.class  Lkankan/wheel/widget/WheelScroller$2;
.super Landroid/os/Handler;
.source "WheelScroller.java"
.field final synthetic this$0:Lkankan/wheel/widget/WheelScroller;
.method constructor <init>(Lkankan/wheel/widget/WheelScroller;)V
.registers 2
iput-object p1, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 6
const/4 v3, 0x1
iget-object v2, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;
#getter for: Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
invoke-static {v2}, Lkankan/wheel/widget/WheelScroller;->access$1(Lkankan/wheel/widget/WheelScroller;)Landroid/widget/Scroller;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z
iget-object v2, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;
#getter for: Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
invoke-static {v2}, Lkankan/wheel/widget/WheelScroller;->access$1(Lkankan/wheel/widget/WheelScroller;)Landroid/widget/Scroller;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I
move-result v0
iget-object v2, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;
#getter for: Lkankan/wheel/widget/WheelScroller;->lastScrollY:I
invoke-static {v2}, Lkankan/wheel/widget/WheelScroller;->access$2(Lkankan/wheel/widget/WheelScroller;)I
move-result v2
sub-int v1, v2, v0
iget-object v2, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;
#setter for: Lkankan/wheel/widget/WheelScroller;->lastScrollY:I
invoke-static {v2, v0}, Lkankan/wheel/widget/WheelScroller;->access$0(Lkankan/wheel/widget/WheelScroller;I)V
if-eqz v1, :cond_2c
iget-object v2, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;
#getter for: Lkankan/wheel/widget/WheelScroller;->listener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;
invoke-static {v2}, Lkankan/wheel/widget/WheelScroller;->access$4(Lkankan/wheel/widget/WheelScroller;)Lkankan/wheel/widget/WheelScroller$ScrollingListener;
move-result-object v2
invoke-interface {v2, v1}, Lkankan/wheel/widget/WheelScroller$ScrollingListener;->onScroll(I)V
:cond_2c
iget-object v2, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;
#getter for: Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
invoke-static {v2}, Lkankan/wheel/widget/WheelScroller;->access$1(Lkankan/wheel/widget/WheelScroller;)Landroid/widget/Scroller;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I
move-result v2
sub-int v2, v0, v2
invoke-static {v2}, Ljava/lang/Math;->abs(I)I
move-result v2
if-ge v2, v3, :cond_51
iget-object v2, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;
#getter for: Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
invoke-static {v2}, Lkankan/wheel/widget/WheelScroller;->access$1(Lkankan/wheel/widget/WheelScroller;)Landroid/widget/Scroller;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I
move-result v0
iget-object v2, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;
#getter for: Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
invoke-static {v2}, Lkankan/wheel/widget/WheelScroller;->access$1(Lkankan/wheel/widget/WheelScroller;)Landroid/widget/Scroller;
move-result-object v2
invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V
:cond_51
iget-object v2, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;
#getter for: Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
invoke-static {v2}, Lkankan/wheel/widget/WheelScroller;->access$1(Lkankan/wheel/widget/WheelScroller;)Landroid/widget/Scroller;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z
move-result v2
if-nez v2, :cond_69
iget-object v2, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;
#getter for: Lkankan/wheel/widget/WheelScroller;->animationHandler:Landroid/os/Handler;
invoke-static {v2}, Lkankan/wheel/widget/WheelScroller;->access$5(Lkankan/wheel/widget/WheelScroller;)Landroid/os/Handler;
move-result-object v2
iget v3, p1, Landroid/os/Message;->what:I
invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
:goto_68
return-void
:cond_69
iget v2, p1, Landroid/os/Message;->what:I
if-nez v2, :cond_73
iget-object v2, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;
#calls: Lkankan/wheel/widget/WheelScroller;->justify()V
invoke-static {v2}, Lkankan/wheel/widget/WheelScroller;->access$6(Lkankan/wheel/widget/WheelScroller;)V
goto :goto_68
:cond_73
iget-object v2, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;
invoke-virtual {v2}, Lkankan/wheel/widget/WheelScroller;->finishScrolling()V
goto :goto_68
.end method