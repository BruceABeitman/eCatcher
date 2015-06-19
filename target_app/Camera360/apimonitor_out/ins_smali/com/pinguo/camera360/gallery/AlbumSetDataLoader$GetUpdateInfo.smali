.class  Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$GetUpdateInfo;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"
.implements Ljava/util/concurrent/Callable;
.field private final mVersion:J
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;J)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p2, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$GetUpdateInfo;->mVersion:J
return-void
.end method
.method private getInvalidIndex(J)I
.registers 9
iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSetVersion:[J
invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$1(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)[J
move-result-object v3
array-length v1, v3
iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentStart:I
invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$2(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I
move-result v0
iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentEnd:I
invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$3(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I
move-result v2
:goto_13
if-lt v0, v2, :cond_17
const/4 v0, -0x1
:cond_16
return v0
:cond_17
rem-int v4, v0, v1
aget-wide v4, v3, v4
cmp-long v4, v4, p1
if-nez v4, :cond_16
add-int/lit8 v0, v0, 0x1
goto :goto_13
.end method
.method public call()Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;
.registers 8
const/4 v2, 0x0
iget-wide v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$GetUpdateInfo;->mVersion:J
invoke-direct {p0, v3, v4}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$GetUpdateInfo;->getInvalidIndex(J)I
move-result v0
const/4 v3, -0x1
if-ne v0, v3, :cond_18
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSourceVersion:J
invoke-static {v3}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$4(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)J
move-result-wide v3
iget-wide v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$GetUpdateInfo;->mVersion:J
cmp-long v3, v3, v5
if-nez v3, :cond_18
move-object v1, v2
:goto_17
return-object v1
:cond_18
new-instance v1, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;
invoke-direct {v1, v2}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;-><init>(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;)V
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSourceVersion:J
invoke-static {v2}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$4(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)J
move-result-wide v2
iput-wide v2, v1, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->version:J
iput v0, v1, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->index:I
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSize:I
invoke-static {v2}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$5(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I
move-result v2
iput v2, v1, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->size:I
goto :goto_17
.end method
.method public bridge synthetic call()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$GetUpdateInfo;->call()Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;
move-result-object v0
return-object v0
.end method