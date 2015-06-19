.class  Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$3;
.super Ljava/lang/Object;
.source "DndEffectSelectAdapter.java"
.implements Landroid/view/View$OnLongClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
.method constructor <init>(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$3;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onLongClick(Landroid/view/View;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$3; onLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectLayFunction(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$3;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
#getter for: Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mGridView:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
invoke-static {v0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->access$0(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->onLongClick(Landroid/view/View;)Z
move-result v0
move v2, v0
const-string v1, " - Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$3; onLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method