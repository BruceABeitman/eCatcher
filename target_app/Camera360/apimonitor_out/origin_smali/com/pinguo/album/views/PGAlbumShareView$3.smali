.class Lcom/pinguo/album/views/PGAlbumShareView$3;
.super Ljava/lang/Object;
.source "PGAlbumShareView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/views/PGAlbumShareView;->show(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/views/PGAlbumShareView;


# direct methods
.method constructor <init>(Lcom/pinguo/album/views/PGAlbumShareView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/views/PGAlbumShareView$3;->this$0:Lcom/pinguo/album/views/PGAlbumShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView$3;->this$0:Lcom/pinguo/album/views/PGAlbumShareView;

    #getter for: Lcom/pinguo/album/views/PGAlbumShareView;->mListener:Lcom/pinguo/album/views/PGAlbumShareView$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/pinguo/album/views/PGAlbumShareView;->access$2(Lcom/pinguo/album/views/PGAlbumShareView;)Lcom/pinguo/album/views/PGAlbumShareView$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView$3;->this$0:Lcom/pinguo/album/views/PGAlbumShareView;

    #getter for: Lcom/pinguo/album/views/PGAlbumShareView;->mListener:Lcom/pinguo/album/views/PGAlbumShareView$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/pinguo/album/views/PGAlbumShareView;->access$2(Lcom/pinguo/album/views/PGAlbumShareView;)Lcom/pinguo/album/views/PGAlbumShareView$OnMenuItemClickListener;

    move-result-object v1

    iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView$3;->this$0:Lcom/pinguo/album/views/PGAlbumShareView;

    #getter for: Lcom/pinguo/album/views/PGAlbumShareView;->mWebShareItems:Ljava/util/List;
    invoke-static {v0}, Lcom/pinguo/album/views/PGAlbumShareView;->access$4(Lcom/pinguo/album/views/PGAlbumShareView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/views/ShareItem;

    invoke-interface {v1, v0}, Lcom/pinguo/album/views/PGAlbumShareView$OnMenuItemClickListener;->onMenuItemClick(Lcom/pinguo/album/views/ShareItem;)V

    :cond_1d
    iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView$3;->this$0:Lcom/pinguo/album/views/PGAlbumShareView;

    #getter for: Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/pinguo/album/views/PGAlbumShareView;->access$1(Lcom/pinguo/album/views/PGAlbumShareView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
