.class  Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$3;
.super Ljava/lang/Object;
.source "DndPagerdCameraModeAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
.method constructor <init>(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$3;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$3;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
#getter for: Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mGridview:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
invoke-static {v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->access$2(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->stopEditMode()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$3;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->updateOriData()V
const-string v1, " - Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method