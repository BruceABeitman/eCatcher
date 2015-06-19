.class Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;
.super Ljava/lang/Object;
.source "AlbumSetSlotRenderer.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCacheListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;)Lcom/pinguo/camera360/gallery/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V

    return-void
.end method

.method public onSizeChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;)Lcom/pinguo/camera360/gallery/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->setSlotCount(I)Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;)Lcom/pinguo/camera360/gallery/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V

    return-void
.end method
