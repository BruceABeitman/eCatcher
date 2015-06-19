.class  Lcom/pinguo/album/fragment/PGAlbumFragment$4;
.super Ljava/lang/Object;
.source "PGAlbumFragment.java"
.implements Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
.method constructor <init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$4;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public cancelWhenRefreshPull()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public onCancelRefresh()V
.registers 1
return-void
.end method
.method public onPullDownToRefresh()V
.registers 3
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$4;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsMetadataDownloding:Z
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$13(Lcom/pinguo/album/fragment/PGAlbumFragment;)Z
move-result v0
if-nez v0, :cond_25
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$4;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_26
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$4;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
const v1, 0x7f080324
invoke-virtual {v0, v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->showShortToast(I)V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$4;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLPullToRefreshView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->onRefreshComplete()V
:goto_25
:cond_25
return-void
:cond_26
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$4;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-static {}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$14()I
move-result v1
#setter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mCloudAlbumUpdateState:I
invoke-static {v0, v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$15(Lcom/pinguo/album/fragment/PGAlbumFragment;I)V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$4;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#calls: Lcom/pinguo/album/fragment/PGAlbumFragment;->startDownIncrementData()V
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$3(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
goto :goto_25
.end method
.method public onPullUpToRefresh()V
.registers 3
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$4;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsMetadataDownloding:Z
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$13(Lcom/pinguo/album/fragment/PGAlbumFragment;)Z
move-result v0
if-nez v0, :cond_25
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$4;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_26
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$4;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
const v1, 0x7f080324
invoke-virtual {v0, v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->showShortToast(I)V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$4;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLPullToRefreshView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->onRefreshComplete()V
:goto_25
:cond_25
return-void
:cond_26
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$4;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-static {}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$14()I
move-result v1
#setter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mCloudAlbumUpdateState:I
invoke-static {v0, v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$15(Lcom/pinguo/album/fragment/PGAlbumFragment;I)V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$4;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#calls: Lcom/pinguo/album/fragment/PGAlbumFragment;->startDownIncrementData()V
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$3(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
goto :goto_25
.end method