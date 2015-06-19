.class Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1$1;
.super Ljava/lang/Object;
.source "DndPagerdCameraModeAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1$1;->this$1:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v1, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    iget-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraModeLayUninstall(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1$1;->this$1:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;

    #getter for: Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->access$0(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;)Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->deleteItem(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1$1;->this$1:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;

    #getter for: Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->access$0(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;)Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mGridview:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->access$2(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->stopEditMode()V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1$1;->this$1:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;

    #getter for: Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->access$0(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;)Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->deleteItem(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1$1;->this$1:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;

    #getter for: Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->access$0(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;)Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mDeleteList:Ljava/util/List;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->access$3(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1$1;->this$1:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;

    #getter for: Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->access$0(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;)Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mGridview:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->access$2(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1$1;->this$1:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;

    #getter for: Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->access$0(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;)Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mGridview:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->access$2(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->startEditMode()V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v1

    new-instance v2, Lcom/pinguo/camera360/camera/event/UpdateModeIndicatorCountEvent;

    invoke-direct {v2}, Lcom/pinguo/camera360/camera/event/UpdateModeIndicatorCountEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    return-void
.end method
