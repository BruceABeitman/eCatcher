.class  Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"
.implements Ljava/util/concurrent/Callable;
.field final synthetic this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
.method private constructor <init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;)V
return-void
.end method
.method private needContentReload()Z
.registers 7
const/4 v3, 0x1
iget-object v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentStart:I
invoke-static {v4}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$6(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I
move-result v1
iget-object v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentEnd:I
invoke-static {v4}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$7(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I
move-result v2
:goto_d
if-lt v1, v2, :cond_2f
iget-object v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mData:[Lcom/pinguo/album/data/MediaItem;
invoke-static {v4}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$8(Lcom/pinguo/album/adapters/PhotoDataAdapter;)[Lcom/pinguo/album/data/MediaItem;
move-result-object v4
iget-object v5, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
invoke-static {v5}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$9(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I
move-result v5
rem-int/lit16 v5, v5, 0x100
aget-object v0, v4, v5
if-eqz v0, :cond_2e
invoke-virtual {v0}, Lcom/pinguo/album/data/MediaItem;->getPath()Lcom/pinguo/album/data/MediaPath;
move-result-object v4
iget-object v5, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mItemPath:Lcom/pinguo/album/data/MediaPath;
invoke-static {v5}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$10(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/data/MediaPath;
move-result-object v5
if-ne v4, v5, :cond_2e
const/4 v3, 0x0
:cond_2e
return v3
:cond_2f
iget-object v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mData:[Lcom/pinguo/album/data/MediaItem;
invoke-static {v4}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$8(Lcom/pinguo/album/adapters/PhotoDataAdapter;)[Lcom/pinguo/album/data/MediaItem;
move-result-object v4
rem-int/lit16 v5, v1, 0x100
aget-object v4, v4, v5
if-eqz v4, :cond_2e
add-int/lit8 v1, v1, 0x1
goto :goto_d
.end method
.method public call()Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;
.registers 4
new-instance v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;-><init>(Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;)V
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSourceVersion:J
invoke-static {v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$11(Lcom/pinguo/album/adapters/PhotoDataAdapter;)J
move-result-wide v1
iput-wide v1, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->version:J
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;->needContentReload()Z
move-result v1
iput-boolean v1, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->reloadContent:Z
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mItemPath:Lcom/pinguo/album/data/MediaPath;
invoke-static {v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$10(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/data/MediaPath;
move-result-object v1
iput-object v1, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->target:Lcom/pinguo/album/data/MediaPath;
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
invoke-static {v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$9(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I
move-result v1
iput v1, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->indexHint:I
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentStart:I
invoke-static {v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$6(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I
move-result v1
iput v1, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->contentStart:I
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentEnd:I
invoke-static {v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$7(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I
move-result v1
iput v1, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->contentEnd:I
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
invoke-static {v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$12(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I
move-result v1
iput v1, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->size:I
return-object v0
.end method
.method public bridge synthetic call()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;->call()Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;
move-result-object v0
return-object v0
.end method