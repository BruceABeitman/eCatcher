.class  Lcom/pinguo/camera360/camera/view/TimerCameraView$2;
.super Ljava/lang/Object;
.source "TimerCameraView.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;
.method constructor <init>(Lcom/pinguo/camera360/camera/view/TimerCameraView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$2;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/view/TimerCameraView$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v3, 0x8
const-string/jumbo v0, "Test"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "onClick, Count down started?"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$2;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;
#getter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->mIsCountStarted:Z
invoke-static {v2}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$4(Lcom/pinguo/camera360/camera/view/TimerCameraView;)Z
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$2;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;
#getter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->mIsCountStarted:Z
invoke-static {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$4(Lcom/pinguo/camera360/camera/view/TimerCameraView;)Z
move-result v0
if-eqz v0, :cond_27
:goto_26
:cond_26
const-string v1, " - Lcom/pinguo/camera360/camera/view/TimerCameraView$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_27
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$2;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;
#getter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrIndex:I
invoke-static {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$5(Lcom/pinguo/camera360/camera/view/TimerCameraView;)I
move-result v1
add-int/lit8 v1, v1, 0x1
#setter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrIndex:I
invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$6(Lcom/pinguo/camera360/camera/view/TimerCameraView;I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$2;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;
#getter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrIndex:I
invoke-static {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$5(Lcom/pinguo/camera360/camera/view/TimerCameraView;)I
move-result v1
invoke-static {}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$7()[I
move-result-object v2
array-length v2, v2
rem-int/2addr v1, v2
#setter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrIndex:I
invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$6(Lcom/pinguo/camera360/camera/view/TimerCameraView;I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$2;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->reset()V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-static {}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$7()[I
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$2;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;
#getter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrIndex:I
invoke-static {v2}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$5(Lcom/pinguo/camera360/camera/view/TimerCameraView;)I
move-result v2
aget v1, v1, v2
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setTimerValueLimit(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$2;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;
#calls: Lcom/pinguo/camera360/camera/view/TimerCameraView;->needShowGuide()Z
invoke-static {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$8(Lcom/pinguo/camera360/camera/view/TimerCameraView;)Z
move-result v0
if-eqz v0, :cond_26
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setClickTimerTipsVisibility(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$2;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;
#getter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->mGuideTv:Landroid/widget/TextView;
invoke-static {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$9(Lcom/pinguo/camera360/camera/view/TimerCameraView;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$2;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;
const v1, 0x7f0a0289
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
goto :goto_26
.end method