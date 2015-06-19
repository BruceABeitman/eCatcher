.class  Lcom/pinguo/album/fragment/PGAlbumFragment$12;
.super Ljava/lang/Object;
.source "PGAlbumFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
.method constructor <init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$12;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$12;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$12;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/cloud/CloudServiceManager;->startCloudUpload(Landroid/content/Context;)V
:cond_11
return-void
.end method