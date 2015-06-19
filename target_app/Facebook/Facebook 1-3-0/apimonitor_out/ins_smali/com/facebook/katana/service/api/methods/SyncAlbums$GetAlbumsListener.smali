.class  Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;
.super Ljava/lang/Object;
.source "SyncAlbums.java"
.implements Lcom/facebook/katana/service/api/methods/ApiMethodListener;
.field  mSyncResult:Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
.method private constructor <init>(Lcom/facebook/katana/service/api/methods/SyncAlbums;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/service/api/methods/SyncAlbums;Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;-><init>(Lcom/facebook/katana/service/api/methods/SyncAlbums;)V
return-void
.end method
.method public onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 16
const/4 v4, 0x0
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->mSyncResult:Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->mSyncResult:Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;
iget-boolean v0, v0, Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;->done:Z
if-nez v0, :cond_3e
new-instance v0, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
#getter for: Lcom/facebook/katana/service/api/methods/SyncAlbums;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$1(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
iget-object v2, v2, Lcom/facebook/katana/service/api/methods/SyncAlbums;->mReqIntent:Landroid/content/Intent;
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
#getter for: Lcom/facebook/katana/service/api/methods/SyncAlbums;->mSessionKey:Ljava/lang/String;
invoke-static {v3}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$7(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Ljava/lang/String;
move-result-object v3
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->mSyncResult:Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;
iget-object v5, v5, Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;->missingCovers:Ljava/util/Collection;
const/4 v6, 0x0
new-array v6, v6, [Ljava/lang/String;
invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v5
check-cast v5, [Ljava/lang/String;
iget-object v6, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
#getter for: Lcom/facebook/katana/service/api/methods/SyncAlbums;->mUserId:J
invoke-static {v6}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$6(Lcom/facebook/katana/service/api/methods/SyncAlbums;)J
move-result-wide v6
new-instance v8, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetCoversListener;
iget-object v10, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
invoke-direct {v8, v10, v4}, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetCoversListener;-><init>(Lcom/facebook/katana/service/api/methods/SyncAlbums;Lcom/facebook/katana/service/api/methods/SyncAlbums$GetCoversListener;)V
invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JLcom/facebook/katana/service/api/methods/ApiMethodListener;)V
invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->start()V
:goto_3d
return-void
:cond_3e
move v9, p2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/SyncAlbums;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
invoke-interface {v0, v1, v9, p3, p4}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
goto :goto_3d
.end method
.method public onOperationProgress(Lcom/facebook/katana/service/api/methods/ApiMethod;JJ)V
.registers 6
return-void
.end method
.method public onProcessComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 16
const/4 v5, 0x1
const/16 v1, 0xc8
if-ne p2, v1, :cond_41
move-object v0, p1
check-cast v0, Lcom/facebook/katana/service/api/methods/PhotosGetAlbums;
move-object v10, v0
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
invoke-virtual {v10}, Lcom/facebook/katana/service/api/methods/PhotosGetAlbums;->getAlbums()Ljava/util/List;
move-result-object v2
#setter for: Lcom/facebook/katana/service/api/methods/SyncAlbums;->mAlbums:Ljava/util/List;
invoke-static {v1, v2}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$0(Lcom/facebook/katana/service/api/methods/SyncAlbums;Ljava/util/List;)V
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
#getter for: Lcom/facebook/katana/service/api/methods/SyncAlbums;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$1(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
#getter for: Lcom/facebook/katana/service/api/methods/SyncAlbums;->mAlbums:Ljava/util/List;
invoke-static {v2}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$2(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Ljava/util/List;
move-result-object v2
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
#calls: Lcom/facebook/katana/service/api/methods/SyncAlbums;->localAlbumsCursorFactory()Lcom/facebook/katana/util/Factory;
invoke-static {v3}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$3(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Lcom/facebook/katana/util/Factory;
move-result-object v3
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
#calls: Lcom/facebook/katana/service/api/methods/SyncAlbums;->performAdds()Z
invoke-static {v4}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$4(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Z
move-result v4
iget-object v6, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
#calls: Lcom/facebook/katana/service/api/methods/SyncAlbums;->performDeletes()Z
invoke-static {v6}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$5(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Z
move-result v6
iget-object v7, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->this$0:Lcom/facebook/katana/service/api/methods/SyncAlbums;
#getter for: Lcom/facebook/katana/service/api/methods/SyncAlbums;->mUserId:J
invoke-static {v7}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->access$6(Lcom/facebook/katana/service/api/methods/SyncAlbums;)J
move-result-wide v8
move v7, v5
invoke-static/range {v1 .. v9}, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->doSync(Landroid/content/ContentResolver;Ljava/util/List;Lcom/facebook/katana/util/Factory;ZZZZJ)Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;
move-result-object v1
iput-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;->mSyncResult:Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;
:cond_41
return-void
.end method