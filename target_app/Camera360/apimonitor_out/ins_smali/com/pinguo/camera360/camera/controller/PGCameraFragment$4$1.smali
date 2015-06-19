.class  Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4$1;
.super Ljava/lang/Object;
.source "PGCameraFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4$1;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCameraId()I
move-result v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4$1;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;
#getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;->access$0(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-string/jumbo v2, "adjust_preview"
invoke-static {v1, v2, v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;I)V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method