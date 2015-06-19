.class Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$1;
.super Landroid/os/Handler;
.source "PagedDragDropGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$1;->this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v2, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2c

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$1;->this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    #getter for: Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->access$0(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$1;->this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    #getter for: Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->access$0(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$1;->this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    invoke-virtual {v1, v0, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->scrollTo(II)V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$1;->this$0:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    #getter for: Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->access$1(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method
