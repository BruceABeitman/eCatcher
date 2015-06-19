.class public Lcom/pinguo/album/data/AlbumDataManager;
.super Ljava/lang/Object;
.source "AlbumDataManager.java"
.field private static final ACTION_DELETE_PICTURE:Ljava/lang/String; = "com.android.gallery3d.action.DELETE_PICTURE"
.field public static final INCLUDE_ALL:I = 0x30
.field public static final INCLUDE_ALL_SET:I = 0x3
.field public static final INCLUDE_CLOUD_ALL_ONLY:I = 0xb0
.field public static final INCLUDE_CLOUD_ALL_SET_ONLY:I = 0xb
.field public static final INCLUDE_CLOUD_IMAGE_ONLY:I = 0x90
.field public static final INCLUDE_CLOUD_IMAGE_SET_ONLY:I = 0x9
.field public static final INCLUDE_CLOUD_ONLY:I = 0x80
.field public static final INCLUDE_CLOUD_SET_ONLY:I = 0x8
.field public static final INCLUDE_CLOUD_VIDEO_ONLY:I = 0xa0
.field public static final INCLUDE_CLOUD_VIDEO_SET_ONLY:I = 0xa
.field public static final INCLUDE_IMAGE:I = 0x10
.field public static final INCLUDE_IMAGE_SET:I = 0x1
.field public static final INCLUDE_LOCAL_ALL_ONLY:I = 0x70
.field public static final INCLUDE_LOCAL_ALL_SET_ONLY:I = 0x7
.field public static final INCLUDE_LOCAL_IMAGE_ONLY:I = 0x50
.field public static final INCLUDE_LOCAL_IMAGE_SET_ONLY:I = 0x5
.field public static final INCLUDE_LOCAL_ONLY:I = 0x40
.field public static final INCLUDE_LOCAL_SET_ONLY:I = 0x4
.field public static final INCLUDE_LOCAL_VIDEO_ONLY:I = 0x60
.field public static final INCLUDE_LOCAL_VIDEO_SET_ONLY:I = 0x6
.field public static final INCLUDE_VIDEO:I = 0x20
.field public static final INCLUDE_VIDEO_SET:I = 0x2
.field public static final LOCK:Ljava/lang/Object; = null
.field private static final TAG:Ljava/lang/String; = "DataManager"
.field private static final TOP_CLOUD_IMAGE_PATH:Ljava/lang/String; = "/cloud/image/*"
.field private static final TOP_CLOUD_IMAGE_SET_PATH:Ljava/lang/String; = "/cloud/image"
.field private static final TOP_CLOUD_PATH:Ljava/lang/String; = "/cloud/all/*"
.field private static final TOP_CLOUD_SET_PATH:Ljava/lang/String; = "/cloud/all"
.field private static final TOP_CLOUD_VIDEO_PATH:Ljava/lang/String; = "/cloud/video/*"
.field private static final TOP_CLOUD_VIDEO_SET_PATH:Ljava/lang/String; = "/cloud/video"
.field private static final TOP_IMAGE_PATH:Ljava/lang/String; = "/combo/{/local/image/*,/cloud/image/*}"
.field private static final TOP_IMAGE_SET_PATH:Ljava/lang/String; = "/combo/{/local/image,/cloud/image}"
.field private static final TOP_LOCAL_IMAGE_PATH:Ljava/lang/String; = "/local/image/*"
.field private static final TOP_LOCAL_IMAGE_SET_PATH:Ljava/lang/String; = "/local/image"
.field private static final TOP_LOCAL_PATH:Ljava/lang/String; = "/local/all/*"
.field private static final TOP_LOCAL_SET_PATH:Ljava/lang/String; = "/local/all"
.field private static final TOP_LOCAL_VIDEO_PATH:Ljava/lang/String; = "/local/video/*"
.field private static final TOP_LOCAL_VIDEO_SET_PATH:Ljava/lang/String; = "/local/video"
.field private static final TOP_PATH:Ljava/lang/String; = "/combo/{/local/all/*,/cloud/all/*}"
.field private static final TOP_SET_PATH:Ljava/lang/String; = "/combo/{/local/all,/cloud/all}"
.field private static final TOP_VIDEO_PATH:Ljava/lang/String; = "/combo/{/local/video/*,/cloud/video/*}"
.field private static final TOP_VIDEO_SET_PATH:Ljava/lang/String; = "/combo/{/local/video,/cloud/video}"
.field private mActiveCount:I
.field private mApplication:Lcom/pinguo/album/PGAlbumApp;
.field private final mMainHandler:Landroid/os/Handler;
.field private mNotifierMap:Ljava/util/HashMap;
.field private mSourceMap:Ljava/util/HashMap;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/pinguo/album/data/AlbumDataManager;->LOCK:Ljava/lang/Object;
return-void
.end method
.method public constructor <init>(Lcom/pinguo/album/PGAlbumApp;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/data/AlbumDataManager;->mSourceMap:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/data/AlbumDataManager;->mNotifierMap:Ljava/util/HashMap;
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/album/data/AlbumDataManager;->mActiveCount:I
iput-object p1, p0, Lcom/pinguo/album/data/AlbumDataManager;->mApplication:Lcom/pinguo/album/PGAlbumApp;
new-instance v0, Landroid/os/Handler;
invoke-interface {p1}, Lcom/pinguo/album/PGAlbumApp;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/pinguo/album/data/AlbumDataManager;->mMainHandler:Landroid/os/Handler;
return-void
.end method
.method private addSource(Lcom/pinguo/album/data/MediaSource;)V
.registers 5
const-string/jumbo v0, "DataManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "addSource:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/album/data/MediaSource;->getPrefix()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/album/data/AlbumDataManager;->mSourceMap:Ljava/util/HashMap;
invoke-virtual {p1}, Lcom/pinguo/album/data/MediaSource;->getPrefix()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public broadcastLocalDeletion()V
.registers 4
iget-object v2, p0, Lcom/pinguo/album/data/AlbumDataManager;->mApplication:Lcom/pinguo/album/PGAlbumApp;
invoke-interface {v2}, Lcom/pinguo/album/PGAlbumApp;->getAndroidContext()Landroid/content/Context;
move-result-object v2
invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
move-result-object v1
new-instance v0, Landroid/content/Intent;
const-string/jumbo v2, "com.android.gallery3d.action.DELETE_PICTURE"
invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
return-void
.end method
.method public delete(Lcom/pinguo/album/data/MediaPath;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/album/data/AlbumDataManager;->getMediaObject(Lcom/pinguo/album/data/MediaPath;)Lcom/pinguo/album/data/MediaObject;
move-result-object v0
if-eqz v0, :cond_9
invoke-virtual {v0}, Lcom/pinguo/album/data/MediaObject;->delete()V
:cond_9
return-void
.end method
.method public delete([Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/data/MediaSet;)V
.registers 3
if-eqz p2, :cond_5
invoke-virtual {p2, p1}, Lcom/pinguo/album/data/MediaSet;->delete([Lcom/pinguo/album/data/MediaPath;)V
:cond_5
return-void
.end method
.method public getMediaObject(Lcom/pinguo/album/data/MediaPath;)Lcom/pinguo/album/data/MediaObject;
.registers 12
const/4 v4, 0x0
const/4 v9, 0x1
invoke-virtual {p1}, Lcom/pinguo/album/data/MediaPath;->getObject()Lcom/pinguo/album/data/MediaObject;
move-result-object v0
if-eqz v0, :cond_9
:goto_8
return-object v0
:cond_9
const-string/jumbo v5, "DataManager"
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "getMediaObject:"
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/album/data/MediaPath;->getPrefix()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, ":"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {p1}, Lcom/pinguo/album/data/MediaPath;->getPrefix()Ljava/lang/String;
move-result-object v7
const-string/jumbo v8, "/"
invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v7
aget-object v7, v7, v9
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/album/data/AlbumDataManager;->mSourceMap:Ljava/util/HashMap;
invoke-virtual {p1}, Lcom/pinguo/album/data/MediaPath;->getPrefix()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "/"
invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v6
aget-object v6, v6, v9
invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/data/MediaSource;
if-nez v2, :cond_6a
const-string/jumbo v5, "DataManager"
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "cannot find media source for path: "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v4
goto :goto_8
:try_start_6a
:cond_6a
invoke-virtual {v2, p1}, Lcom/pinguo/album/data/MediaSource;->createMediaObject(Lcom/pinguo/album/data/MediaPath;)Lcom/pinguo/album/data/MediaObject;
move-result-object v1
if-nez v1, :cond_86
const-string/jumbo v5, "DataManager"
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "cannot create media object: "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
:try_end_86
.catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_86} :catch_88
:cond_86
move-object v0, v1
goto :goto_8
:catch_88
move-exception v3
const-string/jumbo v5, "DataManager"
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "exception in creating media object: "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6, v3}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v0, v4
goto/16 :goto_8
.end method
.method public getMediaObject(Ljava/lang/String;Ljava/lang/String;)Lcom/pinguo/album/data/MediaObject;
.registers 4
new-instance v0, Lcom/pinguo/album/data/MediaPath;
invoke-direct {v0, p1, p2}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/pinguo/album/data/AlbumDataManager;->getMediaObject(Lcom/pinguo/album/data/MediaPath;)Lcom/pinguo/album/data/MediaObject;
move-result-object v0
return-object v0
.end method
.method public getMediaSet(Lcom/pinguo/album/data/MediaPath;)Lcom/pinguo/album/data/MediaSet;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/album/data/AlbumDataManager;->getMediaObject(Lcom/pinguo/album/data/MediaPath;)Lcom/pinguo/album/data/MediaObject;
move-result-object v0
check-cast v0, Lcom/pinguo/album/data/MediaSet;
return-object v0
.end method
.method public getMediaSet(Ljava/lang/String;Ljava/lang/String;)Lcom/pinguo/album/data/MediaSet;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/data/AlbumDataManager;->getMediaObject(Ljava/lang/String;Ljava/lang/String;)Lcom/pinguo/album/data/MediaObject;
move-result-object v0
check-cast v0, Lcom/pinguo/album/data/MediaSet;
return-object v0
.end method
.method public getTopSetPath(I)Ljava/lang/String;
.registers 3
sparse-switch p1, :sswitch_data_52
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:sswitch_9
const-string/jumbo v0, "/combo/{/local/image,/cloud/image}"
:goto_c
return-object v0
:sswitch_d
const-string/jumbo v0, "/combo/{/local/video,/cloud/video}"
goto :goto_c
:sswitch_11
const-string/jumbo v0, "/combo/{/local/all,/cloud/all}"
goto :goto_c
:sswitch_15
const-string/jumbo v0, "/local/image"
goto :goto_c
:sswitch_19
const-string/jumbo v0, "/local/video"
goto :goto_c
:sswitch_1d
const-string/jumbo v0, "/local/all"
goto :goto_c
:sswitch_21
const-string/jumbo v0, "/cloud/image"
goto :goto_c
:sswitch_25
const-string/jumbo v0, "/cloud/video"
goto :goto_c
:sswitch_29
const-string/jumbo v0, "/cloud/all"
goto :goto_c
:sswitch_2d
const-string/jumbo v0, "/combo/{/local/image/*,/cloud/image/*}"
goto :goto_c
:sswitch_31
const-string/jumbo v0, "/combo/{/local/video/*,/cloud/video/*}"
goto :goto_c
:sswitch_35
const-string/jumbo v0, "/combo/{/local/all/*,/cloud/all/*}"
goto :goto_c
:sswitch_39
const-string/jumbo v0, "/local/image/*"
goto :goto_c
:sswitch_3d
const-string/jumbo v0, "/local/video/*"
goto :goto_c
:sswitch_41
const-string/jumbo v0, "/local/all/*"
goto :goto_c
:sswitch_45
const-string/jumbo v0, "/cloud/image/*"
goto :goto_c
:sswitch_49
const-string/jumbo v0, "/cloud/video/*"
goto :goto_c
:sswitch_4d
const-string/jumbo v0, "/cloud/all/*"
goto :goto_c
nop
:sswitch_data_52
.sparse-switch
0x1 -> :sswitch_9
0x2 -> :sswitch_d
0x3 -> :sswitch_11
0x5 -> :sswitch_15
0x6 -> :sswitch_19
0x7 -> :sswitch_1d
0x9 -> :sswitch_21
0xa -> :sswitch_25
0xb -> :sswitch_29
0x10 -> :sswitch_2d
0x20 -> :sswitch_31
0x30 -> :sswitch_35
0x50 -> :sswitch_39
0x60 -> :sswitch_3d
0x70 -> :sswitch_41
0x90 -> :sswitch_45
0xa0 -> :sswitch_49
0xb0 -> :sswitch_4d
.end sparse-switch
.end method
.method public declared-synchronized initializeSourceMap()V
.registers 4
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/pinguo/album/data/AlbumDataManager;->mSourceMap:Ljava/util/HashMap;
invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_3d
move-result v1
if-nez v1, :cond_b
:cond_9
monitor-exit p0
return-void
:cond_b
:try_start_b
new-instance v1, Lcom/pinguo/album/data/source/LocalSource;
iget-object v2, p0, Lcom/pinguo/album/data/AlbumDataManager;->mApplication:Lcom/pinguo/album/PGAlbumApp;
invoke-direct {v1, v2}, Lcom/pinguo/album/data/source/LocalSource;-><init>(Lcom/pinguo/album/PGAlbumApp;)V
invoke-direct {p0, v1}, Lcom/pinguo/album/data/AlbumDataManager;->addSource(Lcom/pinguo/album/data/MediaSource;)V
new-instance v1, Lcom/pinguo/album/data/source/CloudSource;
iget-object v2, p0, Lcom/pinguo/album/data/AlbumDataManager;->mApplication:Lcom/pinguo/album/PGAlbumApp;
invoke-direct {v1, v2}, Lcom/pinguo/album/data/source/CloudSource;-><init>(Lcom/pinguo/album/PGAlbumApp;)V
invoke-direct {p0, v1}, Lcom/pinguo/album/data/AlbumDataManager;->addSource(Lcom/pinguo/album/data/MediaSource;)V
iget v1, p0, Lcom/pinguo/album/data/AlbumDataManager;->mActiveCount:I
if-lez v1, :cond_9
iget-object v1, p0, Lcom/pinguo/album/data/AlbumDataManager;->mSourceMap:Ljava/util/HashMap;
invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v1
invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_2d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_9
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/data/MediaSource;
invoke-virtual {v0}, Lcom/pinguo/album/data/MediaSource;->resume()V
:try_end_3c
.catchall {:try_start_b .. :try_end_3c} :catchall_3d
goto :goto_2d
:catchall_3d
move-exception v1
monitor-exit p0
throw v1
.end method
.method public pause()V
.registers 4
iget v1, p0, Lcom/pinguo/album/data/AlbumDataManager;->mActiveCount:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lcom/pinguo/album/data/AlbumDataManager;->mActiveCount:I
if-nez v1, :cond_18
iget-object v1, p0, Lcom/pinguo/album/data/AlbumDataManager;->mSourceMap:Ljava/util/HashMap;
invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v1
invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_12
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_19
:cond_18
return-void
:cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/data/MediaSource;
invoke-virtual {v0}, Lcom/pinguo/album/data/MediaSource;->pause()V
goto :goto_12
.end method
.method public registerDataNotifier(Landroid/net/Uri;Lcom/pinguo/album/data/DataNotifier;)V
.registers 9
const/4 v1, 0x0
iget-object v4, p0, Lcom/pinguo/album/data/AlbumDataManager;->mNotifierMap:Ljava/util/HashMap;
monitor-enter v4
:try_start_4
iget-object v3, p0, Lcom/pinguo/album/data/AlbumDataManager;->mNotifierMap:Ljava/util/HashMap;
invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
move-object v0, v3
check-cast v0, Lcom/pinguo/album/data/AlbumDataManager$DataObserver;
move-object v1, v0
if-nez v1, :cond_27
new-instance v2, Lcom/pinguo/album/data/AlbumDataManager$DataObserver;
iget-object v3, p0, Lcom/pinguo/album/data/AlbumDataManager;->mMainHandler:Landroid/os/Handler;
invoke-direct {v2, v3}, Lcom/pinguo/album/data/AlbumDataManager$DataObserver;-><init>(Landroid/os/Handler;)V
:try_start_17
:try_end_17
.catchall {:try_start_4 .. :try_end_17} :catchall_2c
iget-object v3, p0, Lcom/pinguo/album/data/AlbumDataManager;->mApplication:Lcom/pinguo/album/PGAlbumApp;
invoke-interface {v3}, Lcom/pinguo/album/PGAlbumApp;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
const/4 v5, 0x1
invoke-virtual {v3, p1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
iget-object v3, p0, Lcom/pinguo/album/data/AlbumDataManager;->mNotifierMap:Ljava/util/HashMap;
invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_26
.catchall {:try_start_17 .. :try_end_26} :catchall_2f
move-object v1, v2
:cond_27
:try_start_27
monitor-exit v4
:try_end_28
.catchall {:try_start_27 .. :try_end_28} :catchall_2c
invoke-virtual {v1, p2}, Lcom/pinguo/album/data/AlbumDataManager$DataObserver;->registerNotifier(Lcom/pinguo/album/data/DataNotifier;)V
return-void
:catchall_2c
move-exception v3
:try_start_2d
:goto_2d
monitor-exit v4
:try_end_2e
.catchall {:try_start_2d .. :try_end_2e} :catchall_2c
throw v3
:catchall_2f
move-exception v3
move-object v1, v2
goto :goto_2d
.end method
.method public resume()V
.registers 4
iget v1, p0, Lcom/pinguo/album/data/AlbumDataManager;->mActiveCount:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/pinguo/album/data/AlbumDataManager;->mActiveCount:I
const/4 v2, 0x1
if-ne v1, v2, :cond_19
iget-object v1, p0, Lcom/pinguo/album/data/AlbumDataManager;->mSourceMap:Ljava/util/HashMap;
invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v1
invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_13
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_1a
:cond_19
return-void
:cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/data/MediaSource;
invoke-virtual {v0}, Lcom/pinguo/album/data/MediaSource;->resume()V
goto :goto_13
.end method