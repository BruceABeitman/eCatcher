.class Lcom/pinguo/camera360/gallery/AlbumPage$4;
.super Lcom/pinguo/camera360/gallery/ui/SlotView$SimpleListener;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/AlbumPage;->initializeViews()V
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

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$4;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$4;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #calls: Lcom/pinguo/camera360/gallery/AlbumPage;->onDown(I)V
    invoke-static {v0, p1}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$16(Lcom/pinguo/camera360/gallery/AlbumPage;I)V

    return-void
.end method

.method public onLongTap(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$4;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/AlbumPage;->onLongTap(I)V

    return-void
.end method

.method public onSingleTagTapUp(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$4;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #calls: Lcom/pinguo/camera360/gallery/AlbumPage;->onSingleTagTapUp(I)V
    invoke-static {v0, p1}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$19(Lcom/pinguo/camera360/gallery/AlbumPage;I)V

    return-void
.end method

.method public onSingleTapUp(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$4;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #calls: Lcom/pinguo/camera360/gallery/AlbumPage;->onSingleTapUp(I)V
    invoke-static {v0, p1}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$18(Lcom/pinguo/camera360/gallery/AlbumPage;I)V

    return-void
.end method

.method public onUp(Z)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$4;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #calls: Lcom/pinguo/camera360/gallery/AlbumPage;->onUp(Z)V
    invoke-static {v0, p1}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$17(Lcom/pinguo/camera360/gallery/AlbumPage;Z)V

    return-void
.end method
