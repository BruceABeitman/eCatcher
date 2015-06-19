.class  Lcom/pinguo/album/fragment/PGFullImageFragment$3;
.super Ljava/lang/Object;
.source "PGFullImageFragment.java"
.implements Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
.method constructor <init>(Lcom/pinguo/album/fragment/PGFullImageFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$3;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onLoadingFinished(Z)V
.registers 5
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$3;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mModel:Lcom/pinguo/album/fragment/PGFullImageFragment$Model;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$15(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/album/fragment/PGFullImageFragment$Model;
move-result-object v1
invoke-interface {v1}, Lcom/pinguo/album/fragment/PGFullImageFragment$Model;->isEmpty()Z
move-result v1
if-nez v1, :cond_1f
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$3;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mModel:Lcom/pinguo/album/fragment/PGFullImageFragment$Model;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$15(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/album/fragment/PGFullImageFragment$Model;
move-result-object v1
const/4 v2, 0x0
invoke-interface {v1, v2}, Lcom/pinguo/album/fragment/PGFullImageFragment$Model;->getMediaItem(I)Lcom/pinguo/album/data/MediaItem;
move-result-object v0
if-eqz v0, :cond_1e
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$3;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#calls: Lcom/pinguo/album/fragment/PGFullImageFragment;->updateCurrentPhoto(Lcom/pinguo/album/data/MediaItem;)V
invoke-static {v1, v0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$9(Lcom/pinguo/album/fragment/PGFullImageFragment;Lcom/pinguo/album/data/MediaItem;)V
:goto_1e
:cond_1e
return-void
:cond_1f
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$3;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mIsActive:Z
invoke-static {v1}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$16(Lcom/pinguo/album/fragment/PGFullImageFragment;)Z
move-result v1
if-eqz v1, :cond_1e
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$3;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
invoke-virtual {v1}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V
goto :goto_1e
.end method
.method public onLoadingStarted()V
.registers 1
return-void
.end method
.method public onPhotoChanged(ILcom/pinguo/album/data/MediaPath;)V
.registers 9
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$3;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#setter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentIndex:I
invoke-static {v0, p1}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$10(Lcom/pinguo/album/fragment/PGFullImageFragment;I)V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$3;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
invoke-virtual {v0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_e
:goto_d
return-void
:cond_e
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$3;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$3;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mActivity:Lcom/pinguo/album/activities/BaseActivity;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$11(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/album/activities/BaseActivity;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/album/activities/BaseActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0800a1
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
iget-object v5, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$3;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentIndex:I
invoke-static {v5}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$12(Lcom/pinguo/album/fragment/PGFullImageFragment;)I
move-result v5
add-int/lit8 v5, v5, 0x1
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x1
iget-object v5, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$3;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mTotalCount:I
invoke-static {v5}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$13(Lcom/pinguo/album/fragment/PGFullImageFragment;)I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
#calls: Lcom/pinguo/album/fragment/PGFullImageFragment;->updateActionBarMessage(Ljava/lang/String;)V
invoke-static {v0, v1}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$14(Lcom/pinguo/album/fragment/PGFullImageFragment;Ljava/lang/String;)V
goto :goto_d
.end method