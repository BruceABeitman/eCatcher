.class  Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataLoadingListener;
.super Ljava/lang/Object;
.source "PGAlbumFragment.java"
.implements Lcom/pinguo/album/data/loader/DataLoadingListener;
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
.method private constructor <init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataLoadingListener;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/album/fragment/PGAlbumFragment;Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataLoadingListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataLoadingListener;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
return-void
.end method
.method public onLoadingFinished(Z)V
.registers 4
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataLoadingListener;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
const/4 v1, 0x1
#calls: Lcom/pinguo/album/fragment/PGAlbumFragment;->clearLoadingBit(I)V
invoke-static {v0, v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$17(Lcom/pinguo/album/fragment/PGAlbumFragment;I)V
return-void
.end method
.method public onLoadingStarted()V
.registers 3
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataLoadingListener;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
const/4 v1, 0x1
#calls: Lcom/pinguo/album/fragment/PGAlbumFragment;->setLoadingBit(I)V
invoke-static {v0, v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$16(Lcom/pinguo/album/fragment/PGAlbumFragment;I)V
return-void
.end method