.class  Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2$1;
.super Ljava/lang/Object;
.source "DragDropGrid.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;
.field private final synthetic val$onLeftEdge:Z
.field private final synthetic val$onRightEdge:Z
.method constructor <init>(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;ZZ)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2$1;->this$1:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;
iput-boolean p2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2$1;->val$onRightEdge:Z
iput-boolean p3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2$1;->val$onLeftEdge:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2$1;->this$1:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;
#getter for: Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;->this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;
invoke-static {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;->access$0(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;
move-result-object v0
iget-boolean v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2$1;->val$onRightEdge:Z
iget-boolean v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2$1;->val$onLeftEdge:Z
#calls: Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->scroll(ZZ)V
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->access$3(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;ZZ)V
return-void
.end method