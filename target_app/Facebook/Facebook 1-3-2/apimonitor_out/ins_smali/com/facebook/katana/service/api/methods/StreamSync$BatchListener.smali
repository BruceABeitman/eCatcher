.class  Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;
.super Ljava/lang/Object;
.source "StreamSync.java"
.implements Lcom/facebook/katana/service/api/methods/ApiMethodListener;
.field  mSyncResult:Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
.method private constructor <init>(Lcom/facebook/katana/service/api/methods/StreamSync;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/service/api/methods/StreamSync;Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;-><init>(Lcom/facebook/katana/service/api/methods/StreamSync;)V
return-void
.end method
.method public onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 21
const/4 v9, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->mSyncResult:Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;
move-object v5, v0
iget-boolean v5, v5, Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;->done:Z
if-eqz v5, :cond_20
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
move-object v5, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
move-object v6, v0
move-object v0, v5
move-object v1, v6
move/from16 v2, p2
move-object/from16 v3, p3
move-object/from16 v4, p4
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/StreamSync;->dispatchOnOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
:goto_1f
return-void
:cond_20
move-object v0, v9
check-cast v0, [Ljava/lang/String;
move-object v14, v0
new-instance v5, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
move-object v6, v0
#getter for: Lcom/facebook/katana/service/api/methods/StreamSync;->mContext:Landroid/content/Context;
invoke-static {v6}, Lcom/facebook/katana/service/api/methods/StreamSync;->access$0(Lcom/facebook/katana/service/api/methods/StreamSync;)Landroid/content/Context;
move-result-object v6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
move-object v7, v0
iget-object v7, v7, Lcom/facebook/katana/service/api/methods/StreamSync;->mReqIntent:Landroid/content/Intent;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
move-object v8, v0
#getter for: Lcom/facebook/katana/service/api/methods/StreamSync;->mSessionKey:Ljava/lang/String;
invoke-static {v8}, Lcom/facebook/katana/service/api/methods/StreamSync;->access$1(Lcom/facebook/katana/service/api/methods/StreamSync;)Ljava/lang/String;
move-result-object v8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->mSyncResult:Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;
move-object v10, v0
iget-object v10, v10, Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;->missingCovers:Ljava/util/Collection;
invoke-interface {v10, v14}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v10
check-cast v10, [Ljava/lang/String;
const-wide/16 v11, -0x1
new-instance v13, Lcom/facebook/katana/service/api/methods/StreamSync$GetCoversListener;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
move-object v15, v0
invoke-direct {v13, v15, v9}, Lcom/facebook/katana/service/api/methods/StreamSync$GetCoversListener;-><init>(Lcom/facebook/katana/service/api/methods/StreamSync;Lcom/facebook/katana/service/api/methods/StreamSync$GetCoversListener;)V
invoke-direct/range {v5 .. v13}, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JLcom/facebook/katana/service/api/methods/ApiMethodListener;)V
invoke-virtual {v5}, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->start()V
goto :goto_1f
.end method
.method public onOperationProgress(Lcom/facebook/katana/service/api/methods/ApiMethod;JJ)V
.registers 6
return-void
.end method
.method public onProcessComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 14
const/4 v3, 0x1
const/4 v5, 0x0
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
#getter for: Lcom/facebook/katana/service/api/methods/StreamSync;->mStreamGetOperation:Lcom/facebook/katana/service/api/methods/StreamGet;
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/StreamSync;->access$2(Lcom/facebook/katana/service/api/methods/StreamSync;)Lcom/facebook/katana/service/api/methods/StreamGet;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/katana/service/api/methods/StreamGet;->getPosts()Ljava/util/List;
move-result-object v1
#setter for: Lcom/facebook/katana/service/api/methods/StreamSync;->mPosts:Ljava/util/List;
invoke-static {v0, v1}, Lcom/facebook/katana/service/api/methods/StreamSync;->access$3(Lcom/facebook/katana/service/api/methods/StreamSync;Ljava/util/List;)V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
#getter for: Lcom/facebook/katana/service/api/methods/StreamSync;->mStreamGetOperation:Lcom/facebook/katana/service/api/methods/StreamGet;
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/StreamSync;->access$2(Lcom/facebook/katana/service/api/methods/StreamSync;)Lcom/facebook/katana/service/api/methods/StreamGet;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/katana/service/api/methods/StreamGet;->getAlbums()Ljava/util/List;
move-result-object v1
#setter for: Lcom/facebook/katana/service/api/methods/StreamSync;->mAlbums:Ljava/util/List;
invoke-static {v0, v1}, Lcom/facebook/katana/service/api/methods/StreamSync;->access$4(Lcom/facebook/katana/service/api/methods/StreamSync;Ljava/util/List;)V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
#getter for: Lcom/facebook/katana/service/api/methods/StreamSync;->mUsersGetInfoOperation:Lcom/facebook/katana/service/api/methods/UsersGetInfo;
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/StreamSync;->access$5(Lcom/facebook/katana/service/api/methods/StreamSync;)Lcom/facebook/katana/service/api/methods/UsersGetInfo;
move-result-object v0
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
#getter for: Lcom/facebook/katana/service/api/methods/StreamSync;->mUsersGetInfoOperation:Lcom/facebook/katana/service/api/methods/UsersGetInfo;
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/StreamSync;->access$5(Lcom/facebook/katana/service/api/methods/StreamSync;)Lcom/facebook/katana/service/api/methods/UsersGetInfo;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/katana/service/api/methods/UsersGetInfo;->getInfoList()Ljava/util/List;
move-result-object v1
#setter for: Lcom/facebook/katana/service/api/methods/StreamSync;->mInfos:Ljava/util/List;
invoke-static {v0, v1}, Lcom/facebook/katana/service/api/methods/StreamSync;->access$6(Lcom/facebook/katana/service/api/methods/StreamSync;Ljava/util/List;)V
:cond_37
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
#getter for: Lcom/facebook/katana/service/api/methods/StreamSync;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/StreamSync;->access$0(Lcom/facebook/katana/service/api/methods/StreamSync;)Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
#getter for: Lcom/facebook/katana/service/api/methods/StreamSync;->mAlbums:Ljava/util/List;
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/StreamSync;->access$7(Lcom/facebook/katana/service/api/methods/StreamSync;)Ljava/util/List;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->this$0:Lcom/facebook/katana/service/api/methods/StreamSync;
#calls: Lcom/facebook/katana/service/api/methods/StreamSync;->localAlbumsCursorFactory()Lcom/facebook/katana/util/Factory;
invoke-static {v2}, Lcom/facebook/katana/service/api/methods/StreamSync;->access$8(Lcom/facebook/katana/service/api/methods/StreamSync;)Lcom/facebook/katana/util/Factory;
move-result-object v2
const-wide/16 v7, -0x1
move v4, v3
move v6, v5
invoke-static/range {v0 .. v8}, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->doSync(Landroid/content/ContentResolver;Ljava/util/List;Lcom/facebook/katana/util/Factory;ZZZZJ)Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;->mSyncResult:Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;
return-void
.end method