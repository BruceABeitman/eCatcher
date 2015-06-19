.class  Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwitchCheckBox.java"
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;
.method private constructor <init>(Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener;->this$0:Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener;-><init>(Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;)V
return-void
.end method
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onShowPress(Landroid/view/MotionEvent;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener;->this$0:Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;
invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->getStatus()Z
move-result v0
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener;->this$0:Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;
invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->setOff()V
:goto_d
return-void
:cond_e
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener;->this$0:Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;
invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->setOn()V
goto :goto_d
.end method