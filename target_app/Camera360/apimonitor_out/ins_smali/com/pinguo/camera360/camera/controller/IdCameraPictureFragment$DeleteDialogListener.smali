.class  Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$DeleteDialogListener;
.super Ljava/lang/Object;
.source "IdCameraPictureFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
.method private constructor <init>(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$DeleteDialogListener;->this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$DeleteDialogListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$DeleteDialogListener;-><init>(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 2
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$DeleteDialogListener; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, -0x1
if-ne p2, v0, :cond_8
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$DeleteDialogListener;->this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
#calls: Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->deletePicture()V
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->access$7(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)V
:cond_8
const-string v1, " - Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$DeleteDialogListener; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method