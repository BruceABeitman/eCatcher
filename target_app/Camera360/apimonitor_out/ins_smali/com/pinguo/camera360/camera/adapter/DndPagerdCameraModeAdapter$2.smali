.class  Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$2;
.super Ljava/lang/Object;
.source "DndPagerdCameraModeAdapter.java"
.implements Landroid/view/View$OnLongClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
.method constructor <init>(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$2;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onLongClick(Landroid/view/View;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$2; onLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraModeLayFunction(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$2;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
#getter for: Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mGridview:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
invoke-static {v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->access$2(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->onLongClick(Landroid/view/View;)Z
move-result v0
move v2, v0
const-string v1, " - Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$2; onLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method