.class public Lcom/pinguo/album/data/source/LocalAlbumSet;
.super Lcom/pinguo/album/data/MediaSet;
.source "LocalAlbumSet.java"
.implements Lcom/pinguo/album/FutureListener;
.field private static final BUCKET_GROUP_BY:Ljava/lang/String; = "1) GROUP BY 1,(2"
.field private static final BUCKET_ORDER_BY:Ljava/lang/String; = "MAX(datetaken) DESC"
.field private static final EXTERNAL_MEDIA:Ljava/lang/String; = "external"
.field private static final INDEX_BUCKET_ID:I = 0x0
.field private static final INDEX_BUCKET_NAME:I = 0x2
.field private static final INDEX_MEDIA_TYPE:I = 0x1
.field public static final PATH_IMAGE:Ljava/lang/String; = "/local/image/"
.field public static final PATH_VIDEO:Ljava/lang/String; = "/local/video/"
.field private static final PROJECTION_BUCKET:[Ljava/lang/String; = null
.field private static final TAG:Ljava/lang/String; = "LocalAlbumSet"
.field private static final mBaseUri:Landroid/net/Uri;
.field private static final mWatchUriImage:Landroid/net/Uri;
.field private static final mWatchUriVideo:Landroid/net/Uri;
.field private mAlbums:Ljava/util/ArrayList;
.field private final mApplication:Lcom/pinguo/album/PGAlbumApp;
.field private final mHandler:Landroid/os/Handler;
.field private mIsLoading:Z
.field private mLoadBuffer:Ljava/util/ArrayList;
.field private mLoadTask:Lcom/pinguo/album/Future;
.field private final mName:Ljava/lang/String;
.field private final mNotifierImage:Lcom/pinguo/album/data/DataNotifier;
.field private final mNotifierVideo:Lcom/pinguo/album/data/DataNotifier;
.field private final mType:I
.method static constructor <clinit>()V
.registers 3
sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
sput-object v0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;
sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
sput-object v0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mWatchUriImage:Landroid/net/Uri;
sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
sput-object v0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mWatchUriVideo:Landroid/net/Uri;
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string/jumbo v2, "bucket_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string/jumbo v2, "media_type"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string/jumbo v2, "bucket_display_name"
aput-object v2, v0, v1
sput-object v0, Lcom/pinguo/album/data/source/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/PGAlbumApp;)V
.registers 5
invoke-static {}, Lcom/pinguo/album/data/source/LocalAlbumSet;->nextVersionNumber()J
move-result-wide v0
invoke-direct {p0, p1, v0, v1}, Lcom/pinguo/album/data/MediaSet;-><init>(Lcom/pinguo/album/data/MediaPath;J)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;
iput-object p2, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mApplication:Lcom/pinguo/album/PGAlbumApp;
new-instance v0, Landroid/os/Handler;
invoke-interface {p2}, Lcom/pinguo/album/PGAlbumApp;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mHandler:Landroid/os/Handler;
invoke-virtual {p1}, Lcom/pinguo/album/data/MediaPath;->getMediaType()I
move-result v0
iput v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mType:I
new-instance v0, Lcom/pinguo/album/data/DataNotifier;
sget-object v1, Lcom/pinguo/album/data/source/LocalAlbumSet;->mWatchUriImage:Landroid/net/Uri;
invoke-direct {v0, p0, v1, p2}, Lcom/pinguo/album/data/DataNotifier;-><init>(Lcom/pinguo/album/data/MediaSet;Landroid/net/Uri;Lcom/pinguo/album/PGAlbumApp;)V
iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mNotifierImage:Lcom/pinguo/album/data/DataNotifier;
new-instance v0, Lcom/pinguo/album/data/DataNotifier;
sget-object v1, Lcom/pinguo/album/data/source/LocalAlbumSet;->mWatchUriVideo:Landroid/net/Uri;
invoke-direct {v0, p0, v1, p2}, Lcom/pinguo/album/data/DataNotifier;-><init>(Lcom/pinguo/album/data/MediaSet;Landroid/net/Uri;Lcom/pinguo/album/PGAlbumApp;)V
iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mNotifierVideo:Lcom/pinguo/album/data/DataNotifier;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mName:Ljava/lang/String;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/album/data/source/LocalAlbumSet;Lcom/pinguo/album/AlbumThreadPool$JobContext;)[Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/data/source/LocalAlbumSet;->loadBucketEntries(Lcom/pinguo/album/AlbumThreadPool$JobContext;)[Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;
move-result-object v0
return-object v0
.end method
.method static synthetic access$1([Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;I)I
.registers 3
invoke-static {p0, p1}, Lcom/pinguo/album/data/source/LocalAlbumSet;->findBucket([Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;I)I
move-result v0
return v0
.end method
.method static synthetic access$2([Ljava/lang/Object;II)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/pinguo/album/data/source/LocalAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/album/data/source/LocalAlbumSet;)Lcom/pinguo/album/PGAlbumApp;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mApplication:Lcom/pinguo/album/PGAlbumApp;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/album/data/source/LocalAlbumSet;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mType:I
return v0
.end method
.method static synthetic access$5(Lcom/pinguo/album/data/source/LocalAlbumSet;Lcom/pinguo/album/data/AlbumDataManager;ILjava/lang/String;Ljava/lang/String;)Lcom/pinguo/album/data/MediaSet;
.registers 6
invoke-direct {p0, p1, p2, p3, p4}, Lcom/pinguo/album/data/source/LocalAlbumSet;->getLocalAlbum(Lcom/pinguo/album/data/AlbumDataManager;ILjava/lang/String;Ljava/lang/String;)Lcom/pinguo/album/data/MediaSet;
move-result-object v0
return-object v0
.end method
.method private static circularShiftRight([Ljava/lang/Object;II)V
.registers 6
aget-object v1, p0, p2
move v0, p2
:goto_3
if-gt v0, p1, :cond_8
aput-object v1, p0, p1
return-void
:cond_8
add-int/lit8 v2, v0, -0x1
aget-object v2, p0, v2
aput-object v2, p0, v0
add-int/lit8 v0, v0, -0x1
goto :goto_3
.end method
.method private static findBucket([Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;I)I
.registers 5
const/4 v0, 0x0
array-length v1, p0
:goto_2
if-lt v0, v1, :cond_6
const/4 v0, -0x1
:cond_5
return v0
:cond_6
aget-object v2, p0, v0
iget v2, v2, Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;->bucketId:I
if-eq v2, p1, :cond_5
add-int/lit8 v0, v0, 0x1
goto :goto_2
.end method
.method public static getBucketName(Landroid/content/ContentResolver;J)Ljava/lang/String;
.registers 10
sget-object v0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v0
const-string/jumbo v2, "limit"
const-string/jumbo v3, "1"
invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v1
sget-object v2, Lcom/pinguo/album/data/source/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;
const-string/jumbo v3, "bucket_id = ?"
const/4 v0, 0x1
new-array v4, v0, [Ljava/lang/String;
const/4 v0, 0x0
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v5
aput-object v5, v4, v0
const/4 v5, 0x0
move-object v0, p0
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
if-nez v6, :cond_45
const-string/jumbo v0, "LocalAlbumSet"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "query fail: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, ""
:goto_44
return-object v0
:try_start_45
:cond_45
invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-eqz v0, :cond_54
const/4 v0, 0x2
invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
:try_end_4f
.catchall {:try_start_45 .. :try_end_4f} :catchall_58
move-result-object v0
:goto_50
invoke-interface {v6}, Landroid/database/Cursor;->close()V
goto :goto_44
:try_start_54
:cond_54
const-string/jumbo v0, ""
:try_end_57
.catchall {:try_start_54 .. :try_end_57} :catchall_58
goto :goto_50
:catchall_58
move-exception v0
invoke-interface {v6}, Landroid/database/Cursor;->close()V
throw v0
.end method
.method private getLocalAlbum(Lcom/pinguo/album/data/AlbumDataManager;ILjava/lang/String;Ljava/lang/String;)Lcom/pinguo/album/data/MediaSet;
.registers 12
sget-object v6, Lcom/pinguo/album/data/AlbumDataManager;->LOCK:Ljava/lang/Object;
monitor-enter v6
packed-switch p2, :pswitch_data_44
:try_start_6
:pswitch_6
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_10
move-exception v0
monitor-exit v6
:try_end_12
.catchall {:try_start_6 .. :try_end_12} :catchall_10
throw v0
:pswitch_13
:try_start_13
new-instance v0, Lcom/pinguo/album/data/source/LocalAlbum;
new-instance v1, Lcom/pinguo/album/data/MediaPath;
const-string/jumbo v2, "/local/image/"
invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mApplication:Lcom/pinguo/album/PGAlbumApp;
const/4 v4, 0x1
move-object v3, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/pinguo/album/data/source/LocalAlbum;-><init>(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/PGAlbumApp;Ljava/lang/String;ZLjava/lang/String;)V
monitor-exit v6
:goto_2a
return-object v0
:pswitch_2b
new-instance v0, Lcom/pinguo/album/data/source/LocalAlbum;
new-instance v1, Lcom/pinguo/album/data/MediaPath;
const-string/jumbo v2, "/local/video/"
invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mApplication:Lcom/pinguo/album/PGAlbumApp;
const/4 v4, 0x0
move-object v3, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/pinguo/album/data/source/LocalAlbum;-><init>(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/PGAlbumApp;Ljava/lang/String;ZLjava/lang/String;)V
monitor-exit v6
:try_end_42
.catchall {:try_start_13 .. :try_end_42} :catchall_10
goto :goto_2a
nop
:pswitch_data_44
.packed-switch 0x2
:pswitch_13
:pswitch_6
:pswitch_2b
.end packed-switch
.end method
.method private loadBucketEntries(Lcom/pinguo/album/AlbumThreadPool$JobContext;)[Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;
.registers 14
const/4 v4, 0x0
const/4 v11, 0x1
const/4 v10, 0x0
sget-object v1, Lcom/pinguo/album/data/source/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;
const-string/jumbo v0, "DebugLoadingTime"
const-string/jumbo v2, "start quering media provider"
invoke-static {v0, v2}, Lcom/pinguo/album/common/PGLog;->v(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mApplication:Lcom/pinguo/album/PGAlbumApp;
invoke-interface {v0}, Lcom/pinguo/album/PGAlbumApp;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v2, Lcom/pinguo/album/data/source/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;
const-string/jumbo v3, "1) GROUP BY 1,(2"
const-string/jumbo v5, "MAX(datetaken) DESC"
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v7
if-nez v7, :cond_3b
const-string/jumbo v0, "LocalAlbumSet"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "cannot open local database: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
new-array v4, v10, [Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;
:goto_3a
return-object v4
:cond_3b
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
const/4 v9, 0x0
iget v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mType:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_49
or-int/lit8 v9, v9, 0x2
:cond_49
iget v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mType:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_51
or-int/lit8 v9, v9, 0x8
:try_start_51
:cond_51
invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-nez v0, :cond_89
const-string/jumbo v0, "DebugLoadingTime"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "got "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " buckets"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/pinguo/album/common/PGLog;->v(Ljava/lang/String;Ljava/lang/String;)V
:try_end_78
.catchall {:try_start_51 .. :try_end_78} :catchall_b5
invoke-interface {v7}, Landroid/database/Cursor;->close()V
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v0, v0, [Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;
invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;
move-object v4, v0
goto :goto_3a
:cond_89
const/4 v0, 0x1
:try_start_8a
invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
shl-int v0, v11, v0
and-int/2addr v0, v9
if-eqz v0, :cond_ab
new-instance v8, Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;
const/4 v0, 0x0
invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
const/4 v2, 0x2
invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v8, v0, v2}, Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;-><init>(ILjava/lang/String;)V
invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_ab
invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_ab
invoke-interface {p1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z
:try_end_ae
.catchall {:try_start_8a .. :try_end_ae} :catchall_b5
move-result v0
if-eqz v0, :cond_51
invoke-interface {v7}, Landroid/database/Cursor;->close()V
goto :goto_3a
:catchall_b5
move-exception v0
invoke-interface {v7}, Landroid/database/Cursor;->close()V
throw v0
.end method
.method public static declared-synchronized nextVersionNumber()J
.registers 6
const-class v1, Lcom/pinguo/album/data/source/LocalAlbumSet;
monitor-enter v1
:try_start_3
sget-wide v2, Lcom/pinguo/album/data/MediaObject;->sVersionSerial:J
const-wide/16 v4, 0x1
add-long/2addr v2, v4
sput-wide v2, Lcom/pinguo/album/data/MediaObject;->sVersionSerial:J
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_c
monitor-exit v1
return-wide v2
:catchall_c
move-exception v0
monitor-exit v1
throw v0
.end method
.method public delete([Lcom/pinguo/album/data/MediaPath;)V
.registers 2
return-void
.end method
.method  fakeChange()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mNotifierImage:Lcom/pinguo/album/data/DataNotifier;
invoke-virtual {v0}, Lcom/pinguo/album/data/DataNotifier;->fakeChange()V
iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mNotifierVideo:Lcom/pinguo/album/data/DataNotifier;
invoke-virtual {v0}, Lcom/pinguo/album/data/DataNotifier;->fakeChange()V
return-void
.end method
.method public getMediaItem(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
.registers 4
const/4 v0, 0x0
return-object v0
.end method
.method public getMediaItemByIds([Lcom/pinguo/album/data/MediaPath;)Ljava/util/ArrayList;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mName:Ljava/lang/String;
return-object v0
.end method
.method public getSubMediaSet(I)Lcom/pinguo/album/data/MediaSet;
.registers 3
iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/data/MediaSet;
return-object v0
.end method
.method public getSubMediaSetCount()I
.registers 2
iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public declared-synchronized isLoading()Z
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mIsLoading:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized onFutureDone(Lcom/pinguo/album/Future;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mLoadTask:Lcom/pinguo/album/Future;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_28
if-eq v0, p1, :cond_7
:goto_5
monitor-exit p0
return-void
:try_start_7
:cond_7
invoke-interface {p1}, Lcom/pinguo/album/Future;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mIsLoading:Z
iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;
if-nez v0, :cond_1d
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;
:cond_1d
iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/pinguo/album/data/source/LocalAlbumSet$1;
invoke-direct {v1, p0}, Lcom/pinguo/album/data/source/LocalAlbumSet$1;-><init>(Lcom/pinguo/album/data/source/LocalAlbumSet;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_27
.catchall {:try_start_7 .. :try_end_27} :catchall_28
goto :goto_5
:catchall_28
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized reload()J
.registers 6
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mNotifierImage:Lcom/pinguo/album/data/DataNotifier;
invoke-virtual {v1}, Lcom/pinguo/album/data/DataNotifier;->isDirty()Z
move-result v1
iget-object v2, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mNotifierVideo:Lcom/pinguo/album/data/DataNotifier;
invoke-virtual {v2}, Lcom/pinguo/album/data/DataNotifier;->isDirty()Z
move-result v2
or-int/2addr v1, v2
if-eqz v1, :cond_2e
iget-object v1, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mLoadTask:Lcom/pinguo/album/Future;
if-eqz v1, :cond_19
iget-object v1, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mLoadTask:Lcom/pinguo/album/Future;
invoke-interface {v1}, Lcom/pinguo/album/Future;->cancel()V
:cond_19
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mIsLoading:Z
iget-object v1, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mApplication:Lcom/pinguo/album/PGAlbumApp;
invoke-interface {v1}, Lcom/pinguo/album/PGAlbumApp;->getAlbumThreadPool()Lcom/pinguo/album/AlbumThreadPool;
move-result-object v1
new-instance v2, Lcom/pinguo/album/data/source/LocalAlbumSet$AlbumsLoader;
const/4 v3, 0x0
invoke-direct {v2, p0, v3}, Lcom/pinguo/album/data/source/LocalAlbumSet$AlbumsLoader;-><init>(Lcom/pinguo/album/data/source/LocalAlbumSet;Lcom/pinguo/album/data/source/LocalAlbumSet$AlbumsLoader;)V
invoke-virtual {v1, v2, p0}, Lcom/pinguo/album/AlbumThreadPool;->submit(Lcom/pinguo/album/AlbumThreadPool$Job;Lcom/pinguo/album/FutureListener;)Lcom/pinguo/album/Future;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mLoadTask:Lcom/pinguo/album/Future;
:cond_2e
iget-object v1, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;
if-eqz v1, :cond_63
iget-object v1, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;
iput-object v1, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;
const/4 v1, 0x0
iput-object v1, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_3f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_67
const-string/jumbo v1, "test-r"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "enter reload()-2:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-wide v3, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mDataVersion:J
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/album/data/source/LocalAlbumSet;->nextVersionNumber()J
move-result-wide v1
iput-wide v1, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mDataVersion:J
:cond_63
iget-wide v1, p0, Lcom/pinguo/album/data/source/LocalAlbumSet;->mDataVersion:J
:try_end_65
.catchall {:try_start_1 .. :try_end_65} :catchall_71
monitor-exit p0
return-wide v1
:try_start_67
:cond_67
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/data/MediaSet;
invoke-virtual {v0}, Lcom/pinguo/album/data/MediaSet;->reload()J
:try_end_70
.catchall {:try_start_67 .. :try_end_70} :catchall_71
goto :goto_3f
:catchall_71
move-exception v1
monitor-exit p0
throw v1
.end method