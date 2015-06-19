.class  Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$2;
.super Ljava/lang/Object;
.source "PagedDragDropGrid.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
.method constructor <init>(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$2;->this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 10
const/4 v4, 0x1
iget-object v5, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$2;->this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
#getter for: Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->gestureScanner:Landroid/view/GestureDetector;
invoke-static {v5}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->access$2(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)Landroid/view/GestureDetector;
move-result-object v5
invoke-virtual {v5, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v3
if-nez v3, :cond_2f
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v5
if-eq v5, v4, :cond_1a
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v5
const/4 v6, 0x3
if-ne v5, v6, :cond_2f
:cond_1a
iget-object v5, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$2;->this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
invoke-virtual {v5}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->getScrollX()I
move-result v2
invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
div-int/lit8 v5, v0, 0x2
add-int/2addr v5, v2
div-int v1, v5, v0
iget-object v5, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$2;->this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
invoke-virtual {v5, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->scrollToPage(I)V
move v3, v4
:cond_2f
return v3
.end method