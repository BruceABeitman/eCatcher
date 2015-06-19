.class Lcom/pinguo/camera360/gallery/AlbumSetPage$3;
.super Lcom/pinguo/camera360/gallery/ui/SlotView$SimpleListener;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/AlbumSetPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/AlbumSetPage;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$3;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$3;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;

    #calls: Lcom/pinguo/camera360/gallery/AlbumSetPage;->onDown(I)V
    invoke-static {v0, p1}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$10(Lcom/pinguo/camera360/gallery/AlbumSetPage;I)V

    return-void
.end method

.method public onLongTap(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$3;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->onLongTap(I)V

    return-void
.end method

.method public onSingleTapUp(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$3;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->onSingleTapUp(I)V

    return-void
.end method

.method public onUp(Z)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$3;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;

    #calls: Lcom/pinguo/camera360/gallery/AlbumSetPage;->onUp(Z)V
    invoke-static {v0, p1}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$11(Lcom/pinguo/camera360/gallery/AlbumSetPage;Z)V

    return-void
.end method
