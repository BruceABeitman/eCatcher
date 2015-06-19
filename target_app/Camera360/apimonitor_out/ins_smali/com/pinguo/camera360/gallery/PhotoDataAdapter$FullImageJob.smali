.class  Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageJob;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"
.implements Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
.field private mItem:Lcom/pinguo/camera360/gallery/data/MediaItem;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/data/MediaItem;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageJob;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageJob;->mItem:Lcom/pinguo/camera360/gallery/data/MediaItem;
return-void
.end method
.method public run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageJob;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageJob;->mItem:Lcom/pinguo/camera360/gallery/data/MediaItem;
#calls: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->isTemporaryItem(Lcom/pinguo/camera360/gallery/data/MediaItem;)Z
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$0(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/data/MediaItem;)Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
const-string/jumbo v0, "PhotoDataAdapter"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, " FullImageJob:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageJob;->mItem:Lcom/pinguo/camera360/gallery/data/MediaItem;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageJob;->mItem:Lcom/pinguo/camera360/gallery/data/MediaItem;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaItem;->requestLargeImage()Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
move-result-object v0
invoke-interface {v0, p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;->run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/BitmapRegionDecoder;
goto :goto_b
.end method
.method public bridge synthetic run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageJob;->run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
move-result-object v0
return-object v0
.end method