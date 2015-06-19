.class  Lcom/pinguo/camera360/sony/view/SonyTapCaptureView$1;
.super Ljava/lang/Object;
.source "SonyTapCaptureView.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;
.method constructor <init>(Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/view/SonyTapCaptureView$1;->this$0:Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTapCaptureView$1;->this$0:Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;
#getter for: Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;->mGestureDetector:Landroid/view/GestureDetector;
invoke-static {v0}, Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;->access$0(Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;)Landroid/view/GestureDetector;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTapCaptureView$1;->this$0:Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;
#getter for: Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;->mGestureDetector:Landroid/view/GestureDetector;
invoke-static {v0}, Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;->access$0(Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;)Landroid/view/GestureDetector;
move-result-object v0
invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
:goto_12
return v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method