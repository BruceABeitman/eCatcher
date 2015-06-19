.class Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$3;
.super Ljava/lang/Object;
.source "DndEffectSelectAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$3;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectLayFunction(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$3;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;

    #getter for: Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mGridView:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->access$0(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->onLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
