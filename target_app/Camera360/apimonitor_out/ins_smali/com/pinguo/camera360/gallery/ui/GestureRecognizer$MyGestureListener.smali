.class  Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureRecognizer.java"
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
.method private constructor <init>(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener;-><init>(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;)V
return-void
.end method
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener; onDoubleTap "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
#getter for: Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mListener:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->access$0(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;)Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
move-result-object v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v2
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;->onDoubleTap(FF)Z
move-result v0
move v2, v0
const-string v1, " - Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener; onDoubleTap"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
#getter for: Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mListener:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->access$0(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;)Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
move-result-object v0
invoke-interface {v0, p1, p2, p3, p4}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
move-result v0
return v0
.end method
.method public onLongPress(Landroid/view/MotionEvent;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener; onLongPress "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
#getter for: Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mListener:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->access$0(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;)Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
move-result-object v0
invoke-interface {v0, p1}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;->onLongPress(Landroid/view/MotionEvent;)V
const-string v1, " - Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener; onLongPress"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
#getter for: Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mListener:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->access$0(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;)Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
move-result-object v0
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v2
sub-float/2addr v1, v2
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v2
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v3
sub-float/2addr v2, v3
invoke-interface {v0, p3, p4, v1, v2}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;->onScroll(FFFF)Z
move-result v0
move v2, v0
const-string v1, " - Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener; onSingleTapConfirmed "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
#getter for: Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mListener:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->access$0(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;)Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
move-result-object v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v2
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;->onSingleTapConfirmed(FF)Z
move-result v0
move v2, v0
const-string v1, " - Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener; onSingleTapConfirmed"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method