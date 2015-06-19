.class  Lcom/pinguo/camera360/gallery/AlbumSetPage$4;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
.field private final synthetic val$resultCode:I
.method constructor <init>(Lcom/pinguo/camera360/gallery/AlbumSetPage;I)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$4;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
iput p2, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$4;->val$resultCode:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
const/4 v3, 0x2
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$4;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
iget-object v1, v1, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->lockRenderThread()V
:try_start_c
iget v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$4;->val$resultCode:I
if-nez v1, :cond_16
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$4;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
const/4 v2, 0x1
#setter for: Lcom/pinguo/camera360/gallery/AlbumSetPage;->mInitialSynced:Z
invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$12(Lcom/pinguo/camera360/gallery/AlbumSetPage;Z)V
:cond_16
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$4;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
const/4 v2, 0x2
#calls: Lcom/pinguo/camera360/gallery/AlbumSetPage;->clearLoadingBit(I)V
invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$8(Lcom/pinguo/camera360/gallery/AlbumSetPage;I)V
iget v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$4;->val$resultCode:I
if-ne v1, v3, :cond_31
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$4;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetPage;->mIsActive:Z
invoke-static {v1}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$13(Lcom/pinguo/camera360/gallery/AlbumSetPage;)Z
move-result v1
if-eqz v1, :cond_31
const-string/jumbo v1, "AlbumSetPage"
const-string/jumbo v2, "failed to load album set"
invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:try_end_31
.catchall {:try_start_c .. :try_end_31} :catchall_35
:cond_31
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V
return-void
:catchall_35
move-exception v1
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V
throw v1
.end method