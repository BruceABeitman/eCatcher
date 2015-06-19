.class  Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;
.super Ljava/util/TimerTask;
.source "DragDropGrid.java"
.field final synthetic this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;
.field private final synthetic val$onLeftEdge:Z
.field private final synthetic val$onRightEdge:Z
.method constructor <init>(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;ZZ)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;->this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;
iput-boolean p2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;->val$onRightEdge:Z
iput-boolean p3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;->val$onLeftEdge:Z
invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;->this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;
return-object v0
.end method
.method public run()V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;->this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;
#getter for: Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->wasOnEdgeJustNow:Z
invoke-static {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->access$0(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;)Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;->this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;
const/4 v1, 0x0
#setter for: Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->wasOnEdgeJustNow:Z
invoke-static {v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->access$1(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;Z)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;->this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;
#getter for: Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->edgeTimerHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->access$2(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2$1;
iget-boolean v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;->val$onRightEdge:Z
iget-boolean v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;->val$onLeftEdge:Z
invoke-direct {v1, p0, v2, v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2$1;-><init>(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;ZZ)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_20
return-void
.end method