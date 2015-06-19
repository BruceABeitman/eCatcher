.class  Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4$1;
.super Ljava/lang/Object;
.source "DndEffectSelectAdapter.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$1:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;
.field private final synthetic val$view:Landroid/view/View;
.method constructor <init>(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4$1;->this$1:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;
iput-object p2, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4$1;->val$view:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4$1;->val$view:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v1
check-cast v1, Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectLayFunctionUninstall(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4$1;->this$1:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;
#getter for: Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;->access$0(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
move-result-object v1
#getter for: Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mGridView:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->access$0(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->stopEditMode()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4$1;->this$1:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;
#getter for: Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;->access$0(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->deleteItem(Ljava/lang/Object;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4$1;->this$1:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;
#getter for: Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;->access$0(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
move-result-object v1
#getter for: Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mDeleteList:Ljava/util/List;
invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->access$2(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)Ljava/util/List;
move-result-object v1
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v2
invoke-virtual {v2, v0}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4$1;->this$1:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;
#getter for: Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;->access$0(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
move-result-object v1
#getter for: Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mGridView:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->access$0(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->notifyDataSetChanged()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4$1;->this$1:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;
#getter for: Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;->access$0(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
move-result-object v1
#getter for: Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mGridView:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->access$0(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->startEditMode()V
const-string v1, " - Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method