.class Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$5;
.super Ljava/lang/Object;
.source "DndEffectSelectAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->view(II)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$5;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$5;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;

    #getter for: Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mGridView:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->access$0(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->stopEditMode()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$5;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->updateOriData()V

    return-void
.end method
