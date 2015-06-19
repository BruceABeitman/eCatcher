.class  Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$5;
.super Ljava/lang/Object;
.source "DndEffectSelectAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
.method constructor <init>(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$5;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$5; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$5;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
#getter for: Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mGridView:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
invoke-static {v0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->access$0(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->stopEditMode()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$5;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->updateOriData()V
const-string v1, " - Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$5; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method