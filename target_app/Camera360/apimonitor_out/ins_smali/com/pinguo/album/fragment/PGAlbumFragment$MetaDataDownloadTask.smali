.class  Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;
.super Landroid/os/AsyncTask;
.source "PGAlbumFragment.java"
.implements Lcom/pinguo/album/data/download/MetaDataDownLoader$MetaDataLoadingListener;
.field private volatile canBeCanceled:Z
.field private countDown:Ljava/util/concurrent/CountDownLatch;
.field private failMessage:Ljava/lang/String;
.field private result:Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
.method private constructor <init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
.registers 4
const/4 v1, 0x1
iput-object p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
new-instance v0, Ljava/util/concurrent/CountDownLatch;
invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iput-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->countDown:Ljava/util/concurrent/CountDownLatch;
iput-boolean v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->canBeCanceled:Z
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/album/fragment/PGAlbumFragment;Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
return-void
.end method
.method private updataMetaDataPageToDB(Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;Z)I
.registers 22
new-instance v3, Lcom/pinguo/lib/util/DebugHelper;
invoke-direct {v3}, Lcom/pinguo/lib/util/DebugHelper;-><init>()V
const-string/jumbo v13, "updataMetaDataPageToDB"
invoke-virtual {v3, v13}, Lcom/pinguo/lib/util/DebugHelper;->start(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v13}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v13
invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
new-instance v10, Ljava/util/ArrayList;
invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, p1
iget-object v8, v0, Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;->albums:Ljava/util/List;
const/4 v5, 0x0
:goto_21
invoke-interface {v8}, Ljava/util/List;->size()I
move-result v13
if-lt v5, v13, :cond_8d
const-string/jumbo v13, "prepare data"
invoke-virtual {v3, v13}, Lcom/pinguo/lib/util/DebugHelper;->mark(Ljava/lang/String;)V
if-eqz p2, :cond_3d
:try_start_2f
sget-object v13, Lcom/pinguo/album/provider/PGAlbum$PGPhotoGroup;->CONTENT_URI:Landroid/net/Uri;
const/4 v14, 0x0
const/4 v15, 0x0
invoke-virtual {v1, v13, v14, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
sget-object v13, Lcom/pinguo/album/provider/PGAlbum$PGPhotoInfo;->CONTENT_URI:Landroid/net/Uri;
const/4 v14, 0x0
const/4 v15, 0x0
invoke-virtual {v1, v13, v14, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
:cond_3d
invoke-interface {v10}, Ljava/util/List;->size()I
move-result v13
if-lez v13, :cond_6a
sget-object v14, Lcom/pinguo/album/provider/PGAlbum$PGPhotoInfo;->CONTENT_URI:Landroid/net/Uri;
const/4 v13, 0x0
new-array v13, v13, [Landroid/content/ContentValues;
invoke-interface {v10, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v13
check-cast v13, [Landroid/content/ContentValues;
invoke-virtual {v1, v14, v13}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
sget-object v13, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;
new-instance v14, Ljava/lang/StringBuilder;
const-string/jumbo v15, " PGPhotoDetail bulkInsert count:"
invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v10}, Ljava/util/List;->size()I
move-result v15
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
:cond_6a
new-instance v13, Ljava/lang/StringBuilder;
const-string/jumbo v14, "ins db,count:"
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v10}, Ljava/util/List;->size()I
move-result v14
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-virtual {v3, v13}, Lcom/pinguo/lib/util/DebugHelper;->mark(Ljava/lang/String;)V
:try_end_81
.catch Landroid/database/sqlite/SQLiteException; {:try_start_2f .. :try_end_81} :catch_178
:goto_81
invoke-virtual {v3}, Lcom/pinguo/lib/util/DebugHelper;->end()V
move-object/from16 v0, p1
iget-object v13, v0, Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;->albums:Ljava/util/List;
invoke-interface {v13}, Ljava/util/List;->size()I
move-result v13
return v13
:cond_8d
invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v11
check-cast v11, Lcom/pinguo/album/data/download/entity/TagJson;
iget-object v13, v11, Lcom/pinguo/album/data/download/entity/TagJson;->pictures:Ljava/util/List;
invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v13
:goto_99
invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z
move-result v14
if-nez v14, :cond_dd
move-object/from16 v0, p1
iget v13, v0, Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;->hasMore:I
const/4 v14, 0x1
if-ne v13, v14, :cond_168
invoke-interface {v8}, Ljava/util/List;->size()I
move-result v13
add-int/lit8 v7, v13, -0x1
if-ne v5, v7, :cond_d9
invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v13
check-cast v13, Lcom/pinguo/album/data/download/entity/TagJson;
iget-object v13, v13, Lcom/pinguo/album/data/download/entity/TagJson;->pictures:Ljava/util/List;
invoke-interface {v13}, Ljava/util/List;->size()I
move-result v13
add-int/lit8 v6, v13, -0x1
if-ltz v6, :cond_d9
invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v13
check-cast v13, Lcom/pinguo/album/data/download/entity/TagJson;
iget-object v13, v13, Lcom/pinguo/album/data/download/entity/TagJson;->pictures:Ljava/util/List;
invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v13
check-cast v13, Lcom/pinguo/album/data/download/entity/PhotoJson;
iget-object v2, v13, Lcom/pinguo/album/data/download/entity/PhotoJson;->sp:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v13}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v13
invoke-static {v13, v2}, Lcom/pinguo/album/common/PGPreferences;->setDataLinkerSp(Landroid/content/Context;Ljava/lang/String;)V
:cond_d9
:goto_d9
add-int/lit8 v5, v5, 0x1
goto/16 :goto_21
:cond_dd
invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v9
check-cast v9, Lcom/pinguo/album/data/download/entity/PhotoJson;
new-instance v12, Landroid/content/ContentValues;
invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v14, "photo_key"
iget-object v15, v9, Lcom/pinguo/album/data/download/entity/PhotoJson;->key:Ljava/lang/String;
invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v14, "photo_id"
iget-object v15, v9, Lcom/pinguo/album/data/download/entity/PhotoJson;->id:Ljava/lang/String;
invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v14, "width"
iget v15, v9, Lcom/pinguo/album/data/download/entity/PhotoJson;->w:I
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v14, "height"
iget v15, v9, Lcom/pinguo/album/data/download/entity/PhotoJson;->h:I
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v14, "hasAudio"
iget v15, v9, Lcom/pinguo/album/data/download/entity/PhotoJson;->hasAudio:I
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v14, "avgColor"
iget v15, v9, Lcom/pinguo/album/data/download/entity/PhotoJson;->avgColor:I
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v14, "photo_crc32"
iget-object v15, v9, Lcom/pinguo/album/data/download/entity/PhotoJson;->crc32:Ljava/lang/String;
invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v14, "timestamp"
iget-object v15, v9, Lcom/pinguo/album/data/download/entity/PhotoJson;->sp:Ljava/lang/String;
invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v15
const-wide v17, 0x408f400000000000L
mul-double v15, v15, v17
invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v15
invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
const-string/jumbo v14, "date"
iget-object v15, v11, Lcom/pinguo/album/data/download/entity/TagJson;->date:Ljava/lang/String;
invoke-static {v15}, Lcom/pinguo/album/utils/PGAlbumUtils;->changeToTimeStamp(Ljava/lang/String;)J
move-result-wide v15
invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v15
invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v14, "week"
iget v15, v11, Lcom/pinguo/album/data/download/entity/TagJson;->week:I
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_99
:cond_168
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v13}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v13
const-string/jumbo v14, ""
invoke-static {v13, v14}, Lcom/pinguo/album/common/PGPreferences;->setDataLinkerSp(Landroid/content/Context;Ljava/lang/String;)V
goto/16 :goto_d9
:catch_178
move-exception v4
sget-object v13, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;
new-instance v14, Ljava/lang/StringBuilder;
const-string/jumbo v15, " bulkInsert error "
invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_81
.end method
.method public OnDownloadFailed(ILjava/lang/String;)V
.registers 4
iput-object p2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->failMessage:Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->countDown:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
return-void
.end method
.method public OnDownloadStart()V
.registers 1
return-void
.end method
.method public canBeCanceled()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->canBeCanceled:Z
return v0
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Boolean;
invoke-virtual {p0, p1}, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
.registers 8
const/4 v5, 0x0
new-instance v2, Lcom/pinguo/album/data/download/MetaDataDownLoader;
iget-object v3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v3}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getAndroidContext()Landroid/content/Context;
move-result-object v3
invoke-direct {v2, v3}, Lcom/pinguo/album/data/download/MetaDataDownLoader;-><init>(Landroid/content/Context;)V
invoke-virtual {v2, p0}, Lcom/pinguo/album/data/download/MetaDataDownLoader;->setMetaDataLoadingListener(Lcom/pinguo/album/data/download/MetaDataDownLoader$MetaDataLoadingListener;)V
aget-object v3, p1, v5
invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
move-result v3
if-eqz v3, :cond_58
invoke-virtual {v2}, Lcom/pinguo/album/data/download/MetaDataDownLoader;->startDowloadFirstPage()Z
move-result v1
:goto_1b
if-eqz v1, :cond_22
:try_start_1d
iget-object v3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->countDown:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
:goto_22
:cond_22
:try_end_22
.catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_22} :catch_5d
iget-object v3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->result:Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;
if-eqz v3, :cond_4e
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->isCancelled()Z
move-result v3
if-nez v3, :cond_4e
iget-object v3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v3}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
if-eqz v3, :cond_4e
iput-boolean v5, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->canBeCanceled:Z
iget-object v3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->result:Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;
aget-object v4, p1, v5
invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
move-result v4
invoke-direct {p0, v3, v4}, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->updataMetaDataPageToDB(Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;Z)I
aget-object v3, p1, v5
invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
move-result v3
if-eqz v3, :cond_4e
iget-object v3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#calls: Lcom/pinguo/album/fragment/PGAlbumFragment;->setCurrentUser()V
invoke-static {v3}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$24(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
:cond_4e
sget-object v3, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;
const-string/jumbo v4, " doInBackground "
invoke-static {v3, v4}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v3, 0x0
return-object v3
:cond_58
invoke-virtual {v2}, Lcom/pinguo/album/data/download/MetaDataDownLoader;->startDowloadNextPage()Z
move-result v1
goto :goto_1b
:catch_5d
move-exception v0
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_22
.end method
.method protected onCancelled()V
.registers 3
invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
const/4 v1, 0x0
#setter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsMetadataDownloding:Z
invoke-static {v0, v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$18(Lcom/pinguo/album/fragment/PGAlbumFragment;Z)V
return-void
.end method
.method public onDownloadFinished(Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->result:Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->countDown:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
return-void
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->onPostExecute(Ljava/lang/Void;)V
return-void
.end method
.method protected onPostExecute(Ljava/lang/Void;)V
.registers 7
const/4 v4, 0x0
sget-object v1, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "   onPostExecute "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->result:Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
if-eqz v1, :cond_26
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->isCancelled()Z
move-result v1
if-eqz v1, :cond_2c
:cond_26
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#setter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsMetadataDownloding:Z
invoke-static {v1, v4}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$18(Lcom/pinguo/album/fragment/PGAlbumFragment;Z)V
:goto_2b
return-void
:cond_2c
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mLoadingView:Lcom/pinguo/album/views/LoadingStatusView;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$22(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/LoadingStatusView;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/album/views/LoadingStatusView;->clearRetryLoadingAnimation()V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->result:Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;
if-eqz v1, :cond_e4
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mCloudAlbumUpdateState:I
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$19(Lcom/pinguo/album/fragment/PGAlbumFragment;)I
move-result v1
invoke-static {}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$14()I
move-result v2
if-eq v1, v2, :cond_a0
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mLoadingView:Lcom/pinguo/album/views/LoadingStatusView;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$22(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/LoadingStatusView;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/album/views/LoadingStatusView;->hide()V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mGLRenderView:Lcom/pinguo/album/views/GLRenderView;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$21(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/GLRenderView;
move-result-object v1
invoke-virtual {v1, v4}, Lcom/pinguo/album/views/GLRenderView;->setVisibility(I)V
sget-object v1, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "  ---------xxx-------- onPostExecute"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->result:Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#calls: Lcom/pinguo/album/fragment/PGAlbumFragment;->showMainView()V
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$25(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->result:Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;
iget-object v1, v1, Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;->albums:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_dc
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#calls: Lcom/pinguo/album/fragment/PGAlbumFragment;->startDownIncrementData()V
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$3(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
new-instance v1, Lcom/pinguo/album/data/download/GroupDataDownloader;
iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v1, v2}, Lcom/pinguo/album/data/download/GroupDataDownloader;-><init>(Landroid/content/Context;)V
invoke-virtual {v1}, Lcom/pinguo/album/data/download/GroupDataDownloader;->startDownLoadGroupData()V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
const-wide/16 v2, 0x64
#calls: Lcom/pinguo/album/fragment/PGAlbumFragment;->callCloudUpload(J)V
invoke-static {v1, v2, v3}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$26(Lcom/pinguo/album/fragment/PGAlbumFragment;J)V
:goto_97
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-static {}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$14()I
move-result v2
#setter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mCloudAlbumUpdateState:I
invoke-static {v1, v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$15(Lcom/pinguo/album/fragment/PGAlbumFragment;I)V
:cond_a0
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-static {v1, v2, v3}, Lcom/pinguo/album/common/PGPreferences;->setMetaDataUpdateTime(Landroid/content/Context;J)V
:goto_ad
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#setter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsMetadataDownloding:Z
invoke-static {v1, v4}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$18(Lcom/pinguo/album/fragment/PGAlbumFragment;Z)V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/album/common/PGPreferences;->getDataLinkerSp(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_130
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_130
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLPullToRefreshView;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->setEnablePullEnd(Z)V
:goto_ce
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLPullToRefreshView;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->onRefreshComplete()V
invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V
goto/16 :goto_2b
:cond_dc
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
const-wide/16 v2, 0x0
#calls: Lcom/pinguo/album/fragment/PGAlbumFragment;->callCloudUpload(J)V
invoke-static {v1, v2, v3}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$26(Lcom/pinguo/album/fragment/PGAlbumFragment;J)V
goto :goto_97
:cond_e4
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mCloudAlbumUpdateState:I
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$19(Lcom/pinguo/album/fragment/PGAlbumFragment;)I
move-result v1
invoke-static {}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$14()I
move-result v2
if-eq v1, v2, :cond_11d
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->failMessage:Ljava/lang/String;
if-eqz v1, :cond_113
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->failMessage:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_113
sget-object v1, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "load data fail:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->failMessage:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:cond_113
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mLoadingView:Lcom/pinguo/album/views/LoadingStatusView;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$22(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/LoadingStatusView;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/album/views/LoadingStatusView;->showStatusLoadFail()V
goto :goto_ad
:cond_11d
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
const v2, 0x7f08032a
invoke-virtual {v1, v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->showShortToast(I)V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mLoadingView:Lcom/pinguo/album/views/LoadingStatusView;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$22(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/LoadingStatusView;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/album/views/LoadingStatusView;->hide()V
goto/16 :goto_ad
:cond_130
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLPullToRefreshView;
move-result-object v1
invoke-virtual {v1, v4}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->setEnablePullEnd(Z)V
goto :goto_ce
.end method
.method protected onPreExecute()V
.registers 4
const/16 v2, 0x8
invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
const/4 v1, 0x1
#setter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsMetadataDownloding:Z
invoke-static {v0, v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$18(Lcom/pinguo/album/fragment/PGAlbumFragment;Z)V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mCloudAlbumUpdateState:I
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$19(Lcom/pinguo/album/fragment/PGAlbumFragment;)I
move-result v0
invoke-static {}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$20()I
move-result v1
if-ne v0, v1, :cond_35
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mGLRenderView:Lcom/pinguo/album/views/GLRenderView;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$21(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/GLRenderView;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/pinguo/album/views/GLRenderView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mLoadingView:Lcom/pinguo/album/views/LoadingStatusView;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$22(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/LoadingStatusView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/views/LoadingStatusView;->showStatusLoading()V
:cond_29
:goto_29
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->result:Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;
sget-object v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, " onPreExecute"
invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_35
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mCloudAlbumUpdateState:I
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$19(Lcom/pinguo/album/fragment/PGAlbumFragment;)I
move-result v0
invoke-static {}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$23()I
move-result v1
if-ne v0, v1, :cond_29
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mGLRenderView:Lcom/pinguo/album/views/GLRenderView;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$21(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/GLRenderView;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/pinguo/album/views/GLRenderView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mLoadingView:Lcom/pinguo/album/views/LoadingStatusView;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$22(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/LoadingStatusView;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/album/views/LoadingStatusView;->showRetryLoadingAnimation(Landroid/content/Context;)V
goto :goto_29
.end method