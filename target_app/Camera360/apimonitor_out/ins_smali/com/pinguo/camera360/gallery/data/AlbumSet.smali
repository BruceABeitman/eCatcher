.class public Lcom/pinguo/camera360/gallery/data/AlbumSet;
.super Lcom/pinguo/camera360/gallery/data/MediaSet;
.source "AlbumSet.java"
.implements Lcom/pinguo/camera360/gallery/util/FutureListener;
.field private static final BUCKET_GROUP_BY:Ljava/lang/String; = "1) GROUP BY 1,(2"
.field private static final BUCKET_ORDER_BY:Ljava/lang/String; = "MAX(datetaken) DESC"
.field public static final HIDE_ALBUM_LIST_TITLE:Ljava/lang/String; = "hidelist"
.field private static final INDEX_BUCKET_ID:I = 0x0
.field private static final INDEX_BUCKET_NAME:I = 0x1
.field private static final INDEX_BUCKET_PATH:I = 0x2
.field private static final INVALID_COUNT:I = -0x1
.field private static final PROJECTION_BUCKET:[Ljava/lang/String; = null
.field private static final TAG:Ljava/lang/String; = "AlbumSet"
.field private static final mUriImage:Landroid/net/Uri;
.field  count:I
.field private mAlbums:Ljava/util/ArrayList;
.field private mApplication:Lcom/pinguo/camera360/PgCameraApplication;
.field private mCachedCount:I
.field private final mHandler:Landroid/os/Handler;
.field private mHideAlbumList:Ljava/util/ArrayList;
.field  mIsCanReuseOldData:Z
.field private mIsLoading:Z
.field private mLoadBuffer:Ljava/util/ArrayList;
.field private mLoadTask:Lcom/pinguo/camera360/gallery/util/Future;
.field private final mNotifierImage:Lcom/pinguo/camera360/gallery/data/ChangeNotifier;
.method static constructor <clinit>()V
.registers 3
sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
sput-object v0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mUriImage:Landroid/net/Uri;
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string/jumbo v2, "bucket_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string/jumbo v2, "bucket_display_name"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string/jumbo v2, "_data"
aput-object v2, v0, v1
sput-object v0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/pinguo/camera360/PgCameraApplication;Lcom/pinguo/camera360/gallery/data/Path;)V
.registers 5
invoke-static {}, Lcom/pinguo/camera360/gallery/data/AlbumSet;->nextVersionNumber()J
move-result-wide v0
invoke-direct {p0, p2, v0, v1}, Lcom/pinguo/camera360/gallery/data/MediaSet;-><init>(Lcom/pinguo/camera360/gallery/data/Path;J)V
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mCachedCount:I
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mAlbums:Ljava/util/ArrayList;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mIsCanReuseOldData:Z
iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;
new-instance v0, Lcom/pinguo/camera360/gallery/data/ChangeNotifier;
sget-object v1, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mUriImage:Landroid/net/Uri;
invoke-direct {v0, p0, v1, p1}, Lcom/pinguo/camera360/gallery/data/ChangeNotifier;-><init>(Lcom/pinguo/camera360/gallery/data/MediaSet;Landroid/net/Uri;Lcom/pinguo/camera360/PgCameraApplication;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mNotifierImage:Lcom/pinguo/camera360/gallery/data/ChangeNotifier;
new-instance v0, Landroid/os/Handler;
invoke-virtual {p1}, Lcom/pinguo/camera360/PgCameraApplication;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mHandler:Landroid/os/Handler;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/data/AlbumSet;)Ljava/util/ArrayList;
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/data/AlbumSet;->getSubMediaSetList()Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method
.method private getSubMediaSetList()Ljava/util/ArrayList;
.registers 21
move-object/from16 v0, p0
iget-boolean v1, v0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mIsCanReuseOldData:Z
if-eqz v1, :cond_16
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mAlbums:Ljava/util/ArrayList;
if-eqz v1, :cond_16
const/4 v1, 0x0
move-object/from16 v0, p0
iput-boolean v1, v0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mIsCanReuseOldData:Z
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mAlbums:Ljava/util/ArrayList;
:goto_15
return-object v14
:cond_16
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getHideAlbumList()Ljava/lang/String;
move-result-object v12
const-string/jumbo v1, "AlbumSet"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "hideAlbumList = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_5a
:try_start_3a
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, p0
iput-object v1, v0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mHideAlbumList:Ljava/util/ArrayList;
new-instance v17, Lorg/json/JSONObject;
move-object/from16 v0, v17
invoke-direct {v0, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "hidelist"
move-object/from16 v0, v17
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v8
const/4 v13, 0x0
:goto_54
invoke-virtual {v8}, Lorg/json/JSONArray;->length()I
:try_end_57
.catch Lorg/json/JSONException; {:try_start_3a .. :try_end_57} :catch_88
move-result v1
if-lt v13, v1, :cond_78
:goto_5a
:cond_5a
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;
invoke-virtual {v1}, Lcom/pinguo/camera360/PgCameraApplication;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
sget-object v2, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mUriImage:Landroid/net/Uri;
sget-object v3, Lcom/pinguo/camera360/gallery/data/AlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;
const-string/jumbo v4, "1) GROUP BY 1,(2"
const/4 v5, 0x0
const-string/jumbo v6, "MAX(datetaken) DESC"
invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v10
if-nez v10, :cond_8d
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mAlbums:Ljava/util/ArrayList;
goto :goto_15
:cond_78
:try_start_78
invoke-virtual {v8, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v15
check-cast v15, Ljava/lang/String;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mHideAlbumList:Ljava/util/ArrayList;
invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_85
.catch Lorg/json/JSONException; {:try_start_78 .. :try_end_85} :catch_88
add-int/lit8 v13, v13, 0x1
goto :goto_54
:catch_88
move-exception v11
invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_5a
:cond_8d
new-instance v14, Ljava/util/ArrayList;
invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
:try_start_92
:cond_92
:goto_92
invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
:try_end_95
.catchall {:try_start_92 .. :try_end_95} :catchall_17c
move-result v1
if-nez v1, :cond_9d
invoke-interface {v10}, Landroid/database/Cursor;->close()V
goto/16 :goto_15
:try_start_9d
:cond_9d
new-instance v7, Lcom/pinguo/camera360/gallery/data/Album;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;
new-instance v2, Lcom/pinguo/camera360/gallery/data/Path;
const/16 v3, 0x3eb
const/4 v4, 0x0
invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I
move-result v4
invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v3, v4}, Lcom/pinguo/camera360/gallery/data/Path;-><init>(ILjava/lang/String;)V
const/4 v3, 0x1
invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v7, v1, v2, v3}, Lcom/pinguo/camera360/gallery/data/Album;-><init>(Lcom/pinguo/camera360/PgCameraApplication;Lcom/pinguo/camera360/gallery/data/Path;Ljava/lang/String;)V
invoke-virtual {v14, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_92
const/4 v1, 0x2
invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v18
const-string/jumbo v1, "/"
move-object/from16 v0, v18
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_de
const/4 v1, 0x0
invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I
move-result v2
add-int/lit8 v2, v2, -0x1
move-object/from16 v0, v18
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v18
:cond_de
const-string/jumbo v1, ".jpg"
move-object/from16 v0, v18
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_10a
const-string/jumbo v1, ".png"
move-object/from16 v0, v18
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_10a
const-string/jumbo v1, ".JPG"
move-object/from16 v0, v18
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_10a
const-string/jumbo v1, ".PNG"
move-object/from16 v0, v18
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_11a
:cond_10a
const/4 v1, 0x0
const-string/jumbo v2, "/"
move-object/from16 v0, v18
invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v2
move-object/from16 v0, v18
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v18
:cond_11a
move-object/from16 v0, v18
invoke-virtual {v7, v0}, Lcom/pinguo/camera360/gallery/data/Album;->setAbsolutePath(Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "NearbyTransfer"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "files/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
const/4 v1, 0x0
const-string/jumbo v2, "/"
move-object/from16 v0, v16
invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v2
move-object/from16 v0, v16
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
move-object/from16 v0, v18
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_92
invoke-virtual {v7}, Lcom/pinguo/camera360/gallery/data/Album;->getMediaItemCount()I
move-result v1
if-lez v1, :cond_92
const/4 v9, 0x1
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mHideAlbumList:Ljava/util/ArrayList;
if-eqz v1, :cond_175
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mHideAlbumList:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-lez v1, :cond_175
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mHideAlbumList:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_16f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_181
:cond_175
:goto_175
if-eqz v9, :cond_92
invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_17a
.catchall {:try_start_9d .. :try_end_17a} :catchall_17c
goto/16 :goto_92
:catchall_17c
move-exception v1
invoke-interface {v10}, Landroid/database/Cursor;->close()V
throw v1
:try_start_181
:cond_181
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v19
check-cast v19, Ljava/lang/String;
invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_18a
.catchall {:try_start_181 .. :try_end_18a} :catchall_17c
move-result v2
if-eqz v2, :cond_16f
const/4 v9, 0x0
goto :goto_175
.end method
.method public deleteBatch([Lcom/pinguo/camera360/gallery/data/Path;Z)Z
.registers 11
const/4 v4, 0x0
const/4 v1, 0x0
array-length v5, p1
move v3, v4
:goto_4
if-lt v3, v5, :cond_15
:cond_6
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/AlbumSet;->isDeleteCancel()Z
move-result v3
if-eqz v3, :cond_14
iget-object v3, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mListener:Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;
invoke-interface {v3}, Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;->onDeleteCancel()V
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/AlbumSet;->resetCancelDelete()V
:cond_14
return v4
:cond_15
aget-object v2, p1, v3
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/AlbumSet;->isDeleteCancel()Z
move-result v6
if-nez v6, :cond_6
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/Path;->getObject()Lcom/pinguo/camera360/gallery/data/MediaObject;
move-result-object v6
if-nez v6, :cond_31
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppInstance()Lcom/pinguo/camera360/PgCameraApplication;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/camera360/PgCameraApplication;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v6
const-string/jumbo v7, ""
invoke-virtual {v6, v2, v7}, Lcom/pinguo/camera360/gallery/data/DataManager;->getMediaObject(Lcom/pinguo/camera360/gallery/data/Path;Ljava/lang/String;)Lcom/pinguo/camera360/gallery/data/MediaObject;
:cond_31
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/Path;->getObject()Lcom/pinguo/camera360/gallery/data/MediaObject;
move-result-object v6
instance-of v6, v6, Lcom/pinguo/camera360/gallery/data/Album;
if-eqz v6, :cond_4e
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/Path;->getObject()Lcom/pinguo/camera360/gallery/data/MediaObject;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/gallery/data/Album;
invoke-virtual {v0, p2}, Lcom/pinguo/camera360/gallery/data/Album;->delete(Z)V
iget-object v6, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mAlbums:Ljava/util/ArrayList;
invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
iget-object v6, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mListener:Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;
invoke-interface {v6, v1}, Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;->onDelete(I)V
:cond_4e
add-int/lit8 v3, v3, 0x1
goto :goto_4
.end method
.method public deleteByPath(Ljava/lang/String;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public getMediaItem(II)Ljava/util/ArrayList;
.registers 4
const/4 v0, 0x0
return-object v0
.end method
.method public getMediaItem(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
.registers 4
const/4 v0, 0x0
return-object v0
.end method
.method public getMediaItemCount()I
.registers 5
const/4 v1, 0x0
iput v1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mCachedCount:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mAlbums:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_12
iget v1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mCachedCount:I
return v1
:cond_12
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/gallery/data/MediaSet;
iget v2, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mCachedCount:I
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getMediaItemCount()I
move-result v3
add-int/2addr v2, v3
iput v2, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mCachedCount:I
goto :goto_9
.end method
.method public getMediaItemNeedSync()Ljava/util/ArrayList;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
const-string/jumbo v0, "path-set"
return-object v0
.end method
.method public getSubMediaSet(I)Lcom/pinguo/camera360/gallery/data/MediaSet;
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mAlbums:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/gallery/data/MediaSet;
return-object v0
.end method
.method public getSubMediaSetCount()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mAlbums:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public hidePhotoList(Ljava/util/ArrayList;)V
.registers 15
const/4 v12, 0x1
if-eqz p1, :cond_70
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getHideAlbumList()Ljava/lang/String;
move-result-object v2
const/4 v4, 0x0
const/4 v3, 0x0
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v9
if-nez v9, :cond_20
:try_start_13
new-instance v5, Lorg/json/JSONObject;
invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
:try_end_18
.catch Lorg/json/JSONException; {:try_start_13 .. :try_end_18} :catch_71
:try_start_18
const-string/jumbo v9, "hidelist"
invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
:try_end_1e
.catch Lorg/json/JSONException; {:try_start_18 .. :try_end_1e} :catch_99
move-result-object v3
move-object v4, v5
:goto_20
:cond_20
if-nez v4, :cond_27
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
:cond_27
if-nez v3, :cond_2e
new-instance v3, Lorg/json/JSONArray;
invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
:cond_2e
invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v10
:goto_32
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-nez v9, :cond_76
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v9
if-lez v9, :cond_6b
:try_start_3e
const-string/jumbo v9, "hidelist"
invoke-virtual {v4, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v9, "AlbumSet"
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "hide Album list = "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setHideAlbumList(Ljava/lang/String;)V
invoke-virtual {v8}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V
const/4 v9, 0x1
iput-boolean v9, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mIsCanReuseOldData:Z
:goto_6b
:cond_6b
:try_end_6b
.catch Lorg/json/JSONException; {:try_start_3e .. :try_end_6b} :catch_94
iget-object v9, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mNotifierImage:Lcom/pinguo/camera360/gallery/data/ChangeNotifier;
invoke-virtual {v9, v12}, Lcom/pinguo/camera360/gallery/data/ChangeNotifier;->onChange(Z)V
:cond_70
return-void
:catch_71
move-exception v1
:goto_72
invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_20
:cond_76
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/pinguo/camera360/gallery/data/Path;
invoke-virtual {v7}, Lcom/pinguo/camera360/gallery/data/Path;->getObject()Lcom/pinguo/camera360/gallery/data/MediaObject;
move-result-object v6
instance-of v9, v6, Lcom/pinguo/camera360/gallery/data/Album;
if-eqz v9, :cond_8e
move-object v9, v6
check-cast v9, Lcom/pinguo/camera360/gallery/data/Album;
invoke-virtual {v9}, Lcom/pinguo/camera360/gallery/data/Album;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
:cond_8e
iget-object v9, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mAlbums:Ljava/util/ArrayList;
invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_32
:catch_94
move-exception v1
invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_6b
:catch_99
move-exception v1
move-object v4, v5
goto :goto_72
.end method
.method public declared-synchronized isLoading()Z
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mIsLoading:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized onFutureDone(Lcom/pinguo/camera360/gallery/util/Future;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mLoadTask:Lcom/pinguo/camera360/gallery/util/Future;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_28
if-eq v0, p1, :cond_7
:goto_5
monitor-exit p0
return-void
:try_start_7
:cond_7
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/util/Future;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mLoadBuffer:Ljava/util/ArrayList;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mIsLoading:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mLoadBuffer:Ljava/util/ArrayList;
if-nez v0, :cond_1d
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mLoadBuffer:Ljava/util/ArrayList;
:cond_1d
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/pinguo/camera360/gallery/data/AlbumSet$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/gallery/data/AlbumSet$1;-><init>(Lcom/pinguo/camera360/gallery/data/AlbumSet;)V
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
.registers 5
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mNotifierImage:Lcom/pinguo/camera360/gallery/data/ChangeNotifier;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/ChangeNotifier;->isDirty()Z
move-result v1
if-eqz v1, :cond_27
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mLoadTask:Lcom/pinguo/camera360/gallery/util/Future;
if-eqz v1, :cond_12
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mLoadTask:Lcom/pinguo/camera360/gallery/util/Future;
invoke-interface {v1}, Lcom/pinguo/camera360/gallery/util/Future;->cancel()V
:cond_12
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mIsLoading:Z
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;
invoke-virtual {v1}, Lcom/pinguo/camera360/PgCameraApplication;->getThreadPool()Lcom/pinguo/camera360/gallery/util/ThreadPool;
move-result-object v1
new-instance v2, Lcom/pinguo/camera360/gallery/data/AlbumSet$AlbumSetLoader;
const/4 v3, 0x0
invoke-direct {v2, p0, v3}, Lcom/pinguo/camera360/gallery/data/AlbumSet$AlbumSetLoader;-><init>(Lcom/pinguo/camera360/gallery/data/AlbumSet;Lcom/pinguo/camera360/gallery/data/AlbumSet$AlbumSetLoader;)V
invoke-virtual {v1, v2, p0}, Lcom/pinguo/camera360/gallery/util/ThreadPool;->submit(Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;Lcom/pinguo/camera360/gallery/util/FutureListener;)Lcom/pinguo/camera360/gallery/util/Future;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mLoadTask:Lcom/pinguo/camera360/gallery/util/Future;
:cond_27
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mLoadBuffer:Ljava/util/ArrayList;
if-eqz v1, :cond_44
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mLoadBuffer:Ljava/util/ArrayList;
iput-object v1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mAlbums:Ljava/util/ArrayList;
const/4 v1, 0x0
iput-object v1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mLoadBuffer:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mAlbums:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_38
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_48
invoke-static {}, Lcom/pinguo/camera360/gallery/data/AlbumSet;->nextVersionNumber()J
move-result-wide v1
iput-wide v1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mDataVersion:J
:cond_44
iget-wide v1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet;->mDataVersion:J
:try_end_46
.catchall {:try_start_1 .. :try_end_46} :catchall_52
monitor-exit p0
return-wide v1
:cond_48
:try_start_48
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->reload()J
:try_end_51
.catchall {:try_start_48 .. :try_end_51} :catchall_52
goto :goto_38
:catchall_52
move-exception v1
monitor-exit p0
throw v1
.end method