.class  Lkankan/wheel/widget/WheelScroller$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WheelScroller.java"
.field final synthetic this$0:Lkankan/wheel/widget/WheelScroller;
.method constructor <init>(Lkankan/wheel/widget/WheelScroller;)V
.registers 2
iput-object p1, p0, Lkankan/wheel/widget/WheelScroller$1;->this$0:Lkankan/wheel/widget/WheelScroller;
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
return-void
.end method
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 16
const/4 v1, 0x0
iget-object v0, p0, Lkankan/wheel/widget/WheelScroller$1;->this$0:Lkankan/wheel/widget/WheelScroller;
#setter for: Lkankan/wheel/widget/WheelScroller;->lastScrollY:I
invoke-static {v0, v1}, Lkankan/wheel/widget/WheelScroller;->access$0(Lkankan/wheel/widget/WheelScroller;I)V
const v9, 0x7fffffff
const v10, -0x7fffffff
iget-object v0, p0, Lkankan/wheel/widget/WheelScroller$1;->this$0:Lkankan/wheel/widget/WheelScroller;
#getter for: Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
invoke-static {v0}, Lkankan/wheel/widget/WheelScroller;->access$1(Lkankan/wheel/widget/WheelScroller;)Landroid/widget/Scroller;
move-result-object v0
iget-object v2, p0, Lkankan/wheel/widget/WheelScroller$1;->this$0:Lkankan/wheel/widget/WheelScroller;
#getter for: Lkankan/wheel/widget/WheelScroller;->lastScrollY:I
invoke-static {v2}, Lkankan/wheel/widget/WheelScroller;->access$2(Lkankan/wheel/widget/WheelScroller;)I
move-result v2
neg-float v3, p4
float-to-int v4, v3
const v7, -0x7fffffff
const v8, 0x7fffffff
move v3, v1
move v5, v1
move v6, v1
invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V
iget-object v0, p0, Lkankan/wheel/widget/WheelScroller$1;->this$0:Lkankan/wheel/widget/WheelScroller;
#calls: Lkankan/wheel/widget/WheelScroller;->setNextMessage(I)V
invoke-static {v0, v1}, Lkankan/wheel/widget/WheelScroller;->access$3(Lkankan/wheel/widget/WheelScroller;I)V
const/4 v0, 0x1
return v0
.end method
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lkankan/wheel/widget/WheelScroller$1; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lkankan/wheel/widget/WheelScroller$1; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method