.class  Lcom/pinguo/album/data/source/LocalAlbumSet$AlbumsLoader;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"
.implements Lcom/pinguo/album/AlbumThreadPool$Job;
.field final synthetic this$0:Lcom/pinguo/album/data/source/LocalAlbumSet;
.method private constructor <init>(Lcom/pinguo/album/data/source/LocalAlbumSet;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/data/source/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/pinguo/album/data/source/LocalAlbumSet;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/album/data/source/LocalAlbumSet;Lcom/pinguo/album/data/source/LocalAlbumSet$AlbumsLoader;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/data/source/LocalAlbumSet$AlbumsLoader;-><init>(Lcom/pinguo/album/data/source/LocalAlbumSet;)V
return-void
.end method
.method public bridge synthetic run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/album/data/source/LocalAlbumSet$AlbumsLoader;->run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method
.method public run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Ljava/util/ArrayList;
.registers 16
const/4 v9, -0x1
iget-object v8, p0, Lcom/pinguo/album/data/source/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/pinguo/album/data/source/LocalAlbumSet;
#calls: Lcom/pinguo/album/data/source/LocalAlbumSet;->loadBucketEntries(Lcom/pinguo/album/AlbumThreadPool$JobContext;)[Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;
invoke-static {v8, p1}, Lcom/pinguo/album/data/source/LocalAlbumSet;->access$0(Lcom/pinguo/album/data/source/LocalAlbumSet;Lcom/pinguo/album/AlbumThreadPool$JobContext;)[Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;
move-result-object v3
invoke-interface {p1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z
move-result v8
if-eqz v8, :cond_f
const/4 v1, 0x0
:cond_e
return-object v1
:cond_f
const/4 v6, 0x0
sget v8, Lcom/pinguo/album/data/MediaSetUtils;->CAMERA_BUCKET_ID:I
#calls: Lcom/pinguo/album/data/source/LocalAlbumSet;->findBucket([Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;I)I
invoke-static {v3, v8}, Lcom/pinguo/album/data/source/LocalAlbumSet;->access$1([Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;I)I
move-result v5
if-eq v5, v9, :cond_1e
add-int/lit8 v7, v6, 0x1
#calls: Lcom/pinguo/album/data/source/LocalAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V
invoke-static {v3, v6, v5}, Lcom/pinguo/album/data/source/LocalAlbumSet;->access$2([Ljava/lang/Object;II)V
move v6, v7
:cond_1e
sget v8, Lcom/pinguo/album/data/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I
#calls: Lcom/pinguo/album/data/source/LocalAlbumSet;->findBucket([Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;I)I
invoke-static {v3, v8}, Lcom/pinguo/album/data/source/LocalAlbumSet;->access$1([Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;I)I
move-result v5
if-eq v5, v9, :cond_2c
add-int/lit8 v7, v6, 0x1
#calls: Lcom/pinguo/album/data/source/LocalAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V
invoke-static {v3, v6, v5}, Lcom/pinguo/album/data/source/LocalAlbumSet;->access$2([Ljava/lang/Object;II)V
move v6, v7
:cond_2c
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v8, p0, Lcom/pinguo/album/data/source/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/pinguo/album/data/source/LocalAlbumSet;
#getter for: Lcom/pinguo/album/data/source/LocalAlbumSet;->mApplication:Lcom/pinguo/album/PGAlbumApp;
invoke-static {v8}, Lcom/pinguo/album/data/source/LocalAlbumSet;->access$3(Lcom/pinguo/album/data/source/LocalAlbumSet;)Lcom/pinguo/album/PGAlbumApp;
move-result-object v8
invoke-interface {v8}, Lcom/pinguo/album/PGAlbumApp;->getAlbumDataManager()Lcom/pinguo/album/data/AlbumDataManager;
move-result-object v2
array-length v9, v3
const/4 v8, 0x0
:goto_3d
if-ge v8, v9, :cond_e
aget-object v4, v3, v8
iget-object v10, p0, Lcom/pinguo/album/data/source/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/pinguo/album/data/source/LocalAlbumSet;
iget-object v11, p0, Lcom/pinguo/album/data/source/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/pinguo/album/data/source/LocalAlbumSet;
#getter for: Lcom/pinguo/album/data/source/LocalAlbumSet;->mType:I
invoke-static {v11}, Lcom/pinguo/album/data/source/LocalAlbumSet;->access$4(Lcom/pinguo/album/data/source/LocalAlbumSet;)I
move-result v11
iget v12, v4, Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;->bucketId:I
invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v12
iget-object v13, v4, Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;->bucketName:Ljava/lang/String;
#calls: Lcom/pinguo/album/data/source/LocalAlbumSet;->getLocalAlbum(Lcom/pinguo/album/data/AlbumDataManager;ILjava/lang/String;Ljava/lang/String;)Lcom/pinguo/album/data/MediaSet;
invoke-static {v10, v2, v11, v12, v13}, Lcom/pinguo/album/data/source/LocalAlbumSet;->access$5(Lcom/pinguo/album/data/source/LocalAlbumSet;Lcom/pinguo/album/data/AlbumDataManager;ILjava/lang/String;Ljava/lang/String;)Lcom/pinguo/album/data/MediaSet;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v8, v8, 0x1
goto :goto_3d
.end method