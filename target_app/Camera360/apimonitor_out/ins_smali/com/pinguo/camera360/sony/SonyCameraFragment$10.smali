.class  Lcom/pinguo/camera360/sony/SonyCameraFragment$10;
.super Ljava/lang/Object;
.source "SonyCameraFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$10;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/sony/SonyCameraFragment$10; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$10;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
const-string/jumbo v1, "out"
const-string/jumbo v2, "1shot"
#calls: Lcom/pinguo/camera360/sony/SonyCameraFragment;->actZoom(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$16(Lcom/pinguo/camera360/sony/SonyCameraFragment;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/sony/SonyCameraFragment$10; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method