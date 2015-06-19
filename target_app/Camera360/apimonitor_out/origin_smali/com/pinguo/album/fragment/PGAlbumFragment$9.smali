.class Lcom/pinguo/album/fragment/PGAlbumFragment$9;
.super Ljava/lang/Object;
.source "PGAlbumFragment.java"

# interfaces
.implements Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/fragment/PGAlbumFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$9;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeletePaths()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/album/data/MediaPath;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$9;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;

    iget-object v0, v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    invoke-virtual {v0}, Lcom/pinguo/album/selectors/PhotoSelector;->getSelectedPaths()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onConfirmDialogDismissed(Z)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$9;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;

    invoke-virtual {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$9;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;

    iget-object v0, v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    invoke-virtual {v0}, Lcom/pinguo/album/selectors/PhotoSelector;->leaveSelectionMode()V

    goto :goto_8
.end method
