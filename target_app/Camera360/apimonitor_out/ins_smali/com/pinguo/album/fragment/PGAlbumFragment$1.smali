.class  Lcom/pinguo/album/fragment/PGAlbumFragment$1;
.super Ljava/lang/Object;
.source "PGAlbumFragment.java"
.implements Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
.method constructor <init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$1;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onDownloadFailed()V
.registers 3
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$1;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLPullToRefreshView;
move-result-object v0
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$1;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLPullToRefreshView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->isRefreshing()Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$1;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
const v1, 0x7f08032a
invoke-virtual {v0, v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->showShortToast(I)V
:cond_1c
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$1;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLPullToRefreshView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->onRefreshComplete()V
:cond_25
return-void
.end method
.method public onDownloadFinished()V
.registers 3
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$1;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLPullToRefreshView;
move-result-object v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$1;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLPullToRefreshView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->setEnablePullEnd(Z)V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$1;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLPullToRefreshView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->onRefreshComplete()V
:cond_1b
return-void
.end method