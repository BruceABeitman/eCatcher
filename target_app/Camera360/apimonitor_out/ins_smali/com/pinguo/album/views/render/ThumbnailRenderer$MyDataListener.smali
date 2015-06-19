.class  Lcom/pinguo/album/views/render/ThumbnailRenderer$MyDataListener;
.super Ljava/lang/Object;
.source "ThumbnailRenderer.java"
.implements Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
.field final synthetic this$0:Lcom/pinguo/album/views/render/ThumbnailRenderer;
.method private constructor <init>(Lcom/pinguo/album/views/render/ThumbnailRenderer;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer$MyDataListener;->this$0:Lcom/pinguo/album/views/render/ThumbnailRenderer;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/album/views/render/ThumbnailRenderer;Lcom/pinguo/album/views/render/ThumbnailRenderer$MyDataListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/views/render/ThumbnailRenderer$MyDataListener;-><init>(Lcom/pinguo/album/views/render/ThumbnailRenderer;)V
return-void
.end method
.method public onContentChanged()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer$MyDataListener;->this$0:Lcom/pinguo/album/views/render/ThumbnailRenderer;
#getter for: Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
invoke-static {v0}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->access$0(Lcom/pinguo/album/views/render/ThumbnailRenderer;)Lcom/pinguo/album/views/ThumbnailView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/views/ThumbnailView;->invalidate()V
return-void
.end method
.method public onSizeChanged(ILjava/util/ArrayList;)V
.registers 6
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer$MyDataListener;->this$0:Lcom/pinguo/album/views/render/ThumbnailRenderer;
#getter for: Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
invoke-static {v0}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->access$0(Lcom/pinguo/album/views/render/ThumbnailRenderer;)Lcom/pinguo/album/views/ThumbnailView;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/pinguo/album/views/ThumbnailView;->setSortTags(Ljava/util/ArrayList;)V
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer$MyDataListener;->this$0:Lcom/pinguo/album/views/render/ThumbnailRenderer;
#getter for: Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
invoke-static {v0}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->access$0(Lcom/pinguo/album/views/render/ThumbnailRenderer;)Lcom/pinguo/album/views/ThumbnailView;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/album/views/ThumbnailView;->setThumbnailCount(I)V
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer$MyDataListener;->this$0:Lcom/pinguo/album/views/render/ThumbnailRenderer;
#getter for: Lcom/pinguo/album/views/render/ThumbnailRenderer;->mMediaSelector:Lcom/pinguo/album/selectors/PhotoSelector;
invoke-static {v0}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->access$1(Lcom/pinguo/album/views/render/ThumbnailRenderer;)Lcom/pinguo/album/selectors/PhotoSelector;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer$MyDataListener;->this$0:Lcom/pinguo/album/views/render/ThumbnailRenderer;
#getter for: Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
invoke-static {v1}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->access$0(Lcom/pinguo/album/views/render/ThumbnailRenderer;)Lcom/pinguo/album/views/ThumbnailView;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/album/views/ThumbnailView;->getSortTags()Ljava/util/ArrayList;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer$MyDataListener;->this$0:Lcom/pinguo/album/views/render/ThumbnailRenderer;
#getter for: Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
invoke-static {v2}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->access$0(Lcom/pinguo/album/views/render/ThumbnailRenderer;)Lcom/pinguo/album/views/ThumbnailView;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/album/views/ThumbnailView;->getThumbnailPos()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/selectors/PhotoSelector;->setTagsAndSlotPos(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
if-nez p1, :cond_3a
iget-object v0, p0, Lcom/pinguo/album/views/render/ThumbnailRenderer$MyDataListener;->this$0:Lcom/pinguo/album/views/render/ThumbnailRenderer;
#getter for: Lcom/pinguo/album/views/render/ThumbnailRenderer;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
invoke-static {v0}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->access$0(Lcom/pinguo/album/views/render/ThumbnailRenderer;)Lcom/pinguo/album/views/ThumbnailView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/views/ThumbnailView;->invalidate()V
:cond_3a
return-void
.end method