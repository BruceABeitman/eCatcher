.class  Lcom/glympse/android/controls/GTimerView$TimerGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GTimerView.java"
.field final synthetic this$0:Lcom/glympse/android/controls/GTimerView;
.method private constructor <init>(Lcom/glympse/android/controls/GTimerView;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/controls/GTimerView$TimerGestureListener;->this$0:Lcom/glympse/android/controls/GTimerView;
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/controls/GTimerView;Lcom/glympse/android/controls/GTimerView$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/glympse/android/controls/GTimerView$TimerGestureListener;-><init>(Lcom/glympse/android/controls/GTimerView;)V
return-void
.end method
.method public onDown(Landroid/view/MotionEvent;)Z
.registers 6
const/4 v3, 0x1
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView$TimerGestureListener;->this$0:Lcom/glympse/android/controls/GTimerView;
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v2
#calls: Lcom/glympse/android/controls/GTimerView;->handleRotationMotion(FFZZ)Z
invoke-static {v0, v1, v2, v3, v3}, Lcom/glympse/android/controls/GTimerView;->access$600(Lcom/glympse/android/controls/GTimerView;FFZZ)Z
move-result v0
return v0
.end method
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/glympse/android/controls/GTimerView$TimerGestureListener; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView$TimerGestureListener;->this$0:Lcom/glympse/android/controls/GTimerView;
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v2
const/4 v3, 0x1
const/4 v4, 0x0
#calls: Lcom/glympse/android/controls/GTimerView;->handleRotationMotion(FFZZ)Z
invoke-static {v0, v1, v2, v3, v4}, Lcom/glympse/android/controls/GTimerView;->access$600(Lcom/glympse/android/controls/GTimerView;FFZZ)Z
move-result v0
move v2, v0
const-string v1, " - Lcom/glympse/android/controls/GTimerView$TimerGestureListener; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
.registers 7
const/4 v4, 0x0
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView$TimerGestureListener;->this$0:Lcom/glympse/android/controls/GTimerView;
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v2
const/4 v3, 0x1
#calls: Lcom/glympse/android/controls/GTimerView;->handleRotationMotion(FFZZ)Z
invoke-static {v0, v1, v2, v4, v3}, Lcom/glympse/android/controls/GTimerView;->access$600(Lcom/glympse/android/controls/GTimerView;FFZZ)Z
return v4
.end method