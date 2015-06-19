.class Lcom/pinguo/camera360/gallery/AlbumPage$2;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$PositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumPage;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/AlbumPage;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$2;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemIndex(Lcom/pinguo/camera360/gallery/data/Path;)I
    .registers 7

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumPage$2;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$1(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/SlotView;->getVisibleSlotStart()I

    move-result v3

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumPage$2;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$1(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/SlotView;->getVisibleSlotEnd()I

    move-result v0

    move v1, v3

    :goto_15
    if-lt v1, v0, :cond_19

    const/4 v1, -0x1

    :cond_18
    return v1

    :cond_19
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumPage$2;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumDataLoader:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$6(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->get(I)Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getPath()Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/pinguo/camera360/gallery/data/Path;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method

.method public getPosition(I)Landroid/graphics/Rect;
    .registers 9

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage$2;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$1(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/SlotView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/SlotView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumPage$2;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$2(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    move-result-object v4

    iget v4, v4, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingLeft:I

    add-int v2, v3, v4

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage$2;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$1(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/SlotView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/SlotView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumPage$2;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$2(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    move-result-object v4

    iget v4, v4, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingTop:I

    add-int v0, v3, v4

    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, v2, -0x64

    add-int/lit8 v4, v0, -0x64

    add-int/lit8 v5, v2, 0x64

    add-int/lit8 v6, v0, 0x64

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method
