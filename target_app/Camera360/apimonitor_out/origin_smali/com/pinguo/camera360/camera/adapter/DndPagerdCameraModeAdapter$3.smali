.class Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$3;
.super Ljava/lang/Object;
.source "DndPagerdCameraModeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->view(II)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$3;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$3;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    #getter for: Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mGridview:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->access$2(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->stopEditMode()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$3;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->updateOriData()V

    return-void
.end method
