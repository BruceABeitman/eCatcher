.class  Lcom/pinguo/album/fragment/PGAlbumFragment$9;
.super Ljava/lang/Object;
.source "PGAlbumFragment.java"
.implements Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
.method constructor <init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$9;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getDeletePaths()Ljava/util/List;
.registers 2
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
:goto_8
:cond_8
return-void
:cond_9
if-eqz p1, :cond_8
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$9;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
iget-object v0, v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;
invoke-virtual {v0}, Lcom/pinguo/album/selectors/PhotoSelector;->leaveSelectionMode()V
goto :goto_8
.end method