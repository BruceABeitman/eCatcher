.class  Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"
.implements Ljava/util/concurrent/Callable;
.field  mUpdateInfo:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->mUpdateInfo:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;
return-void
.end method
.method public bridge synthetic call()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->call()Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method public call()Ljava/lang/Void;
.registers 9
iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->mUpdateInfo:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;
iget-object v5, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
iget-wide v6, v3, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->version:J
#setter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSourceVersion:J
invoke-static {v5, v6, v7}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$12(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;J)V
iget v5, v3, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->size:I
iget-object v6, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I
invoke-static {v6}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$11(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I
move-result v6
if-eq v5, v6, :cond_4c
iget-object v5, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
iget v6, v3, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->size:I
#setter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I
invoke-static {v5, v6}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$13(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;I)V
iget-object v5, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentEnd:I
invoke-static {v5}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$7(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I
move-result v5
iget-object v6, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I
invoke-static {v6}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$11(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I
move-result v6
if-le v5, v6, :cond_33
iget-object v5, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
iget-object v6, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I
invoke-static {v6}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$11(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I
move-result v6
#setter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentEnd:I
invoke-static {v5, v6}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$14(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;I)V
:cond_33
iget-object v5, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveEnd:I
invoke-static {v5}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$15(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I
move-result v5
iget-object v6, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I
invoke-static {v6}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$11(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I
move-result v6
if-le v5, v6, :cond_4c
iget-object v5, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
iget-object v6, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I
invoke-static {v6}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$11(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I
move-result v6
#setter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveEnd:I
invoke-static {v5, v6}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$16(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;I)V
:cond_4c
iget-object v5, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
iget v6, v3, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->indexHint:I
#setter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I
invoke-static {v5, v6}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$17(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;I)V
iget-object v5, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#calls: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateSlidingWindow()V
invoke-static {v5}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$18(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)V
iget-object v5, v3, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;
if-eqz v5, :cond_80
iget v5, v3, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->contentStart:I
iget-object v6, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentStart:I
invoke-static {v6}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$6(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I
move-result v6
invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I
move-result v4
iget v5, v3, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->contentStart:I
iget-object v6, v3, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v6
add-int/2addr v5, v6
iget-object v6, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentEnd:I
invoke-static {v6}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$7(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I
move-result v6
invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I
move-result v1
rem-int/lit8 v0, v4, 0x20
move v2, v4
:goto_7e
if-lt v2, v1, :cond_96
:cond_80
iget-object v5, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#calls: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateImageCache()V
invoke-static {v5}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$19(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)V
iget-object v5, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#calls: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateTileProvider()V
invoke-static {v5}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$20(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)V
iget-object v5, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#calls: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateImageRequests()V
invoke-static {v5}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$21(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)V
iget-object v5, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#calls: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->fireDataChange()V
invoke-static {v5}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$22(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)V
const/4 v5, 0x0
return-object v5
:cond_96
iget-object v5, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;
invoke-static {v5}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$8(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)[Lcom/pinguo/camera360/gallery/data/MediaItem;
move-result-object v6
iget-object v5, v3, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;
iget v7, v3, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->contentStart:I
sub-int v7, v2, v7
invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/gallery/data/MediaItem;
aput-object v5, v6, v0
add-int/lit8 v0, v0, 0x1
const/16 v5, 0x20
if-ne v0, v5, :cond_b1
const/4 v0, 0x0
:cond_b1
add-int/lit8 v2, v2, 0x1
goto :goto_7e
.end method