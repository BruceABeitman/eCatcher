.class  Lcom/pinguo/camera360/sony/SonyCameraFragment$14;
.super Ljava/lang/Object;
.source "SonyCameraFragment.java"
.implements Landroid/view/View$OnTouchListener;
.field  downTime:J
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$14;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$14;->downTime:J
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 7
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_22
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$14;->downTime:J
sub-long/2addr v0, v2
invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I
move-result v2
int-to-long v2, v2
cmp-long v0, v0, v2
if-lez v0, :cond_22
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$14;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
const-string/jumbo v1, "out"
const-string/jumbo v2, "stop"
#calls: Lcom/pinguo/camera360/sony/SonyCameraFragment;->actZoom(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$16(Lcom/pinguo/camera360/sony/SonyCameraFragment;Ljava/lang/String;Ljava/lang/String;)V
:cond_22
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-nez v0, :cond_2e
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$14;->downTime:J
:cond_2e
const/4 v0, 0x0
return v0
.end method