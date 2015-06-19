.class Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$MyDataModelListener;
.super Ljava/lang/Object;
.source "AlbumSlotRenderer.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataModelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$MyDataModelListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$MyDataModelListener;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;)Lcom/pinguo/camera360/gallery/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V

    return-void
.end method

.method public onSizeChanged(ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;)Lcom/pinguo/camera360/gallery/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->setSortTags(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;)Lcom/pinguo/camera360/gallery/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->setSlotCount(I)Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;)Lcom/pinguo/camera360/gallery/ui/SlotView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->getSortTags()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;)Lcom/pinguo/camera360/gallery/ui/SlotView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->getSlotPos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->setTagsAndSlotPos(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
